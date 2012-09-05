.class Lcom/google/android/apps/books/app/SyncDisabledDialogFragment$1;
.super Ljava/lang/Object;
.source "SyncDisabledDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment$1;->this$0:Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    .line 40
    iget-object v2, p0, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment$1;->this$0:Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 41
    .local v1, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment$1;->this$0:Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v0

    .line 43
    .local v0, account:Landroid/accounts/Account;
    new-instance v2, Lcom/google/android/apps/books/util/SetSyncAutomaticallyTask;

    const-string v3, "com.google.android.apps.books"

    const/4 v4, 0x1

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/apps/books/util/SetSyncAutomaticallyTask;-><init>(Landroid/accounts/Account;Ljava/lang/String;Z)V

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/books/util/SetSyncAutomaticallyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    const v2, 0x7f0e008c

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 48
    iget-object v2, p0, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment$1;->this$0:Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;

    #calls: Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;->markHaveNagged()V
    invoke-static {v2}, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;->access$000(Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;)V

    .line 49
    return-void
.end method
