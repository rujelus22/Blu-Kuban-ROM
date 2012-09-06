.class public interface abstract Lcom/google/android/apps/googlevoice/net/VoiceService;
.super Ljava/lang/Object;
.source "VoiceService.java"


# virtual methods
.method public abstract createCallThroughRpc()Lcom/google/android/apps/googlevoice/net/CallThroughRpc;
.end method

.method public abstract createCancelCallRpc()Lcom/google/android/apps/googlevoice/net/CancelCallRpc;
.end method

.method public abstract createCarrierProvisionRpc()Lcom/google/android/apps/googlevoice/net/CarrierProvisionRpc;
.end method

.method public abstract createCheckCarrierProvisioningRpc()Lcom/google/android/apps/googlevoice/net/CheckCarrierProvisioningRpc;
.end method

.method public abstract createCheckinRpc()Lcom/google/android/apps/googlevoice/net/CheckinRpc;
.end method

.method public abstract createClickToCallRpc()Lcom/google/android/apps/googlevoice/net/ClickToCallRpc;
.end method

.method public abstract createConfirmVerifyViaSmsRpc()Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;
.end method

.method public abstract createEventLogRequest()Lcom/google/android/apps/googlevoice/net/EventLogRequest;
.end method

.method public abstract createFetchRecordingRpc()Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;
.end method

.method public abstract createGetAccountStatusRpc()Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;
.end method

.method public abstract createGetBackendInfoRpc()Lcom/google/android/apps/googlevoice/net/GetBackendInfoRpc;
.end method

.method public abstract createGetConversationRpc()Lcom/google/android/apps/googlevoice/net/GetConversationRpc;
.end method

.method public abstract createGetRatesRpc()Lcom/google/android/apps/googlevoice/net/GetRatesRpc;
.end method

.method public abstract createGetVoicemailConfigurationRpc()Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;
.end method

.method public abstract createListConversationsRpc()Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;
.end method

.method public abstract createPrepareAccountForProvisioningRpc()Lcom/google/android/apps/googlevoice/net/PrepareAccountForProvisioningRpc;
.end method

.method public abstract createRegisterDestinationRpc()Lcom/google/android/apps/googlevoice/net/RegisterDestinationRpc;
.end method

.method public abstract createSearchConversationsRpc()Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;
.end method

.method public abstract createSendSmsRpc()Lcom/google/android/apps/googlevoice/net/SendSmsRpc;
.end method

.method public abstract createUnregisterDestinationRpc()Lcom/google/android/apps/googlevoice/net/UnregisterDestinationRpc;
.end method

.method public abstract createUnstructuredLogRequest()Lcom/google/android/apps/googlevoice/net/UnstructuredLogRequest;
.end method

.method public abstract createUpdateConversationLabelsRpc()Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;
.end method

.method public abstract createUpdateSettingsRpc()Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
.end method

.method public abstract createVerifyViaSmsRpc()Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;
.end method

.method public abstract getAuthToken()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/googlevoice/net/VoiceServiceException;
        }
    .end annotation
.end method

.method public abstract getCredentials()Lcom/google/android/apps/googlevoice/net/Credentials;
.end method

.method public abstract setCredentials(Lcom/google/android/apps/googlevoice/net/Credentials;)V
.end method
