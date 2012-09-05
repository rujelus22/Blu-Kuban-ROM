.class public Lcom/android/emailcommon/mail/MessagingException;
.super Ljava/lang/Exception;
.source "MessagingException.java"


# static fields
.field public static final serialVersionUID:J = -0x1L


# instance fields
.field protected mExceptionData:Ljava/lang/Object;

.field private final mExceptionString:[Ljava/lang/String;

.field protected mExceptionType:I


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .parameter "exceptionType"

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 37
    const/16 v0, 0x65

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " NO_ERROR "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, " UNSPECIFIED_EXCEPTION "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " IOERROR "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, " TLS_REQUIRED "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, " AUTH_REQUIRED "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, " GENERAL_SECURITY "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, " AUTHENTICATION_FAILED "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, " DUPLICATE_ACCOUNT "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, " SECURITY_POLICIES_REQUIRED "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, " SECURITY_POLICIES_UNSUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, " PROTOCOL_VERSION_UNSUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, " GAL_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, " OOO_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, " SECURITY_POLICIES_POP3IMAP_DISABLED "

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, " SECURITY_POLICY_ATTACHMENT_MAX_SIZE "

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, " SECURITY_POLICY_ATTACHMENT_DISABLED "

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, " ATTACHMENT_DOWNLOAD_FAILED "

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, " UNSUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, " LOADMORE_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, " SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, " IN_PROGRESS "

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, " ACCOUNT_MOVE_SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, " MESSAGE_NOT_FOUND "

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, " ATTACHMENT_NOT_FOUND "

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, " FOLDER_NOT_DELETED "

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, " FOLDER_NOT_RENAMED "

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, " FOLDER_NOT_CREATED "

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, " REMOTE_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, " LOGIN_FAILED "

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, " SECURITY_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, " ACCOUNT_UNINITIALIZED "

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, " CONNECTION_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, " ERROR_NO_PROTOCOL_SUPPORT "

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, " ERROR_SERVER_CONNECT "

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, " ERROR_GAL_NULL_STRING "

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, " ERROR_GAL_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, " ERROR_GAL_INVALID_RANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, " ERROR_ITEM "

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, " ERROR_OOO_SET_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, " ERROR_OOO_GET_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, " ERROR_OOO_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, " ERROR_SERVER_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, " ERROR_SYSTEM_FOLDER "

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, " ERROR_FOLDER_NOT_EXIST "

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, " ERROR_FOLDER_EXISTS "

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, " ERROR_FOLDER_PARENT_NOT_FOUND "

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, " ERROR_EMPTYTRASH_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, " ERROR_EMPTYTRASH_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, " ERROR_FETCH_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, " ERROR_FETCH_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, " ERROR_FETCH_OUTOFMEMORY "

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, " ERROR_EMPTYTRASH_TIMEOUT "

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, " ERROR_FETCH_NULLMSG "

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, " EMPTYTRASH_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, " ERROR_INVALID_PARAM "

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, " ERROR_OOO_NOT_SUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, " ERROR_CONNECTING_SERVICE "

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, " FILE_IOERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, " ERROR_FETCHING_MSG_BODY "

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, " ERROR_SERVICE_RESPONSE_NULL "

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, " ERROR_PROCESS_SERVICE_RESPONSE_SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, " ERROR_SERVICE_RESPONSE_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, " ERROR_MAX_RETRY_ATTEMPTS_REACHED "

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, " ERROR_NOT_FOUND_IN_DB "

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, " ERROR_LOADING_BODY "

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, " ERROR_VIEW_ATTACHMENT "

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, " ERROR_SERVER_ERROR_15MIN_RESTRICTION"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, " CERTIFICATE_VALIDATION_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, " AUTODISCOVER_AUTHENTICATION_FAILED "

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, " AUTODISCOVER_AUTHENTICATION_RESULT "

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, " AUTHENTICATION_FAILED_OR_SERVER_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, " LICENSE_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, " PROGRESS_CHECK_INCOMIMNG "

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, " PROGRESS_CHECK_OUTGOING "

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, " CHECK_SETTINGS_OK "

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, " CHECK_SETTINGS_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, " CANCEL_CHECK_SETTINGS_SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, " CANCEL_CHECK_SETTINGS_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, " ERROR_CONNECTION_READ_TIMEOUT "

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, " ERROR_SERVER_ERROR_HTTP_5XX"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, " ERROR_SERVER_ERROR_INSUFFICIENT_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, " ERROR_SERVER_NOT_FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, " ERROR_SERVER_NOT_RESPONDING "

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, " ERROR_NETWORK_NOT_AVAILABLE "

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, " ERROR_DELETE_ACCOUNT_FAILURE"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, " ERROR_NETWORK_TRANSIENT_ERROR"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, " ERROR_NO_NETWORK"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, " ERROR_FOLDER_UPDATE_NOT_ALLOWED"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, " PROGRESS_CHECK_LICENSE_SERVER"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, " ERROR_SEND_MSG_UNLOADED_ATTACHMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, " MAX_DEVICE_PARTNERSHIP_EXCEPTION"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, " ERROR_CERTIFICATE_NOT_AVAILABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, " DEVICE_BLOCKED_EXCEPTION"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionString:[Ljava/lang/String;

    .line 485
    iput p1, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionType:I

    .line 486
    return-void
.end method

.method public constructor <init>(II)V
    .registers 6
    .parameter "exceptionType"
    .parameter "exceptionMessage"

    .prologue
    .line 500
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 37
    const/16 v0, 0x65

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " NO_ERROR "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, " UNSPECIFIED_EXCEPTION "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " IOERROR "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, " TLS_REQUIRED "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, " AUTH_REQUIRED "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, " GENERAL_SECURITY "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, " AUTHENTICATION_FAILED "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, " DUPLICATE_ACCOUNT "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, " SECURITY_POLICIES_REQUIRED "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, " SECURITY_POLICIES_UNSUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, " PROTOCOL_VERSION_UNSUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, " GAL_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, " OOO_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, " SECURITY_POLICIES_POP3IMAP_DISABLED "

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, " SECURITY_POLICY_ATTACHMENT_MAX_SIZE "

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, " SECURITY_POLICY_ATTACHMENT_DISABLED "

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, " ATTACHMENT_DOWNLOAD_FAILED "

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, " UNSUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, " LOADMORE_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, " SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, " IN_PROGRESS "

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, " ACCOUNT_MOVE_SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, " MESSAGE_NOT_FOUND "

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, " ATTACHMENT_NOT_FOUND "

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, " FOLDER_NOT_DELETED "

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, " FOLDER_NOT_RENAMED "

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, " FOLDER_NOT_CREATED "

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, " REMOTE_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, " LOGIN_FAILED "

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, " SECURITY_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, " ACCOUNT_UNINITIALIZED "

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, " CONNECTION_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, " ERROR_NO_PROTOCOL_SUPPORT "

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, " ERROR_SERVER_CONNECT "

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, " ERROR_GAL_NULL_STRING "

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, " ERROR_GAL_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, " ERROR_GAL_INVALID_RANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, " ERROR_ITEM "

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, " ERROR_OOO_SET_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, " ERROR_OOO_GET_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, " ERROR_OOO_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, " ERROR_SERVER_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, " ERROR_SYSTEM_FOLDER "

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, " ERROR_FOLDER_NOT_EXIST "

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, " ERROR_FOLDER_EXISTS "

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, " ERROR_FOLDER_PARENT_NOT_FOUND "

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, " ERROR_EMPTYTRASH_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, " ERROR_EMPTYTRASH_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, " ERROR_FETCH_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, " ERROR_FETCH_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, " ERROR_FETCH_OUTOFMEMORY "

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, " ERROR_EMPTYTRASH_TIMEOUT "

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, " ERROR_FETCH_NULLMSG "

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, " EMPTYTRASH_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, " ERROR_INVALID_PARAM "

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, " ERROR_OOO_NOT_SUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, " ERROR_CONNECTING_SERVICE "

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, " FILE_IOERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, " ERROR_FETCHING_MSG_BODY "

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, " ERROR_SERVICE_RESPONSE_NULL "

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, " ERROR_PROCESS_SERVICE_RESPONSE_SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, " ERROR_SERVICE_RESPONSE_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, " ERROR_MAX_RETRY_ATTEMPTS_REACHED "

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, " ERROR_NOT_FOUND_IN_DB "

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, " ERROR_LOADING_BODY "

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, " ERROR_VIEW_ATTACHMENT "

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, " ERROR_SERVER_ERROR_15MIN_RESTRICTION"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, " CERTIFICATE_VALIDATION_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, " AUTODISCOVER_AUTHENTICATION_FAILED "

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, " AUTODISCOVER_AUTHENTICATION_RESULT "

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, " AUTHENTICATION_FAILED_OR_SERVER_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, " LICENSE_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, " PROGRESS_CHECK_INCOMIMNG "

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, " PROGRESS_CHECK_OUTGOING "

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, " CHECK_SETTINGS_OK "

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, " CHECK_SETTINGS_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, " CANCEL_CHECK_SETTINGS_SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, " CANCEL_CHECK_SETTINGS_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, " ERROR_CONNECTION_READ_TIMEOUT "

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, " ERROR_SERVER_ERROR_HTTP_5XX"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, " ERROR_SERVER_ERROR_INSUFFICIENT_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, " ERROR_SERVER_NOT_FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, " ERROR_SERVER_NOT_RESPONDING "

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, " ERROR_NETWORK_NOT_AVAILABLE "

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, " ERROR_DELETE_ACCOUNT_FAILURE"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, " ERROR_NETWORK_TRANSIENT_ERROR"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, " ERROR_NO_NETWORK"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, " ERROR_FOLDER_UPDATE_NOT_ALLOWED"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, " PROGRESS_CHECK_LICENSE_SERVER"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, " ERROR_SEND_MSG_UNLOADED_ATTACHMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, " MAX_DEVICE_PARTNERSHIP_EXCEPTION"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, " ERROR_CERTIFICATE_NOT_AVAILABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, " DEVICE_BLOCKED_EXCEPTION"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionString:[Ljava/lang/String;

    .line 501
    iput p1, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionType:I

    .line 502
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 6
    .parameter "exceptionType"
    .parameter "message"

    .prologue
    .line 494
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 37
    const/16 v0, 0x65

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " NO_ERROR "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, " UNSPECIFIED_EXCEPTION "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " IOERROR "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, " TLS_REQUIRED "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, " AUTH_REQUIRED "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, " GENERAL_SECURITY "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, " AUTHENTICATION_FAILED "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, " DUPLICATE_ACCOUNT "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, " SECURITY_POLICIES_REQUIRED "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, " SECURITY_POLICIES_UNSUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, " PROTOCOL_VERSION_UNSUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, " GAL_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, " OOO_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, " SECURITY_POLICIES_POP3IMAP_DISABLED "

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, " SECURITY_POLICY_ATTACHMENT_MAX_SIZE "

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, " SECURITY_POLICY_ATTACHMENT_DISABLED "

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, " ATTACHMENT_DOWNLOAD_FAILED "

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, " UNSUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, " LOADMORE_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, " SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, " IN_PROGRESS "

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, " ACCOUNT_MOVE_SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, " MESSAGE_NOT_FOUND "

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, " ATTACHMENT_NOT_FOUND "

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, " FOLDER_NOT_DELETED "

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, " FOLDER_NOT_RENAMED "

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, " FOLDER_NOT_CREATED "

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, " REMOTE_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, " LOGIN_FAILED "

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, " SECURITY_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, " ACCOUNT_UNINITIALIZED "

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, " CONNECTION_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, " ERROR_NO_PROTOCOL_SUPPORT "

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, " ERROR_SERVER_CONNECT "

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, " ERROR_GAL_NULL_STRING "

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, " ERROR_GAL_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, " ERROR_GAL_INVALID_RANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, " ERROR_ITEM "

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, " ERROR_OOO_SET_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, " ERROR_OOO_GET_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, " ERROR_OOO_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, " ERROR_SERVER_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, " ERROR_SYSTEM_FOLDER "

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, " ERROR_FOLDER_NOT_EXIST "

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, " ERROR_FOLDER_EXISTS "

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, " ERROR_FOLDER_PARENT_NOT_FOUND "

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, " ERROR_EMPTYTRASH_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, " ERROR_EMPTYTRASH_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, " ERROR_FETCH_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, " ERROR_FETCH_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, " ERROR_FETCH_OUTOFMEMORY "

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, " ERROR_EMPTYTRASH_TIMEOUT "

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, " ERROR_FETCH_NULLMSG "

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, " EMPTYTRASH_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, " ERROR_INVALID_PARAM "

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, " ERROR_OOO_NOT_SUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, " ERROR_CONNECTING_SERVICE "

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, " FILE_IOERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, " ERROR_FETCHING_MSG_BODY "

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, " ERROR_SERVICE_RESPONSE_NULL "

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, " ERROR_PROCESS_SERVICE_RESPONSE_SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, " ERROR_SERVICE_RESPONSE_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, " ERROR_MAX_RETRY_ATTEMPTS_REACHED "

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, " ERROR_NOT_FOUND_IN_DB "

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, " ERROR_LOADING_BODY "

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, " ERROR_VIEW_ATTACHMENT "

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, " ERROR_SERVER_ERROR_15MIN_RESTRICTION"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, " CERTIFICATE_VALIDATION_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, " AUTODISCOVER_AUTHENTICATION_FAILED "

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, " AUTODISCOVER_AUTHENTICATION_RESULT "

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, " AUTHENTICATION_FAILED_OR_SERVER_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, " LICENSE_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, " PROGRESS_CHECK_INCOMIMNG "

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, " PROGRESS_CHECK_OUTGOING "

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, " CHECK_SETTINGS_OK "

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, " CHECK_SETTINGS_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, " CANCEL_CHECK_SETTINGS_SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, " CANCEL_CHECK_SETTINGS_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, " ERROR_CONNECTION_READ_TIMEOUT "

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, " ERROR_SERVER_ERROR_HTTP_5XX"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, " ERROR_SERVER_ERROR_INSUFFICIENT_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, " ERROR_SERVER_NOT_FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, " ERROR_SERVER_NOT_RESPONDING "

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, " ERROR_NETWORK_NOT_AVAILABLE "

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, " ERROR_DELETE_ACCOUNT_FAILURE"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, " ERROR_NETWORK_TRANSIENT_ERROR"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, " ERROR_NO_NETWORK"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, " ERROR_FOLDER_UPDATE_NOT_ALLOWED"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, " PROGRESS_CHECK_LICENSE_SERVER"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, " ERROR_SEND_MSG_UNLOADED_ATTACHMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, " MAX_DEVICE_PARTNERSHIP_EXCEPTION"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, " ERROR_CERTIFICATE_NOT_AVAILABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, " DEVICE_BLOCKED_EXCEPTION"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionString:[Ljava/lang/String;

    .line 495
    iput p1, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionType:I

    .line 496
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .parameter "exceptionType"
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 456
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    const/16 v0, 0x65

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " NO_ERROR "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, " UNSPECIFIED_EXCEPTION "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " IOERROR "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, " TLS_REQUIRED "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, " AUTH_REQUIRED "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, " GENERAL_SECURITY "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, " AUTHENTICATION_FAILED "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, " DUPLICATE_ACCOUNT "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, " SECURITY_POLICIES_REQUIRED "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, " SECURITY_POLICIES_UNSUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, " PROTOCOL_VERSION_UNSUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, " GAL_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, " OOO_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, " SECURITY_POLICIES_POP3IMAP_DISABLED "

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, " SECURITY_POLICY_ATTACHMENT_MAX_SIZE "

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, " SECURITY_POLICY_ATTACHMENT_DISABLED "

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, " ATTACHMENT_DOWNLOAD_FAILED "

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, " UNSUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, " LOADMORE_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, " SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, " IN_PROGRESS "

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, " ACCOUNT_MOVE_SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, " MESSAGE_NOT_FOUND "

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, " ATTACHMENT_NOT_FOUND "

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, " FOLDER_NOT_DELETED "

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, " FOLDER_NOT_RENAMED "

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, " FOLDER_NOT_CREATED "

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, " REMOTE_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, " LOGIN_FAILED "

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, " SECURITY_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, " ACCOUNT_UNINITIALIZED "

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, " CONNECTION_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, " ERROR_NO_PROTOCOL_SUPPORT "

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, " ERROR_SERVER_CONNECT "

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, " ERROR_GAL_NULL_STRING "

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, " ERROR_GAL_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, " ERROR_GAL_INVALID_RANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, " ERROR_ITEM "

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, " ERROR_OOO_SET_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, " ERROR_OOO_GET_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, " ERROR_OOO_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, " ERROR_SERVER_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, " ERROR_SYSTEM_FOLDER "

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, " ERROR_FOLDER_NOT_EXIST "

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, " ERROR_FOLDER_EXISTS "

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, " ERROR_FOLDER_PARENT_NOT_FOUND "

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, " ERROR_EMPTYTRASH_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, " ERROR_EMPTYTRASH_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, " ERROR_FETCH_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, " ERROR_FETCH_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, " ERROR_FETCH_OUTOFMEMORY "

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, " ERROR_EMPTYTRASH_TIMEOUT "

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, " ERROR_FETCH_NULLMSG "

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, " EMPTYTRASH_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, " ERROR_INVALID_PARAM "

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, " ERROR_OOO_NOT_SUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, " ERROR_CONNECTING_SERVICE "

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, " FILE_IOERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, " ERROR_FETCHING_MSG_BODY "

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, " ERROR_SERVICE_RESPONSE_NULL "

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, " ERROR_PROCESS_SERVICE_RESPONSE_SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, " ERROR_SERVICE_RESPONSE_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, " ERROR_MAX_RETRY_ATTEMPTS_REACHED "

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, " ERROR_NOT_FOUND_IN_DB "

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, " ERROR_LOADING_BODY "

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, " ERROR_VIEW_ATTACHMENT "

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, " ERROR_SERVER_ERROR_15MIN_RESTRICTION"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, " CERTIFICATE_VALIDATION_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, " AUTODISCOVER_AUTHENTICATION_FAILED "

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, " AUTODISCOVER_AUTHENTICATION_RESULT "

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, " AUTHENTICATION_FAILED_OR_SERVER_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, " LICENSE_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, " PROGRESS_CHECK_INCOMIMNG "

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, " PROGRESS_CHECK_OUTGOING "

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, " CHECK_SETTINGS_OK "

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, " CHECK_SETTINGS_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, " CANCEL_CHECK_SETTINGS_SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, " CANCEL_CHECK_SETTINGS_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, " ERROR_CONNECTION_READ_TIMEOUT "

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, " ERROR_SERVER_ERROR_HTTP_5XX"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, " ERROR_SERVER_ERROR_INSUFFICIENT_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, " ERROR_SERVER_NOT_FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, " ERROR_SERVER_NOT_RESPONDING "

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, " ERROR_NETWORK_NOT_AVAILABLE "

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, " ERROR_DELETE_ACCOUNT_FAILURE"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, " ERROR_NETWORK_TRANSIENT_ERROR"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, " ERROR_NO_NETWORK"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, " ERROR_FOLDER_UPDATE_NOT_ALLOWED"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, " PROGRESS_CHECK_LICENSE_SERVER"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, " ERROR_SEND_MSG_UNLOADED_ATTACHMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, " MAX_DEVICE_PARTNERSHIP_EXCEPTION"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, " ERROR_CERTIFICATE_NOT_AVAILABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, " DEVICE_BLOCKED_EXCEPTION"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionString:[Ljava/lang/String;

    .line 457
    iput p1, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionType:I

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionData:Ljava/lang/Object;

    .line 459
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 446
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 37
    const/16 v0, 0x65

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, " NO_ERROR "

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, " UNSPECIFIED_EXCEPTION "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " IOERROR "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, " TLS_REQUIRED "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, " AUTH_REQUIRED "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, " GENERAL_SECURITY "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, " AUTHENTICATION_FAILED "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, " DUPLICATE_ACCOUNT "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, " SECURITY_POLICIES_REQUIRED "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, " SECURITY_POLICIES_UNSUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, " PROTOCOL_VERSION_UNSUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, " GAL_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, " OOO_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, " SECURITY_POLICIES_POP3IMAP_DISABLED "

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, " SECURITY_POLICY_ATTACHMENT_MAX_SIZE "

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, " SECURITY_POLICY_ATTACHMENT_DISABLED "

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, " ATTACHMENT_DOWNLOAD_FAILED "

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, " UNSUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, " LOADMORE_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, " SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, " IN_PROGRESS "

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, " ACCOUNT_MOVE_SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, " MESSAGE_NOT_FOUND "

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, " ATTACHMENT_NOT_FOUND "

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, " FOLDER_NOT_DELETED "

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, " FOLDER_NOT_RENAMED "

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, " FOLDER_NOT_CREATED "

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, " REMOTE_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, " LOGIN_FAILED "

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, " SECURITY_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, " ACCOUNT_UNINITIALIZED "

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, " CONNECTION_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, " ERROR_NO_PROTOCOL_SUPPORT "

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, " ERROR_SERVER_CONNECT "

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, " ERROR_GAL_NULL_STRING "

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, " ERROR_GAL_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, " ERROR_GAL_INVALID_RANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, " ERROR_ITEM "

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, " ERROR_OOO_SET_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, " ERROR_OOO_GET_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, " ERROR_OOO_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, " ERROR_SERVER_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, " ERROR_SYSTEM_FOLDER "

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, " ERROR_FOLDER_NOT_EXIST "

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, " ERROR_FOLDER_EXISTS "

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, " ERROR_FOLDER_PARENT_NOT_FOUND "

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, " ERROR_EMPTYTRASH_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, " ERROR_EMPTYTRASH_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, " ERROR_FETCH_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, " ERROR_FETCH_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, " ERROR_FETCH_OUTOFMEMORY "

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, " ERROR_EMPTYTRASH_TIMEOUT "

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, " ERROR_FETCH_NULLMSG "

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, " EMPTYTRASH_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, " ERROR_INVALID_PARAM "

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, " ERROR_OOO_NOT_SUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, " ERROR_CONNECTING_SERVICE "

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, " FILE_IOERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, " ERROR_FETCHING_MSG_BODY "

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, " ERROR_SERVICE_RESPONSE_NULL "

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, " ERROR_PROCESS_SERVICE_RESPONSE_SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, " ERROR_SERVICE_RESPONSE_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, " ERROR_MAX_RETRY_ATTEMPTS_REACHED "

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, " ERROR_NOT_FOUND_IN_DB "

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, " ERROR_LOADING_BODY "

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, " ERROR_VIEW_ATTACHMENT "

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, " ERROR_SERVER_ERROR_15MIN_RESTRICTION"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, " CERTIFICATE_VALIDATION_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, " AUTODISCOVER_AUTHENTICATION_FAILED "

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, " AUTODISCOVER_AUTHENTICATION_RESULT "

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, " AUTHENTICATION_FAILED_OR_SERVER_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, " LICENSE_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, " PROGRESS_CHECK_INCOMIMNG "

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, " PROGRESS_CHECK_OUTGOING "

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, " CHECK_SETTINGS_OK "

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, " CHECK_SETTINGS_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, " CANCEL_CHECK_SETTINGS_SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, " CANCEL_CHECK_SETTINGS_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, " ERROR_CONNECTION_READ_TIMEOUT "

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, " ERROR_SERVER_ERROR_HTTP_5XX"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, " ERROR_SERVER_ERROR_INSUFFICIENT_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, " ERROR_SERVER_NOT_FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, " ERROR_SERVER_NOT_RESPONDING "

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, " ERROR_NETWORK_NOT_AVAILABLE "

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, " ERROR_DELETE_ACCOUNT_FAILURE"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, " ERROR_NETWORK_TRANSIENT_ERROR"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, " ERROR_NO_NETWORK"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, " ERROR_FOLDER_UPDATE_NOT_ALLOWED"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, " PROGRESS_CHECK_LICENSE_SERVER"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, " ERROR_SEND_MSG_UNLOADED_ATTACHMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, " MAX_DEVICE_PARTNERSHIP_EXCEPTION"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, " ERROR_CERTIFICATE_NOT_AVAILABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, " DEVICE_BLOCKED_EXCEPTION"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionString:[Ljava/lang/String;

    .line 447
    iput v3, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionType:I

    .line 448
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .parameter "message"
    .parameter "throwable"

    .prologue
    const/4 v3, 0x0

    .line 451
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    const/16 v0, 0x65

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, " NO_ERROR "

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, " UNSPECIFIED_EXCEPTION "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " IOERROR "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, " TLS_REQUIRED "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, " AUTH_REQUIRED "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, " GENERAL_SECURITY "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, " AUTHENTICATION_FAILED "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, " DUPLICATE_ACCOUNT "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, " SECURITY_POLICIES_REQUIRED "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, " SECURITY_POLICIES_UNSUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, " PROTOCOL_VERSION_UNSUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, " GAL_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, " OOO_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, " SECURITY_POLICIES_POP3IMAP_DISABLED "

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, " STRANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, " SECURITY_POLICY_ATTACHMENT_MAX_SIZE "

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, " SECURITY_POLICY_ATTACHMENT_DISABLED "

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, " ATTACHMENT_DOWNLOAD_FAILED "

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, " UNSUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, " LOADMORE_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, " SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, " IN_PROGRESS "

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, " ACCOUNT_MOVE_SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, " MESSAGE_NOT_FOUND "

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, " ATTACHMENT_NOT_FOUND "

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, " FOLDER_NOT_DELETED "

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, " FOLDER_NOT_RENAMED "

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, " FOLDER_NOT_CREATED "

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, " REMOTE_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, " LOGIN_FAILED "

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, " SECURITY_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, " ACCOUNT_UNINITIALIZED "

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, " CONNECTION_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, " ERROR_NO_PROTOCOL_SUPPORT "

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, " ERROR_SERVER_CONNECT "

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, " ERROR_GAL_NULL_STRING "

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, " ERROR_GAL_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, " ERROR_GAL_INVALID_RANGE "

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, " ERROR_ITEM "

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, " ERROR_OOO_SET_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, " ERROR_OOO_GET_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, " ERROR_OOO_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, " ERROR_SERVER_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, " ERROR_SYSTEM_FOLDER "

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, " ERROR_FOLDER_NOT_EXIST "

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, " ERROR_FOLDER_EXISTS "

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, " ERROR_FOLDER_PARENT_NOT_FOUND "

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, " ERROR_EMPTYTRASH_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, " ERROR_EMPTYTRASH_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, " ERROR_FETCH_RESPONSE_PARSE "

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, " ERROR_FETCH_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, " ERROR_FETCH_OUTOFMEMORY "

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, " ERROR_EMPTYTRASH_TIMEOUT "

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, " ERROR_FETCH_NULLMSG "

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, " EMPTYTRASH_EXCEPTION "

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, " ERROR_INVALID_PARAM "

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, " ERROR_OOO_NOT_SUPPORTED "

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, " ERROR_CONNECTING_SERVICE "

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, " FILE_IOERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, " ERROR_FETCHING_MSG_BODY "

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, " ERROR_SERVICE_RESPONSE_NULL "

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, " ERROR_PROCESS_SERVICE_RESPONSE_SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, " ERROR_SERVICE_RESPONSE_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, " ERROR_MAX_RETRY_ATTEMPTS_REACHED "

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, " ERROR_NOT_FOUND_IN_DB "

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, " ERROR_LOADING_BODY "

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, " ERROR_VIEW_ATTACHMENT "

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, " ERROR_SERVER_ERROR_15MIN_RESTRICTION"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, " CERTIFICATE_VALIDATION_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, " AUTODISCOVER_AUTHENTICATION_FAILED "

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, " AUTODISCOVER_AUTHENTICATION_RESULT "

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, " AUTHENTICATION_FAILED_OR_SERVER_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, " LICENSE_FAILURE "

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, " PROGRESS_CHECK_INCOMIMNG "

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, " PROGRESS_CHECK_OUTGOING "

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, " CHECK_SETTINGS_OK "

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, " CHECK_SETTINGS_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, " CANCEL_CHECK_SETTINGS_SUCCESS "

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, " CANCEL_CHECK_SETTINGS_ERROR "

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, " ERROR_CONNECTION_READ_TIMEOUT "

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, " ERROR_SERVER_ERROR_HTTP_5XX"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, " ERROR_SERVER_ERROR_INSUFFICIENT_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, " ERROR_SERVER_NOT_FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, " ERROR_SERVER_NOT_RESPONDING "

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, " ERROR_NETWORK_NOT_AVAILABLE "

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, " ERROR_DELETE_ACCOUNT_FAILURE"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, " ERROR_NETWORK_TRANSIENT_ERROR"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, " ERROR_NO_NETWORK"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, " ERROR_FOLDER_UPDATE_NOT_ALLOWED"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, " PROGRESS_CHECK_LICENSE_SERVER"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, " ERROR_SEND_MSG_UNLOADED_ATTACHMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, " MAX_DEVICE_PARTNERSHIP_EXCEPTION"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, " ERROR_CERTIFICATE_NOT_AVAILABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, " DEVICE_BLOCKED_EXCEPTION"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionString:[Ljava/lang/String;

    .line 452
    iput v3, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionType:I

    .line 453
    return-void
.end method


# virtual methods
.method public getExceptionType()I
    .registers 2

    .prologue
    .line 512
    iget v0, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionType:I

    return v0
.end method
