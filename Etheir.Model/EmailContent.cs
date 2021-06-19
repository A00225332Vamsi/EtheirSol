using System;

namespace Ethier.Model
{
    public class EmailContent
    {
        public string Host { get; set; }

        public int Port { get; set; }

        public string To { get; set; }

        public string ToDisplayName { get; set; }

        public string ReplyTo { get; set; }

        public string ReployToDisplayName { get; set; }

        public string cc { get; set; }

        public string From { get; set; }

        public string FromDisplayName { get; set; }

        public string Subject { get; set; }

        public string body { get; set; }

        public string attachment { get; set; }
    }
}
