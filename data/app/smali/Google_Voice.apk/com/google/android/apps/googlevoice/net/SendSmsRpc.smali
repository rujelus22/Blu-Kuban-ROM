.class public interface abstract Lcom/google/android/apps/googlevoice/net/SendSmsRpc;
.super Ljava/lang/Object;
.source "SendSmsRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/ApiRpc;


# static fields
.field public static final MAX_SMS_SIZE:I = 0x1b8


# virtual methods
.method public abstract addDestination(Ljava/lang/String;J)V
.end method

.method public abstract getConversationId()Ljava/lang/String;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract setAddToAddressBook(Z)V
.end method

.method public abstract setConversationId(Ljava/lang/String;)V
.end method

.method public abstract setErrorSmsSentOnFreeQuotaError(Z)V
.end method

.method public abstract setMessage(Ljava/lang/String;)V
.end method

.method public abstract setSubscriberNumber(Ljava/lang/String;)V
.end method
