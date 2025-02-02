// The reference for these types and values is Microsoft Windows's ucrt (Universal C RunTime).

usingnamespace @import("../windows/bits.zig");

pub const fd_t = HANDLE;
pub const pid_t = HANDLE;

pub const PATH_MAX = 260;

pub const time_t = c_longlong;

pub const timespec = extern struct {
    tv_sec: time_t,
    tv_nsec: c_long,
};

pub const sig_atomic_t = c_int;

/// maximum signal number + 1
pub const NSIG = 23;

// Signal types

/// interrupt
pub const SIGINT = 2;

/// illegal instruction - invalid function image
pub const SIGILL = 4;

/// floating point exception
pub const SIGFPE = 8;

/// segment violation
pub const SIGSEGV = 11;

/// Software termination signal from kill
pub const SIGTERM = 15;

/// Ctrl-Break sequence
pub const SIGBREAK = 21;

/// abnormal termination triggered by abort call
pub const SIGABRT = 22;

/// SIGABRT compatible with other platforms, same as SIGABRT
pub const SIGABRT_COMPAT = 6;

// Signal action codes

/// default signal action
pub const SIG_DFL = 0;

/// ignore signal
pub const SIG_IGN = 1;

/// return current value
pub const SIG_GET = 2;

/// signal gets error
pub const SIG_SGE = 3;

/// acknowledge
pub const SIG_ACK = 4;

/// Signal error value (returned by signal call on error)
pub const SIG_ERR = -1;

pub const SEEK_SET = 0;
pub const SEEK_CUR = 1;
pub const SEEK_END = 2;

pub const EPERM = 1;
pub const ENOENT = 2;
pub const ESRCH = 3;
pub const EINTR = 4;
pub const EIO = 5;
pub const ENXIO = 6;
pub const E2BIG = 7;
pub const ENOEXEC = 8;
pub const EBADF = 9;
pub const ECHILD = 10;
pub const EAGAIN = 11;
pub const ENOMEM = 12;
pub const EACCES = 13;
pub const EFAULT = 14;
pub const EBUSY = 16;
pub const EEXIST = 17;
pub const EXDEV = 18;
pub const ENODEV = 19;
pub const ENOTDIR = 20;
pub const EISDIR = 21;
pub const ENFILE = 23;
pub const EMFILE = 24;
pub const ENOTTY = 25;
pub const EFBIG = 27;
pub const ENOSPC = 28;
pub const ESPIPE = 29;
pub const EROFS = 30;
pub const EMLINK = 31;
pub const EPIPE = 32;
pub const EDOM = 33;
pub const EDEADLK = 36;
pub const ENAMETOOLONG = 38;
pub const ENOLCK = 39;
pub const ENOSYS = 40;
pub const ENOTEMPTY = 41;

pub const EINVAL = 22;
pub const ERANGE = 34;
pub const EILSEQ = 42;
pub const STRUNCATE = 80;

// Support EDEADLOCK for compatibility with older Microsoft C versions
pub const EDEADLOCK = EDEADLK;

// POSIX Supplement
pub const EADDRINUSE = 100;
pub const EADDRNOTAVAIL = 101;
pub const EAFNOSUPPORT = 102;
pub const EALREADY = 103;
pub const EBADMSG = 104;
pub const ECANCELED = 105;
pub const ECONNABORTED = 106;
pub const ECONNREFUSED = 107;
pub const ECONNRESET = 108;
pub const EDESTADDRREQ = 109;
pub const EHOSTUNREACH = 110;
pub const EIDRM = 111;
pub const EINPROGRESS = 112;
pub const EISCONN = 113;
pub const ELOOP = 114;
pub const EMSGSIZE = 115;
pub const ENETDOWN = 116;
pub const ENETRESET = 117;
pub const ENETUNREACH = 118;
pub const ENOBUFS = 119;
pub const ENODATA = 120;
pub const ENOLINK = 121;
pub const ENOMSG = 122;
pub const ENOPROTOOPT = 123;
pub const ENOSR = 124;
pub const ENOSTR = 125;
pub const ENOTCONN = 126;
pub const ENOTRECOVERABLE = 127;
pub const ENOTSOCK = 128;
pub const ENOTSUP = 129;
pub const EOPNOTSUPP = 130;
pub const EOTHER = 131;
pub const EOVERFLOW = 132;
pub const EOWNERDEAD = 133;
pub const EPROTO = 134;
pub const EPROTONOSUPPORT = 135;
pub const EPROTOTYPE = 136;
pub const ETIME = 137;
pub const ETIMEDOUT = 138;
pub const ETXTBSY = 139;
pub const EWOULDBLOCK = 140;
pub const EDQUOT = 10069;

pub const F_OK = 0;

/// Remove directory instead of unlinking file
pub const AT_REMOVEDIR = 0x200;

pub const in_port_t = u16;
pub const sa_family_t = u16;
pub const socklen_t = u32;

pub const sockaddr = extern struct {
    family: sa_family_t,
    data: [14]u8,
};
pub const sockaddr_in = extern struct {
    family: sa_family_t = AF_INET,
    port: in_port_t,
    addr: in_addr,
    zero: [8]u8 = [8]u8{ 0, 0, 0, 0, 0, 0, 0, 0 },
};
pub const sockaddr_in6 = extern struct {
    family: sa_family_t = AF_INET6,
    port: in_port_t,
    flowinfo: u32,
    addr: in6_addr,
    scope_id: u32,
};
pub const in6_addr = [16]u8;
pub const in_addr = u32;

pub const AF_UNSPEC = 0;
pub const AF_UNIX = 1;
pub const AF_INET = 2;
pub const AF_IMPLINK = 3;
pub const AF_PUP = 4;
pub const AF_CHAOS = 5;
pub const AF_NS = 6;
pub const AF_IPX = AF_NS;
pub const AF_ISO = 7;
pub const AF_OSI = AF_ISO;
pub const AF_ECMA = 8;
pub const AF_DATAKIT = 9;
pub const AF_CCITT = 10;
pub const AF_SNA = 11;
pub const AF_DECnet = 12;
pub const AF_DLI = 13;
pub const AF_LAT = 14;
pub const AF_HYLINK = 15;
pub const AF_APPLETALK = 16;
pub const AF_NETBIOS = 17;
pub const AF_VOICEVIEW = 18;
pub const AF_FIREFOX = 19;
pub const AF_UNKNOWN1 = 20;
pub const AF_BAN = 21;
pub const AF_ATM = 22;
pub const AF_INET6 = 23;
pub const AF_CLUSTER = 24;
pub const AF_12844 = 25;
pub const AF_IRDA = 26;
pub const AF_NETDES = 28;
pub const AF_TCNPROCESS = 29;
pub const AF_TCNMESSAGE = 30;
pub const AF_ICLFXBM = 31;
pub const AF_BTH = 32;
pub const AF_MAX = 33;
