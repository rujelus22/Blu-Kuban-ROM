.class Lcom/google/android/apps/plus/fragments/HostedEventFragment$EventRefreshRunnable;
.super Ljava/lang/Object;
.source "HostedEventFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventRefreshRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$EventRefreshRunnable;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;Lcom/google/android/apps/plus/fragments/HostedEventFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$EventRefreshRunnable;-><init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$EventRefreshRunnable;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_9

    .line 221
    :cond_8
    :goto_8
    return-void

    .line 217
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$EventRefreshRunnable;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->isPaused()Z
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$100(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$EventRefreshRunnable;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$EventRefreshRunnable;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_8
.end method
