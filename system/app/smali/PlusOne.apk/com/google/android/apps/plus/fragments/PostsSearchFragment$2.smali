.class Lcom/google/android/apps/plus/fragments/PostsSearchFragment$2;
.super Ljava/lang/Object;
.source "PostsSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->fetchContent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PostsSearchFragment;

.field final synthetic val$newer:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PostsSearchFragment;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PostsSearchFragment;

    iput-boolean p2, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$2;->val$newer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 375
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PostsSearchFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 391
    :goto_a
    return-void

    .line 380
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$2;->val$newer:Z

    if-eqz v0, :cond_37

    .line 381
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PostsSearchFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PostsSearchFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PostsSearchFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PostsSearchFragment;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mQuery:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/service/EsService;->searchActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 383
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PostsSearchFragment;

    iput-object v5, v0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 390
    :goto_2d
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PostsSearchFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PostsSearchFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    goto :goto_a

    .line 385
    :cond_37
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PostsSearchFragment;

    iput-object v5, v0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 386
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PostsSearchFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PostsSearchFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PostsSearchFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/PostsSearchFragment;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mQuery:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/service/EsService;->searchActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/PostsSearchFragment;->mOlderReqId:Ljava/lang/Integer;

    goto :goto_2d
.end method
