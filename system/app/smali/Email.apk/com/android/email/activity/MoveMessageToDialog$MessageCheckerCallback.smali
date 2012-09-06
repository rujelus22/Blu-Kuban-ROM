.class Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;
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
    name = "MessageCheckerCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/email/activity/MoveMessageToDialog$IdContainer;",
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
    .line 197
    iput-object p1, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MoveMessageToDialog;Lcom/android/email/activity/MoveMessageToDialog$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;-><init>(Lcom/android/email/activity/MoveMessageToDialog;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 6
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/email/activity/MoveMessageToDialog$IdContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;

    iget-object v1, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-virtual {v1}, Lcom/android/email/activity/MoveMessageToDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    #getter for: Lcom/android/email/activity/MoveMessageToDialog;->mMessageIds:[J
    invoke-static {v2}, Lcom/android/email/activity/MoveMessageToDialog;->access$200(Lcom/android/email/activity/MoveMessageToDialog;)[J

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;-><init>(Landroid/app/Activity;[J)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/email/activity/MoveMessageToDialog$IdContainer;)V
    .registers 8
    .parameter
    .parameter "idSet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/email/activity/MoveMessageToDialog$IdContainer;",
            ">;",
            "Lcom/android/email/activity/MoveMessageToDialog$IdContainer;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/email/activity/MoveMessageToDialog$IdContainer;>;"
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    .line 205
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    #getter for: Lcom/android/email/activity/MoveMessageToDialog;->mDestroyed:Z
    invoke-static {v0}, Lcom/android/email/activity/MoveMessageToDialog;->access$100(Lcom/android/email/activity/MoveMessageToDialog;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 220
    :goto_b
    return-void

    .line 209
    :cond_c
    if-eqz p2, :cond_1e

    #getter for: Lcom/android/email/activity/MoveMessageToDialog$IdContainer;->mAccountId:J
    invoke-static {p2}, Lcom/android/email/activity/MoveMessageToDialog$IdContainer;->access$300(Lcom/android/email/activity/MoveMessageToDialog$IdContainer;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    #getter for: Lcom/android/email/activity/MoveMessageToDialog$IdContainer;->mMailboxId:J
    invoke-static {p2}, Lcom/android/email/activity/MoveMessageToDialog$IdContainer;->access$400(Lcom/android/email/activity/MoveMessageToDialog$IdContainer;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_24

    .line 212
    :cond_1e
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    #calls: Lcom/android/email/activity/MoveMessageToDialog;->dismissAsync()V
    invoke-static {v0}, Lcom/android/email/activity/MoveMessageToDialog;->access$500(Lcom/android/email/activity/MoveMessageToDialog;)V

    goto :goto_b

    .line 215
    :cond_24
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    #getter for: Lcom/android/email/activity/MoveMessageToDialog$IdContainer;->mAccountId:J
    invoke-static {p2}, Lcom/android/email/activity/MoveMessageToDialog$IdContainer;->access$300(Lcom/android/email/activity/MoveMessageToDialog$IdContainer;)J

    move-result-wide v1

    #setter for: Lcom/android/email/activity/MoveMessageToDialog;->mAccountId:J
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MoveMessageToDialog;->access$602(Lcom/android/email/activity/MoveMessageToDialog;J)J

    .line 216
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    #getter for: Lcom/android/email/activity/MoveMessageToDialog$IdContainer;->mMailboxId:J
    invoke-static {p2}, Lcom/android/email/activity/MoveMessageToDialog$IdContainer;->access$400(Lcom/android/email/activity/MoveMessageToDialog$IdContainer;)J

    move-result-wide v1

    #setter for: Lcom/android/email/activity/MoveMessageToDialog;->mMailboxId:J
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MoveMessageToDialog;->access$702(Lcom/android/email/activity/MoveMessageToDialog;J)J

    .line 217
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/MoveMessageToDialog;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;

    iget-object v3, p0, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;->this$0:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-direct {v2, v3, v4}, Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;-><init>(Lcom/android/email/activity/MoveMessageToDialog;Lcom/android/email/activity/MoveMessageToDialog$1;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_b
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 197
    check-cast p2, Lcom/android/email/activity/MoveMessageToDialog$IdContainer;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;->onLoadFinished(Landroid/content/Loader;Lcom/android/email/activity/MoveMessageToDialog$IdContainer;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/email/activity/MoveMessageToDialog$IdContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/email/activity/MoveMessageToDialog$IdContainer;>;"
    return-void
.end method
