﻿namespace IssueSystem.Services.Contracts.Ticket
{
    using IssueSystem.Data.Models;
    using IssueSystem.Models.Admin.Ticket;
    using IssueSystem.Models.Project;
    using IssueSystem.Models.Tickets;
    using IssueSystem.Services.Common;

    public interface ITicketService : IScopedService
    {
        Task<bool> CreateTicket(CreateTicketViewModel model);
        Task<bool> DeleteTicket(string id);
        Task<List<TicketCategory>> GetTicketCategories();
        Task<List<TicketPriority>> GetTicketPriorities();
        Task<TicketCategory> GetTicketCategoryById(string id);
        Task<TicketPriority> GetTicketPriorityById(string id);
        Task<Project> GetTicketProjectById(string id);
        Task<Employee> GetTicketCreatorById(string id);
        Task<Employee> GetTicketAcceptantById(string id);
        Task<Ticket> GetTicketById(string id);
        Task<bool> CloseTicket(string ticketId, string userId);
        Task<bool> AssigneTicket(string ticketId, string acceptantId);
        Task<bool> AcceptTicket(string ticketId, string acceptantId);
        Task<TicketViewModel> GetTicketDetails(string ticketId);
        Task<TicketsReportModel> GetDailyTicketsReport(string userId);
        Task<TicketsReportModel> GetYearlyTicketsReport(string userId);
        Task<TicketsReportModel> GetWeeklyTicketsReport(string userId);
        Task<TicketsReportModel> GetUserTickets(string userId);
        Task<IList<ProjectListTicketsModel>> GetAvaibleTickets(string userId);
    }
}
