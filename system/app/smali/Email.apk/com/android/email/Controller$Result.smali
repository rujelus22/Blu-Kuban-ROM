.class public abstract Lcom/android/email/Controller$Result;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Result"
.end annotation


# instance fields
.field private volatile mRegistered:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final isRegistered()Z
    .registers 2

    .prologue
    .line 1237
    iget-boolean v0, p0, Lcom/android/email/Controller$Result;->mRegistered:Z

    return v0
.end method

.method public loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V
    .registers 9
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 1286
    return-void
.end method

.method public loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .registers 7
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 1274
    return-void
.end method

.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .registers 7
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 1334
    return-void
.end method

.method public serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    .registers 9
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "tag"

    .prologue
    .line 1301
    return-void
.end method

.method protected setRegistered(Z)V
    .registers 2
    .parameter "registered"

    .prologue
    .line 1233
    iput-boolean p1, p0, Lcom/android/email/Controller$Result;->mRegistered:Z

    .line 1234
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJIILjava/util/ArrayList;)V
    .registers 9
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "numNewMessages"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/mail/MessagingException;",
            "JJII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1263
    .local p8, addedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .registers 5
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 1249
    return-void
.end method
