.class Lcom/google/android/apps/books/app/BooksImageManager$1;
.super Ljava/lang/Object;
.source "BooksImageManager.java"

# interfaces
.implements Lcom/google/android/apps/books/common/ImageFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/BooksImageManager;->getImage(Landroid/net/Uri;Lcom/google/android/apps/books/common/ImageManager$Ensurer;Lcom/google/android/apps/books/common/ImageCallback;)Lcom/google/android/apps/books/common/ImageFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/BooksImageManager;

.field final synthetic val$callback:Lcom/google/android/apps/books/common/ImageCallback;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/BooksImageManager;Lcom/google/android/apps/books/common/ImageCallback;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksImageManager$1;->this$0:Lcom/google/android/apps/books/app/BooksImageManager;

    iput-object p2, p0, Lcom/google/android/apps/books/app/BooksImageManager$1;->val$callback:Lcom/google/android/apps/books/common/ImageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksImageManager$1;->this$0:Lcom/google/android/apps/books/app/BooksImageManager;

    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksImageManager$1;->val$callback:Lcom/google/android/apps/books/common/ImageCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/BooksImageManager;->cancelCallback(Lcom/google/android/apps/books/common/ImageCallback;)V

    .line 126
    return-void
.end method

.method public isDone()Z
    .registers 2

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method
