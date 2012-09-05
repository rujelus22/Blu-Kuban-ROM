.class Lcom/google/android/apps/books/app/AccountPickerFragment$1$1;
.super Ljava/lang/Object;
.source "AccountPickerFragment.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/AccountPickerFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/app/AccountPickerFragment$1;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/AccountPickerFragment$1;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$1$1;->this$1:Lcom/google/android/apps/books/app/AccountPickerFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$1$1;->this$1:Lcom/google/android/apps/books/app/AccountPickerFragment$1;

    iget-object v0, v0, Lcom/google/android/apps/books/app/AccountPickerFragment$1;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    #calls: Lcom/google/android/apps/books/app/AccountPickerFragment;->refreshAccounts()V
    invoke-static {v0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->access$000(Lcom/google/android/apps/books/app/AccountPickerFragment;)V

    .line 97
    :cond_d
    return-void
.end method
