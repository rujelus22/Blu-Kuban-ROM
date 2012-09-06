.class final Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;
.super Ljava/lang/Object;
.source "HostedEventFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1239
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;Lcom/google/android/apps/plus/fragments/HostedEventFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1239
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 5
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1242
    new-instance v0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks$1;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks$1;-><init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1239
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1258
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 1259
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_9

    .line 1277
    :cond_8
    :goto_8
    return-void

    .line 1264
    :cond_9
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$1500(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)Lcom/google/android/apps/plus/fragments/EventActiveState;

    move-result-object v3

    iget-boolean v2, v3, Lcom/google/android/apps/plus/fragments/EventActiveState;->isInstantShareEnabled:Z

    .line 1265
    .local v2, wasEnabled:Z
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$1500(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)Lcom/google/android/apps/plus/fragments/EventActiveState;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventId:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$1000(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/apps/plus/fragments/EventActiveState;->isInstantShareEnabled:Z

    .line 1267
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$1500(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)Lcom/google/android/apps/plus/fragments/EventActiveState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/apps/plus/fragments/EventActiveState;->isInstantShareEnabled:Z

    if-eq v2, v3, :cond_8

    .line 1268
    const v3, 0x7f090042

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;

    .line 1272
    .local v0, isView:Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;
    if-eqz v0, :cond_8

    .line 1273
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$1500(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)Lcom/google/android/apps/plus/fragments/EventActiveState;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->bind(Lcom/google/android/apps/plus/fragments/EventActiveState;)V

    .line 1274
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->invalidate()V

    goto :goto_8
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1281
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Ljava/lang/String;>;"
    return-void
.end method
