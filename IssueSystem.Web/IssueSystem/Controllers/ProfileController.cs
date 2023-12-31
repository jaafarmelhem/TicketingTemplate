﻿namespace IssueSystem.Controllers
{
    using Microsoft.AspNetCore.Mvc;

    using IssueSystem.Common;
    using IssueSystem.Models.User;
    using IssueSystem.Infrastructure.Extensions;
    using IssueSystem.Services.Contracts.Users;

    public class ProfileController : BaseController
    {
        private readonly IUserPersonalService _userService;


        public ProfileController(
            IUserPersonalService userService)
        {
            _userService = userService;
        }

        public async Task<IActionResult> Index()
        {
            var userData = await _userService.GetUserData(this.User.GetId());

            if (userData != null && userData.Department == null)
            {
                userData.Department = "Check With Your Manager For Assignment";
            }

            return View(userData);
        }

        [HttpPost]
        public async Task<IActionResult> UpdateUserData(ProfileViewModel model)
        {
            ModelState.Remove(nameof(model.ProfilePicture));

            if (!ModelState.IsValid)
            {
                return RedirectToAction("Index");
            }

            var updated = await _userService.UpdateUserData(model);

            if (!updated)
            {
                TempData[MessageConstant.ErrorMessage] = "Somthing went wrong, Please try again";

                return RedirectToAction("Index");
            }

            TempData[MessageConstant.SuccessMessage] = "Successful Update";

            return RedirectToAction("Index");
        }


        [HttpPost]
        public async Task<IActionResult> UpdateProfilePicture(ProfileViewModel model)
        {
            var result = string.Empty;

            if (Request.Form.Files.Count > 0)
            {
                IFormFile file = Request.Form.Files.FirstOrDefault();

                result = await _userService.UpdateUserProfilePicture(file, this.User.GetId());
            }

            if (!result.Contains("Succesful"))
            {
                TempData[MessageConstant.ErrorMessage] = result;

                return RedirectToAction("Index");
            }

            TempData[MessageConstant.SuccessMessage] = result;

            return RedirectToAction("Index");
        }
    }
}
