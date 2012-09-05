.class Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog$1;
.super Ljava/lang/Object;
.source "ConfirmRemoveFromLibraryDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog$1;->this$0:Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 53
    iget-object v3, p0, Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog$1;->this$0:Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog;

    invoke-virtual {v3}, Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 54
    .local v1, args:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog$1;->this$0:Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog;

    invoke-virtual {v3}, Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/app/BooksActivity;

    .line 55
    .local v0, activity:Lcom/google/android/apps/books/app/BooksActivity;
    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 56
    .local v2, resolver:Landroid/content/ContentResolver;
    new-instance v3, Lcom/google/android/apps/books/model/CollectionVolumesEditor;

    invoke-direct {v3, v2}, Lcom/google/android/apps/books/model/CollectionVolumesEditor;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {v1}, Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog$Arguments;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v4

    const-wide/16 v5, 0x7

    invoke-static {v1}, Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog$Arguments;->getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/apps/books/model/CollectionVolumesEditor;->backgroundRemove(Landroid/accounts/Account;JLjava/lang/String;)Landroid/os/AsyncTask;

    .line 59
    iget-object v3, p0, Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog$1;->this$0:Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog;

    invoke-virtual {v3}, Lcom/google/android/apps/books/app/ConfirmRemoveFromLibraryDialog;->dismiss()V

    .line 60
    return-void
.end method
