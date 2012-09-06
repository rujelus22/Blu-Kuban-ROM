.class Lcom/google/android/apps/plus/fragments/HostedEventFragment$1;
.super Landroid/database/ContentObserver;
.source "HostedEventFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .parameter "selfChange"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->isPaused()Z
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$200(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 272
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 274
    :cond_15
    return-void
.end method
