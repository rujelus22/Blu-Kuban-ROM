.class public Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;
.super Ljava/lang/Object;
.source "MASFVoiceService.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/VoiceService;


# static fields
.field public static final MASF_API2_DEFAULT_URI:Ljava/lang/String; = "g:gv2"

.field public static final MASF_GVP_DEFAULT_URI:Ljava/lang/String; = "g:gvp"

.field public static final METHOD_CANCELCALL:Ljava/lang/String; = "/cc"

.field public static final METHOD_CARRIERPROVISION:Ljava/lang/String; = "/cp"

.field public static final METHOD_CHECKCARRIERPROVISIONING:Ljava/lang/String; = "/ccp"

.field public static final METHOD_CHECKIN:Ljava/lang/String; = "/in"

.field public static final METHOD_CONFIRMVERIFYVIASMS:Ljava/lang/String; = "/cvvs"

.field public static final METHOD_FETCHRECORDING:Ljava/lang/String; = "/fr"

.field public static final METHOD_GETACCOUNTSTATUS:Ljava/lang/String; = "/gas"

.field public static final METHOD_GETBACKENDINFO:Ljava/lang/String; = "/gbi"

.field public static final METHOD_GETCONVERSATION:Ljava/lang/String; = "/gc"

.field public static final METHOD_GETRATES:Ljava/lang/String; = "/gr"

.field public static final METHOD_GETVOICEMAILCONFIGURATION:Ljava/lang/String; = "/gvc"

.field public static final METHOD_INITCALLTHROUGH:Ljava/lang/String; = "/ict"

.field public static final METHOD_INITCLICKTOCALL:Ljava/lang/String; = "/ictc"

.field public static final METHOD_LISTCONVERSATIONS:Ljava/lang/String; = "/lc"

.field public static final METHOD_PREPAREACCOUNTFORPROVISIONING:Ljava/lang/String; = "/pafp"

.field public static final METHOD_REGISTERDESTINATION:Ljava/lang/String; = "/rd"

.field public static final METHOD_SEARCHCONVERSATIONS:Ljava/lang/String; = "/sc"

.field public static final METHOD_SENDSMS:Ljava/lang/String; = "/sms"

.field public static final METHOD_UNREGISTERDESTINATION:Ljava/lang/String; = "/ud"

.field public static final METHOD_UPDATECONVERSATIONLABELS:Ljava/lang/String; = "/ucl"

.field public static final METHOD_UPDATESETTINGS:Ljava/lang/String; = "/us"

.field public static final METHOD_VERIFYVIASMS:Ljava/lang/String; = "/vvs"


# instance fields
.field private credentials:Lcom/google/android/apps/googlevoice/net/Credentials;

.field private masfService:Lcom/googlex/masf/MobileServiceMux;

.field private taskRunner:Lcom/googlex/common/task/TaskRunner;


# direct methods
.method public constructor <init>(Lcom/googlex/masf/MobileServiceMux;Lcom/googlex/common/task/TaskRunner;)V
    .registers 3
    .parameter "masfService"
    .parameter "taskRunner"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 77
    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 78
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->masfService:Lcom/googlex/masf/MobileServiceMux;

    .line 79
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    .line 80
    return-void
.end method

.method private checkCredentials()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/googlevoice/net/VoiceServiceException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->credentials:Lcom/google/android/apps/googlevoice/net/Credentials;

    if-nez v0, :cond_c

    .line 107
    new-instance v0, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_AUTH_TOKEN:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;-><init>(Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;)V

    throw v0

    .line 109
    :cond_c
    return-void
.end method


# virtual methods
.method public createCallThroughRpc()Lcom/google/android/apps/googlevoice/net/CallThroughRpc;
    .registers 3

    .prologue
    .line 117
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;-><init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V

    return-object v0
.end method

.method public createCancelCallRpc()Lcom/google/android/apps/googlevoice/net/CancelCallRpc;
    .registers 3

    .prologue
    .line 122
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFCancelCallRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFCancelCallRpc;-><init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V

    return-object v0
.end method

.method public createCarrierProvisionRpc()Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;
    .registers 3

    .prologue
    .line 244
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFCarrierProvisionRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFCarrierProvisionRpc;-><init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V

    return-object v0
.end method

.method public createCheckCarrierProvisioningRpc()Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;
    .registers 3

    .prologue
    .line 239
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckCarrierProvisioningRpc;-><init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V

    return-object v0
.end method

.method public createCheckinRpc()Lcom/google/android/apps/googlevoice/net/CheckinRpc;
    .registers 3

    .prologue
    .line 216
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckinRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFCheckinRpc;-><init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V

    return-object v0
.end method

.method public createClickToCallRpc()Lcom/google/android/apps/googlevoice/net/ClickToCallRpc;
    .registers 3

    .prologue
    .line 127
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFClickToCallRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFClickToCallRpc;-><init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V

    return-object v0
.end method

