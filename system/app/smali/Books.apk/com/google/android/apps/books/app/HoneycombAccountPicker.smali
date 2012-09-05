.class public Lcom/google/android/apps/books/app/HoneycombAccountPicker;
.super Ljava/lang/Object;
.source "HoneycombAccountPicker.java"

# interfaces
.implements Lcom/google/android/apps/books/app/AccountPicker;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pickAccount(Landroid/app/Activity;Landroid/accounts/Account;I)V
    .registers 5
    .parameter "activity"
    .parameter "currentAccount"
    .parameter "requestCode"

    .prologue
    .line 24
    check-cast p1, Lcom/google/android/apps/books/app/BooksActivity;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/apps/books/app/BooksActivity;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showHoneycombAccountPicker()V

    .line 25
    return-void
.end method
