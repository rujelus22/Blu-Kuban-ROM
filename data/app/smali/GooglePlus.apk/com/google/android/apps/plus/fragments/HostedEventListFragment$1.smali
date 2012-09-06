.class Lcom/google/android/apps/plus/fragments/HostedEventListFragment$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "HostedEventListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedEventListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedEventListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedEventListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventListFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventHomeRequestComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventListFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventListFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_13

    .line 125
    :cond_12
    :goto_12
    return-void

    .line 121
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventListFragment;

    iput-object v3, v0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventListFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->mRefreshNeeded:Z
    invoke-static {v0, v2}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->access$002(Lcom/google/android/apps/plus/fragments/HostedEventListFragment;Z)Z

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventListFragment;

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_12
.end method
