.class Lcom/google/android/apps/books/provider/BooksProvider$2;
.super Landroid/os/ResultReceiver;
.source "BooksProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/provider/BooksProvider;->ensureResourceContent(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/provider/BooksProvider;

.field final synthetic val$ensureSemaphore:Ljava/util/concurrent/Semaphore;

.field final synthetic val$resultCodeOutput:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/provider/BooksProvider;Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/Semaphore;)V
    .registers 5
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Lcom/google/android/apps/books/provider/BooksProvider$2;->this$0:Lcom/google/android/apps/books/provider/BooksProvider;

    iput-object p3, p0, Lcom/google/android/apps/books/provider/BooksProvider$2;->val$resultCodeOutput:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lcom/google/android/apps/books/provider/BooksProvider$2;->val$ensureSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 4
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider$2;->val$resultCodeOutput:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 591
    iget-object v0, p0, Lcom/google/android/apps/books/provider/BooksProvider$2;->val$ensureSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 592
    return-void
.end method
