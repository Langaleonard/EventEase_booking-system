using System.ComponentModel.DataAnnotations;

namespace EventEase_booking_system.Models
{
    public class Event
    {
        public int EventId { get; set; }

        [Required]
        public string EventName { get; set; } = string.Empty;

        [DataType(DataType.Date)]
        public DateTime EventDate { get; set; }

        public string Description { get; set; } = string.Empty;

        public int? VenueId { get; set; }
        public Venue? Venue { get; set; }
    }
}