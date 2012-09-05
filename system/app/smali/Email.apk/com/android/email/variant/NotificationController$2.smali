.class Lcom/android/email/variant/NotificationController$2;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/variant/NotificationController;->showNewMessageNotification(JJII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/variant/NotificationController;

.field final synthetic val$accountId:J

.field final synthetic val$lastestMsgId:J

.field final synthetic val$unseenMessageCount:I


# direct methods
.method constructor <init>(Lcom/android/email/variant/NotificationController;JJI)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/email/variant/NotificationController$2;->this$0:Lcom/android/email/variant/NotificationController;

    iput-wide p2, p0, Lcom/android/email/variant/NotificationController$2;->val$accountId:J

    iput-wide p4, p0, Lcom/android/email/variant/NotificationController$2;->val$lastestMsgId:J

    iput p6, p0, Lcom/android/email/variant/NotificationController$2;->val$unseenMessageCount:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/email/variant/NotificationController$2;->this$0:Lcom/android/email/variant/NotificationController;

    iget-wide v1, p0, Lcom/android/email/variant/NotificationController$2;->val$accountId:J

    iget-wide v3, p0, Lcom/android/email/variant/NotificationController$2;->val$lastestMsgId:J

    iget v5, p0, Lcom/android/email/variant/NotificationController$2;->val$unseenMessageCount:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/variant/NotificationController;->createNewMessageNotification(JJI)Landroid/app/Notification;

    move-result-object v6

    .line 234
    .local v6, n:Landroid/app/Notification;
    if-nez v6, :cond_f

    .line 238
    :goto_e
    return-void

    .line 237
    :cond_f
    iget-object v0, p0, Lcom/android/email/variant/NotificationController$2;->this$0:Lcom/android/email/variant/NotificationController;

    #getter for: Lcom/android/email/variant/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/email/variant/NotificationController;->access$100(Lcom/android/email/variant/NotificationController;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/variant/NotificationController$2;->this$0:Lcom/android/email/variant/NotificationController;

    iget-wide v2, p0, Lcom/android/email/variant/NotificationController$2;->val$accountId:J

    #calls: Lcom/android/email/variant/NotificationController;->getNewMessageNotificationId(J)I
    invoke-static {v1, v2, v3}, Lcom/android/email/variant/NotificationController;->access$000(Lcom/android/email/variant/NotificationController;J)I

    move-result v1

    invoke-virtual {v0, v1, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_e
.end method
