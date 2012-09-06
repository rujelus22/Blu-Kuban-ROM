.class Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PersonLoaderCallbacks;
.super Ljava/lang/Object;
.source "HangoutRingingActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;
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
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 924
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 924
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PersonLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

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
    .line 930
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$1600()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "person_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterId:Ljava/lang/String;
    invoke-static {v7}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$1700(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 5
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
    .line 943
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_18

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 944
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPackedCircleIds:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$1802(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 945
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->updateCircleNames()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$1000(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    .line 949
    :goto_17
    return-void

    .line 947
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$1900(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->ensurePeopleSynced(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    goto :goto_17
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 924
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PersonLoaderCallbacks;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 957
    .local p1, arg0:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
