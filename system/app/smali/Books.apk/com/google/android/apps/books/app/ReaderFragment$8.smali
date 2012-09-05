.class Lcom/google/android/apps/books/app/ReaderFragment$8;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1602
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$8;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accessDenied(I)V
    .registers 4
    .parameter "maxDevices"

    .prologue
    .line 1605
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$8;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2600(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    .line 1606
    .local v0, scene:Lcom/google/android/apps/books/app/BooksActivity$Scene;
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$8;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->getVolumeId()Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2900(Lcom/google/android/apps/books/app/ReaderFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showConcurrentAccessDeniedDialog(ILjava/lang/String;)V

    .line 1607
    invoke-interface {v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToHome()V

    .line 1608
    return-void
.end method
