﻿namespace IssueSystem.Data.Models
{
    using System;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    using IssueSystem.Data.Contracts;

    using static Data.ModelConstants.Comment;

    public class Comment : BaseEntity
    {
        public Comment()
        {
            this.CommentId = Guid.NewGuid().ToString();
        }

        [Key]
        [Required]
        public string CommentId { get; set; }

        [MaxLength(CommentMaxLenght)]
        public string Content { get; set; }

        [ForeignKey(nameof(Author))]
        public string AuthorId { get; set; }
        public virtual Employee Author { get; set; }

        [ForeignKey(nameof(Ticket))]
        public string TicketId { get; set; }
        public virtual Ticket Ticket { get; set; }
    }
}