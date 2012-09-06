.class Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$3;
.super Ljava/lang/Object;
.source "HostedPostSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;->createAndRunDbCleanup(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mainThreadPostRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Runnable;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$3;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$3;->val$mainThreadPostRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 341
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$3;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/SearchUtils;->clearSearchResults(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 342
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$3;->val$mainThreadPostRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_19

    .line 343
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 344
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPostSearchFragment$3;->val$mainThreadPostRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 346
    .end local v0           #handler:Landroid/os/Handler;
    :cond_19
    return-void
.end method
