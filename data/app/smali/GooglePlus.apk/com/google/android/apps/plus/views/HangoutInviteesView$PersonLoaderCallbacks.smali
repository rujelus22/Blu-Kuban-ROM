.class Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;
.super Ljava/lang/Object;
.source "HangoutInviteesView.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/HangoutInviteesView;
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
.field final synthetic this$0:Lcom/google/android/apps/plus/views/HangoutInviteesView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/views/HangoutInviteesView;)V
    .registers 2
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/views/HangoutInviteesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/views/HangoutInviteesView;Lcom/google/android/apps/plus/views/HangoutInviteesView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/views/HangoutInviteesView;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 12
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
    const/4 v6, 0x0

    .line 256
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/views/HangoutInviteesView;

    #getter for: Lcom/google/android/apps/plus/views/HangoutInviteesView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->access$200(Lcom/google/android/apps/plus/views/HangoutInviteesView;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/views/HangoutInviteesView;

    #getter for: Lcom/google/android/apps/plus/views/HangoutInviteesView;->mInviteeId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->access$300(Lcom/google/android/apps/plus/views/HangoutInviteesView;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_11
    move-object v0, v6

    .line 260
    :goto_12
    return-object v0

    :cond_13
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/views/HangoutInviteesView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CONTACTS_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/views/HangoutInviteesView;

    #getter for: Lcom/google/android/apps/plus/views/HangoutInviteesView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v3}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->access$200(Lcom/google/android/apps/plus/views/HangoutInviteesView;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->access$400()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "gaia_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/views/HangoutInviteesView;

    #getter for: Lcom/google/android/apps/plus/views/HangoutInviteesView;->mInviteeId:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->access$300(Lcom/google/android/apps/plus/views/HangoutInviteesView;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
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
    .line 273
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_18

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 274
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/views/HangoutInviteesView;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/android/apps/plus/views/HangoutInviteesView;->mPackedCircleIds:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->access$502(Lcom/google/android/apps/plus/views/HangoutInviteesView;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/views/HangoutInviteesView;

    #calls: Lcom/google/android/apps/plus/views/HangoutInviteesView;->updateCircleNames()V
    invoke-static {v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->access$100(Lcom/google/android/apps/plus/views/HangoutInviteesView;)V

    .line 279
    :goto_17
    return-void

    .line 277
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/views/HangoutInviteesView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;->this$0:Lcom/google/android/apps/plus/views/HangoutInviteesView;

    #getter for: Lcom/google/android/apps/plus/views/HangoutInviteesView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/views/HangoutInviteesView;->access$200(Lcom/google/android/apps/plus/views/HangoutInviteesView;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->ensurePeopleSynced(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    goto :goto_17
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 250
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/views/HangoutInviteesView$PersonLoaderCallbacks;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 287
    .local p1, arg0:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
