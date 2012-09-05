.class Lcom/android/email/ControllerResultUiThreadWrapper$16;
.super Ljava/lang/Object;
.source "ControllerResultUiThreadWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/ControllerResultUiThreadWrapper;->moveMessageCallback(Lcom/android/emailcommon/mail/MessagingException;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

.field final synthetic val$mailboxId:J

.field final synthetic val$result:Lcom/android/emailcommon/mail/MessagingException;


# direct methods
.method constructor <init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;J)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper$16;,"Lcom/android/email/ControllerResultUiThreadWrapper.16;"
    iput-object p1, p0, Lcom/android/email/ControllerResultUiThreadWrapper$16;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    iput-object p2, p0, Lcom/android/email/ControllerResultUiThreadWrapper$16;->val$result:Lcom/android/emailcommon/mail/MessagingException;

    iput-wide p3, p0, Lcom/android/email/ControllerResultUiThreadWrapper$16;->val$mailboxId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 270
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper$16;,"Lcom/android/email/ControllerResultUiThreadWrapper.16;"
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper$16;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_9

    .line 273
    :goto_8
    return-void

    .line 272
    :cond_9
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper$16;->this$0:Lcom/android/email/ControllerResultUiThreadWrapper;

    #getter for: Lcom/android/email/ControllerResultUiThreadWrapper;->mWrappee:Lcom/android/email/Controller$Result;
    invoke-static {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->access$000(Lcom/android/email/ControllerResultUiThreadWrapper;)Lcom/android/email/Controller$Result;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/ControllerResultUiThreadWrapper$16;->val$result:Lcom/android/emailcommon/mail/MessagingException;

    iget-wide v2, p0, Lcom/android/email/ControllerResultUiThreadWrapper$16;->val$mailboxId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller$Result;->moveMessageCallback(Lcom/android/emailcommon/mail/MessagingException;J)V

    goto :goto_8
.end method
