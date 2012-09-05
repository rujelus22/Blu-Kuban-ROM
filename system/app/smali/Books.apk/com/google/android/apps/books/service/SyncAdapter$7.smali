.class Lcom/google/android/apps/books/service/SyncAdapter$7;
.super Ljava/lang/Object;
.source "SyncService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/service/SyncAdapter;->syncPlusOnes(Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/service/SyncAdapter;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$completionCallback:Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/service/SyncAdapter;Landroid/accounts/Account;Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1381
    iput-object p1, p0, Lcom/google/android/apps/books/service/SyncAdapter$7;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    iput-object p2, p0, Lcom/google/android/apps/books/service/SyncAdapter$7;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/apps/books/service/SyncAdapter$7;->val$completionCallback:Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1383
    iget-object v2, p0, Lcom/google/android/apps/books/service/SyncAdapter$7;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/app/BooksApplication;

    .line 1385
    .local v0, booksApp:Lcom/google/android/apps/books/app/BooksApplication;
    iget-object v2, p0, Lcom/google/android/apps/books/service/SyncAdapter$7;->val$account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/books/app/BooksApplication;->getPlusOneController(Ljava/lang/String;)Lcom/google/android/plus1/PlusOneController;

    move-result-object v1

    .line 1386
    .local v1, plusOne:Lcom/google/android/plus1/PlusOneController;
    iget-object v2, p0, Lcom/google/android/apps/books/service/SyncAdapter$7;->val$completionCallback:Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;

    invoke-virtual {v1, v2}, Lcom/google/android/plus1/PlusOneController;->sync(Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;)V

    .line 1387
    return-void
.end method
