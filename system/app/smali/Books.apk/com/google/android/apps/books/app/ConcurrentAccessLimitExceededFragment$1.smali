.class Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$1;
.super Ljava/lang/Object;
.source "ConcurrentAccessLimitExceededFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$1;->this$0:Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$1;->this$0:Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;

    #calls: Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;->access$000(Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToHome()V

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$1;->this$0:Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;->dismiss()V

    .line 56
    return-void
.end method