.method public createConfirmVerifyViaSmsRpc()Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;
    .registers 3

    .prologue
    .line 152
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFConfirmVerifiedViaSmsRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFConfirmVerifiedViaSmsRpc;-><init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V

    return-object v0
.end method

.method public createEventLogRequest()Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    .registers 2

    .prologue
    .line 225
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;-><init>()V

    return-object v0
.end method

.method public createFetchRecordingRpc()Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;
    .registers 3

    .prologue
    .line 132
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;-><init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V

    return-object v0
.end method

.method public createGetAccountStatusRpc()Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;
    .registers 3

    .prologue
    .line 137
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;-><init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V

    return-object v0
.end method

.method public createGetBackendInfoRpc()Lcom/google/android/apps/googlevoice/net/GetBackendInfoRpc;
    .registers 3

    .prologue
    .line 192
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetBackendInfoRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetBackendInfoRpc;-><init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V

    return-object v0
.end method

.method public createGetConversationRpc()Lcom/google/android/apps/googlevoice/net/GetConversationRpc;
    .registers 3

    .prologue
    .line 142
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetConversationRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetConversationRpc;-><init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V

    return-object v0
.end method

.method public createGetRatesRpc()Lcom/google/android/apps/googlevoice/net/GetRatesRpc;
    .registers 3

    .prologue
    .line 197
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetRatesRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetRatesRpc;-><init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V

    return-object v0
.end method

.method public createGetVoicemailConfigurationRpc()Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;
    .registers 3

    .prologue
    .line 157
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetVoicemailConfigurationRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetVoicemailConfigurationRpc;-><init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V

    return-object v0
.end method

.method public createListConversationsRpc()Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;
    .registers 3

    .prologue
    .line 162
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;-><init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V

    return-object v0
.end method

.method public createMASFRequest(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/net/masf/MASFPlainRequest;
    .registers 4
    .parameter "method"

    .prologue
    .line 101
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFPlainRequest;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->masfService:Lcom/googlex/masf/MobileServiceMux;

    invoke-direct {v0, v1, p1}, Lcom/google/android/apps/googlevoice/net/masf/MASFPlainRequest;-><init>(Lcom/googlex/masf/MobileServiceMux;Ljava/lang/String;)V

    return-object v0
.end method

.method public createPrepareAccountForProvisioningRpc()Lcom/google/android/apps/googlevoice/net/PrepareAccountForProvisioningRpc;
    .registers 3

    .prologue
    .line 172
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFPrepareAccountForProvisioningRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFPrepareAccountForProvisioningRpc;-><init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V

    return-object v0
.end method

.method public createRegisterDestinationRpc()Lcom/google/android/apps/googlevoice/net/RegisterDestinationRpc;
    .registers 3

    .prologue
    .line 206
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFRegisterDestinationRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFRegisterDestinationRpc;-><init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V

    return-object v0
.end method

.method public createSearchConversationsRpc()Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;
    .registers 3

    .prologue
    .line 167
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;-><init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V

    return-object v0
.end method

.method public createSendSmsRpc()Lcom/google/android/apps/googlevoice/net/SendSmsRpc;
    .registers 3

    .prologue
    .line 147
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFSendSmsRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFSendSmsRpc;-><init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V

    return-object v0
.end method

.method public createUnregisterDestinationRpc()Lcom/google/android/apps/googlevoice/net/UnregisterDestinationRpc;
    .registers 3

    .prologue
    .line 211
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFUnregisterDestinationRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFUnregisterDestinationRpc;-><init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V

    return-object v0
.end method

.method public createUnstructuredLogRequest()Lcom/google/android/apps/googlevoice/net/UnstructuredLogRequest;
    .registers 2

    .prologue
    .line 230
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFUnstructuredLogRequest;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFUnstructuredLogRequest;-><init>()V

    return-object v0
.end method

.method public createUpdateConversationLabelsRpc()Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;
    .registers 3

    .prologue
    .line 177
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateConversationLabelsRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateConversationLabelsRpc;-><init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V

    return-object v0
.end method

.method public createUpdateSettingsRpc()Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
    .registers 3

    .prologue
    .line 182
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateSettingsRpc;-><init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V

    return-object v0
.end method

.method public createVerifyViaSmsRpc()Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;
    .registers 3

    .prologue
    .line 187
    new-instance v0, Lcom/google/android/apps/googlevoice/net/masf/MASFVerifyViaSmsRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFVerifyViaSmsRpc;-><init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/googlevoice/net/VoiceServiceException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->checkCredentials()V

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->credentials:Lcom/google/android/apps/googlevoice/net/Credentials;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/net/Credentials;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCredentials()Lcom/google/android/apps/googlevoice/net/Credentials;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->credentials:Lcom/google/android/apps/googlevoice/net/Credentials;

    return-object v0
.end method

.method public setCredentials(Lcom/google/android/apps/googlevoice/net/Credentials;)V
    .registers 2
    .parameter "credentials"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;->credentials:Lcom/google/android/apps/googlevoice/net/Credentials;

    .line 85
    return-void
.end method
