.class final Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareToggle;
.super Landroid/os/AsyncTask;
.source "HostedEventFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InstantShareToggle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEnabled:Z

.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1538
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareToggle;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1538
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareToggle;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 5
    .parameter "params"

    .prologue
    .line 1544
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareToggle;->mEnabled:Z

    .line 1545
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareToggle;->mActivity:Landroid/app/Activity;

    .line 1547
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareToggle;->mActivity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareToggle;->mEnabled:Z

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareToggle;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$2000(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)Lcom/google/api/services/plusi/model/PlusEvent;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsEventData;->enableInstantShare(Landroid/content/Context;ZLcom/google/api/services/plusi/model/PlusEvent;)V

    .line 1549
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1538
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareToggle;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareToggle;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1561
    :goto_8
    return-void

    .line 1559
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareToggle;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareToggle;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mSettingsCallbacks:Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$2100(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)Lcom/google/android/apps/plus/fragments/HostedEventFragment$SettingsLoaderCallbacks;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_8
.end method
