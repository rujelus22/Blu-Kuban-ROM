.class Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$2;
.super Ljava/lang/Object;
.source "HostedPostSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->fetchContent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

.field final synthetic val$newer:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    iput-boolean p2, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$2;->val$newer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 296
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->isPaused()Z
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->access$000(Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 312
    :goto_a
    return-void

    .line 301
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$2;->val$newer:Z

    if-eqz v0, :cond_35

    .line 302
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mQuery:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->access$100(Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/service/EsService;->searchActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 304
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    iput-object v5, v0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 311
    :goto_2f
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->updateSpinner()V

    goto :goto_a

    .line 306
    :cond_35
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    iput-object v5, v0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 307
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mQuery:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->access$100(Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/service/EsService;->searchActivities(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->mOlderReqId:Ljava/lang/Integer;

    goto :goto_2f
.end method
