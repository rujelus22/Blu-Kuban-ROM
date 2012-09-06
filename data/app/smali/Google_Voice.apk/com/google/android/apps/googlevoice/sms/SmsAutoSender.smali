.class public interface abstract Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;
.super Ljava/lang/Object;
.source "SmsAutoSender.java"


# static fields
.field public static final REQUEST_CODE_AUTHENTICATE:I = 0x64

.field public static final STATUS_SEND_FAILED:I = 0x1

.field public static final STATUS_SEND_FAILED_AUTH_ERROR:I = 0x4

.field public static final STATUS_SEND_FAILED_DESTINATION_DISALLOWED:I = 0x3

.field public static final STATUS_SEND_FAILED_NO_CREDIT:I = 0x2

.field public static final STATUS_SEND_SUCCESS:I


# virtual methods
.method public abstract invalidateAuthToken()V
.end method

.method public abstract onSendFinished(I)V
.end method

.method public abstract reauthenticate()V
.end method

.method public abstract setInProgress(Z)V
.end method
