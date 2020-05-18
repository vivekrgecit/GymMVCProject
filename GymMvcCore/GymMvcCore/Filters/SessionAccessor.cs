using Microsoft.AspNetCore.Http;

namespace GymMvcCore.Filters
{
    public class SessionAccessor
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly ISession _session;
        public SessionAccessor(IHttpContextAccessor httpContextAccessor)
        {
            _httpContextAccessor = httpContextAccessor;
            _session = _httpContextAccessor.HttpContext.Session;
        }
    }
}
