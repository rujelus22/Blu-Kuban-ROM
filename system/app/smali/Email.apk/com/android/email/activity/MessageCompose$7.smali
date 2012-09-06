.class Lcom/android/email/activity/MessageCompose$7;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->deleteAttachment(Ljava/util/List;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;

.field final synthetic val$attachmentId:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1719
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$7;->this$0:Lcom/android/email/activity/MessageCompose;

    iput-wide p2, p0, Lcom/android/email/activity/MessageCompose$7;->val$attachmentId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$7;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$2200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageCompose$7;->val$attachmentId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->deleteAttachment(J)V

    .line 1723
    return-void
.end method
