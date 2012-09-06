.class public Lcom/android/email/ControllerResultUiThreadWrapper;
.super Lcom/android/email/Controller$Result;
.source "ControllerResultUiThreadWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/email/Controller$Result;",
        ">",
        "Lcom/android/email/Controller$Result;"
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mWrappee:Lcom/android/email/Controller$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V
    .registers 3
    .parameter "handler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper;,"Lcom/android/email/ControllerResultUiThreadWrapper<TT;>;"
    .local p2, wrappee:Lcom/android/email/Controller$Result;,"TT;"
    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/email/ControllerResultUiThreadWrapper;->mHandler:Landroid/os/Handler;

    .line 39
    iput-object p2, p0, Lcom/android/email/ControllerResultUiThreadWrapper;->mWrappee:Lcom/android/email/Controller$Result;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/ControllerResultUiThreadWrapper;)Lcom/android/email/Controller$Result;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper;->mWrappee:Lcom/android/email/Controller$Result;

    return-object v0
.end method

.method private run(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "runnable"

    .prologue
    .line 53
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper;,"Lcom/android/email/ControllerResultUiThreadWrapper<TT;>;"
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_8

    .line 54
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 58
    :goto_7
    return-void

    .line 56
    :cond_8
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7
.end method


# virtual methods
.method public getWrappee()Lcom/android/email/Controller$Result;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper;,"Lcom/android/email/ControllerResultUiThreadWrapper<TT;>;"
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper;->mWrappee:Lcom/android/email/Controller$Result;

    return-object v0
.end method

.method public loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V
    .registers 19
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 63
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper;,"Lcom/android/email/ControllerResultUiThreadWrapper<TT;>;"
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$1;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/email/ControllerResultUiThreadWrapper$1;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method public loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .registers 15
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 79
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper;,"Lcom/android/email/ControllerResultUiThreadWrapper<TT;>;"
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$2;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/email/ControllerResultUiThreadWrapper$2;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JJI)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    .line 85
    return-void
.end method

.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .registers 15
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 90
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper;,"Lcom/android/email/ControllerResultUiThreadWrapper<TT;>;"
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$3;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/email/ControllerResultUiThreadWrapper$3;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JJI)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    .registers 19
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "tag"

    .prologue
    .line 101
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper;,"Lcom/android/email/ControllerResultUiThreadWrapper<TT;>;"
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$4;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/email/ControllerResultUiThreadWrapper$4;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method

.method protected setRegistered(Z)V
    .registers 3
    .parameter "registered"

    .prologue
    .line 48
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper;,"Lcom/android/email/ControllerResultUiThreadWrapper<TT;>;"
    invoke-super {p0, p1}, Lcom/android/email/Controller$Result;->setRegistered(Z)V

    .line 49
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper;->mWrappee:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, p1}, Lcom/android/email/Controller$Result;->setRegistered(Z)V

    .line 50
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJIILjava/util/ArrayList;)V
    .registers 19
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
    .line 113
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper;,"Lcom/android/email/ControllerResultUiThreadWrapper<TT;>;"
    .local p8, addedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$5;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/email/ControllerResultUiThreadWrapper$5;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JJIILjava/util/ArrayList;)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .registers 11
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 125
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper;,"Lcom/android/email/ControllerResultUiThreadWrapper<TT;>;"
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$6;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/email/ControllerResultUiThreadWrapper$6;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JI)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method
