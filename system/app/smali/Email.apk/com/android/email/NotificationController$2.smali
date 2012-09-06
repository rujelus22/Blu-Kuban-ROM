.class Lcom/android/email/NotificationController$2;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/NotificationController;->suspendMessageNotification(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/NotificationController;


# direct methods
.method constructor <init>(Lcom/android/email/NotificationController;)V
    .registers 2
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/email/NotificationController$2;->this$0:Lcom/android/email/NotificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 294
    iget-object v3, p0, Lcom/android/email/NotificationController$2;->this$0:Lcom/android/email/NotificationController;

    #getter for: Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/email/NotificationController;->access$600(Lcom/android/email/NotificationController;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 295
    .local v0, accountId:J
    iget-object v3, p0, Lcom/android/email/NotificationController$2;->this$0:Lcom/android/email/NotificationController;

    #getter for: Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v3}, Lcom/android/email/NotificationController;->access$800(Lcom/android/email/NotificationController;)Landroid/app/NotificationManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/NotificationController$2;->this$0:Lcom/android/email/NotificationController;

    #calls: Lcom/android/email/NotificationController;->getNewMessageNotificationId(J)I
    invoke-static {v4, v0, v1}, Lcom/android/email/NotificationController;->access$700(Lcom/android/email/NotificationController;J)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_e

    .line 297
    .end local v0           #accountId:J
    :cond_2e
    return-void
.end method
