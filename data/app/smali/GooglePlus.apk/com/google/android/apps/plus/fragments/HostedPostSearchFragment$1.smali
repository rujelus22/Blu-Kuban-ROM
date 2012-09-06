.class Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "HostedPostSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchActivitiesComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "serviceResult"

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_21

    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mOlderReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_3b

    .line 57
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 60
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    if-eqz p3, :cond_3c

    invoke-virtual {p3}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    :goto_34
    iput-boolean v0, v1, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mError:Z

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->loadContent()V

    .line 64
    :cond_3b
    return-void

    .line 60
    :cond_3c
    const/4 v0, 0x0

    goto :goto_34
.end method
