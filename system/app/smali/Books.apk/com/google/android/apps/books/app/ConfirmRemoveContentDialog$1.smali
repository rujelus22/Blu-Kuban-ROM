.class Lcom/google/android/apps/books/app/ConfirmRemoveContentDialog$1;
.super Ljava/lang/Object;
.source "ConfirmRemoveContentDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ConfirmRemoveContentDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ConfirmRemoveContentDialog;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ConfirmRemoveContentDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/apps/books/app/ConfirmRemoveContentDialog$1;->this$0:Lcom/google/android/apps/books/app/ConfirmRemoveContentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 15
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/books/app/ConfirmRemoveContentDialog$1;->this$0:Lcom/google/android/apps/books/app/ConfirmRemoveContentDialog;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/ConfirmRemoveContentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    .line 55
    .local v8, args:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/google/android/apps/books/app/ConfirmRemoveContentDialog$1;->this$0:Lcom/google/android/apps/books/app/ConfirmRemoveContentDialog;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/ConfirmRemoveContentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/books/app/BooksActivity;

    .line 56
    .local v7, activity:Lcom/google/android/apps/books/app/BooksActivity;
    invoke-virtual {v7}, Lcom/google/android/apps/books/app/BooksActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 57
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/google/android/apps/books/app/BooksApplication;->getApiaryClient(Landroid/content/Context;)Lcom/google/android/apps/books/api/ApiaryClient;

    move-result-object v3

    .line 58
    .local v3, apiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;
    new-instance v0, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ConfirmRemoveContentDialog$Arguments;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v1

    new-array v4, v11, [Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ConfirmRemoveContentDialog$Arguments;->getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;-><init>(Landroid/accounts/Account;Landroid/content/ContentResolver;Lcom/google/android/apps/books/api/ApiaryClient;Ljava/util/List;Lcom/google/android/apps/books/service/SyncService$SyncUi;Ljava/util/List;)V

    new-array v1, v10, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/RemoveLocalBookContentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    const v0, 0x7f0e0064

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ConfirmRemoveContentDialog$Arguments;->getTitle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v10

    invoke-virtual {v7, v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 64
    .local v9, message:Ljava/lang/String;
    invoke-static {v7, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/books/app/ConfirmRemoveContentDialog$1;->this$0:Lcom/google/android/apps/books/app/ConfirmRemoveContentDialog;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/ConfirmRemoveContentDialog;->dismiss()V

    .line 67
    return-void
.end method
