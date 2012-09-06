.class final Lcom/google/android/apps/reader/fragment/StreamListFragment$PreferencesLoaderCallbacks;
.super Ljava/lang/Object;
.source "StreamListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/fragment/StreamListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreferencesLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/fragment/StreamListFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/reader/fragment/StreamListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment$PreferencesLoaderCallbacks;->this$0:Lcom/google/android/apps/reader/fragment/StreamListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/reader/fragment/StreamListFragment;Lcom/google/android/apps/reader/fragment/StreamListFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/fragment/StreamListFragment$PreferencesLoaderCallbacks;-><init>(Lcom/google/android/apps/reader/fragment/StreamListFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment$PreferencesLoaderCallbacks;->this$0:Lcom/google/android/apps/reader/fragment/StreamListFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 435
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 436
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v2, Lcom/google/android/apps/reader/fragment/PreferenceSyncHandler;

    iget-object v3, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment$PreferencesLoaderCallbacks;->this$0:Lcom/google/android/apps/reader/fragment/StreamListFragment;

    #getter for: Lcom/google/android/apps/reader/fragment/StreamListFragment;->mAccount:Lcom/google/android/accounts/Account;
    invoke-static {v3}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->access$100(Lcom/google/android/apps/reader/fragment/StreamListFragment;)Lcom/google/android/accounts/Account;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/apps/reader/fragment/PreferenceSyncHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/accounts/Account;)V

    return-object v2
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Boolean;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/StreamListFragment$PreferencesLoaderCallbacks;->this$0:Lcom/google/android/apps/reader/fragment/StreamListFragment;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    #setter for: Lcom/google/android/apps/reader/fragment/StreamListFragment;->mPreferencesSynchronized:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/reader/fragment/StreamListFragment;->access$202(Lcom/google/android/apps/reader/fragment/StreamListFragment;Z)Z

    .line 442
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 430
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/reader/fragment/StreamListFragment$PreferencesLoaderCallbacks;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/lang/Boolean;>;"
    return-void
.end method
