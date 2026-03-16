using System.ComponentModel.DataAnnotations;

namespace EventEase_booking_system.Models
{
    public class Venue
    {
        public int VenueId { get; set; }

        [Required]
        public string VenueName { get; set; } = string.Empty;

        [Required]
        public string Location { get; set; } = string.Empty;

        [Range(1, 100000)]
        public int Capacity { get; set; }

        public string ImageUrl { get; set; } = string.Empty;
    }
}