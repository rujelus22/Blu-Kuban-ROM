.class Lcom/google/android/apps/plus/fragments/NotificationsListFragment$ServiceListener;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "NotificationsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/NotificationsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/NotificationsListFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/NotificationsListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/NotificationsListFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/NotificationsListFragment;Lcom/google/android/apps/plus/fragments/NotificationsListFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/NotificationsListFragment;)V

    return-void
.end method


# virtual methods
.method public onSyncNotifications(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/NotificationsListFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/NotificationsListFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_11

    .line 62
    :cond_10
    :goto_10
    return-void

    .line 59
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/NotificationsListFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/NotificationsListFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/NotificationsListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/NotificationsListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->mProgressView:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->access$100(Lcom/google/android/apps/plus/fragments/NotificationsListFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/NotificationsListFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    goto :goto_10
.end method
