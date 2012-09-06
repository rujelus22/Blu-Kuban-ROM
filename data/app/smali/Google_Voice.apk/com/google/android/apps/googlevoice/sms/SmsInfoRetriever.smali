.class public interface abstract Lcom/google/android/apps/googlevoice/sms/SmsInfoRetriever;
.super Ljava/lang/Object;
.source "SmsInfoRetriever.java"


# virtual methods
.method public abstract getExceptionForSms(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;
.end method

.method public abstract hasExceptionForSms(Ljava/lang/String;)Z
.end method

.method public abstract hasQueuedSms(Ljava/lang/String;)Z
.end method

.method public abstract isFailedSms(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isPermanentlyFailedSms(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isQueuedSms(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isSmsInProgress(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isTemporarilyFailedSms(Ljava/lang/String;Ljava/lang/String;)Z
.end method
