.class Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;
.super Ljava/lang/Object;
.source "MoveMessageToDialog.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MoveMessageToDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailboxesLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MoveMessageToDialog;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MoveMessageToDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MoveMessageToDialog;Lcom/android/email/activity/MoveMessageToDialog$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;-><init>(Lcom/android/email/activity/MoveMessageToDialog;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 8
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/MoveMessageToDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    #getter for: Lcom/android/email/activity/MoveMessageToDialog;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MoveMessageToDialog;->access$600(Lcom/android/email/activity/MoveMessageToDialog;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    #getter for: Lcom/android/email/activity/MoveMessageToDialog;->mMailboxId:J
    invoke-static {v3}, Lcom/android/email/activity/MoveMessageToDialog;->access$700(Lcom/android/email/activity/MoveMessageToDialog;)J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MailboxMoveToAdapter;->createLoader(Landroid/content/Context;JJ)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 5
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v1, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    #getter for: Lcom/android/email/activity/MoveMessageToDialog;->mDestroyed:Z
    invoke-static {v1}, Lcom/android/email/activity/MoveMessageToDialog;->access$100(Lcom/android/email/activity/MoveMessageToDialog;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 249
    :cond_8
    :goto_8
    return-void

    .line 242
    :cond_9
    iget-object v1, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    #getter for: Lcom/android/email/activity/MoveMessageToDialog;->mAdapter:Lcom/android/email/activity/MailboxMoveToAdapter;
    invoke-static {v1}, Lcom/android/email/activity/MoveMessageToDialog;->access$900(Lcom/android/email/activity/MoveMessageToDialog;)Lcom/android/email/activity/MailboxMoveToAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxMoveToAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_33

    const/4 v0, 0x1

    .line 243
    .local v0, needsShowing:Z
    :goto_16
    iget-object v1, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    #getter for: Lcom/android/email/activity/MoveMessageToDialog;->mAdapter:Lcom/android/email/activity/MailboxMoveToAdapter;
    invoke-static {v1}, Lcom/android/email/activity/MoveMessageToDialog;->access$900(Lcom/android/email/activity/MoveMessageToDialog;)Lcom/android/email/activity/MailboxMoveToAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/email/activity/MailboxMoveToAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 246
    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-virtual {v1}, Lcom/android/email/activity/MoveMessageToDialog;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 247
    iget-object v1, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-virtual {v1}, Lcom/android/email/activity/MoveMessageToDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_8

    .line 242
    .end local v0           #needsShowing:Z
    :cond_33
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 230
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    #getter for: Lcom/android/email/activity/MoveMessageToDialog;->mAdapter:Lcom/android/email/activity/MailboxMoveToAdapter;
    invoke-static {v0}, Lcom/android/email/activity/MoveMessageToDialog;->access$900(Lcom/android/email/activity/MoveMessageToDialog;)Lcom/android/email/activity/MailboxMoveToAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxMoveToAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 254
    return-void
.end method
