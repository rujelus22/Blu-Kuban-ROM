.class Lcom/google/android/apps/plus/hangout/HermesActivity$PersonLoaderCallbacks;
.super Ljava/lang/Object;
.source "HermesActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HermesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/HermesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/HermesActivity;Lcom/google/android/apps/plus/hangout/HermesActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HermesActivity$PersonLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/hangout/HermesActivity;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 11
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/HermesActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$900()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "person_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteUserId:Ljava/lang/String;
    invoke-static {v7}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$1000(Lcom/google/android/apps/plus/hangout/HermesActivity;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 10
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v5, 0x0

    .line 210
    if-eqz p2, :cond_14

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 211
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/google/android/apps/plus/hangout/HermesActivity;->setRemoteUserName(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$1100(Lcom/google/android/apps/plus/hangout/HermesActivity;Ljava/lang/String;)V

    .line 217
    :goto_13
    return-void

    .line 213
    :cond_14
    new-instance v0, Lcom/google/android/apps/plus/api/GetContactOperation;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$1200(Lcom/google/android/apps/plus/hangout/HermesActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HermesActivity$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HermesActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HermesActivity;->mRemoteUserId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/HermesActivity;->access$1000(Lcom/google/android/apps/plus/hangout/HermesActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/GetContactOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 215
    .local v0, gco:Lcom/google/android/apps/plus/api/GetContactOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/GetContactOperation;->startThreaded()V

    goto :goto_13
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/HermesActivity$PersonLoaderCallbacks;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, arg0:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
