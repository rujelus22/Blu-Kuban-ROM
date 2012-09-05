.class Lcom/google/android/apps/books/app/ExitSearchDialogFragment$1;
.super Ljava/lang/Object;
.source "ExitSearchDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ExitSearchDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ExitSearchDialogFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ExitSearchDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/apps/books/app/ExitSearchDialogFragment$1;->this$0:Lcom/google/android/apps/books/app/ExitSearchDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 45
    if-nez p2, :cond_d

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/books/app/ExitSearchDialogFragment$1;->this$0:Lcom/google/android/apps/books/app/ExitSearchDialogFragment;

    #calls: Lcom/google/android/apps/books/app/ExitSearchDialogFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ExitSearchDialogFragment;->access$000(Lcom/google/android/apps/books/app/ExitSearchDialogFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->exitSearch(Z)V

    .line 52
    :cond_c
    :goto_c
    return-void

    .line 48
    :cond_d
    if-ne p2, v1, :cond_c

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/books/app/ExitSearchDialogFragment$1;->this$0:Lcom/google/android/apps/books/app/ExitSearchDialogFragment;

    #calls: Lcom/google/android/apps/books/app/ExitSearchDialogFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ExitSearchDialogFragment;->access$000(Lcom/google/android/apps/books/app/ExitSearchDialogFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->exitSearch(Z)V

    goto :goto_c
.end method
