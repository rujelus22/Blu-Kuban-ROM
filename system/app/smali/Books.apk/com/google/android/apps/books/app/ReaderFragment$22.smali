.class Lcom/google/android/apps/books/app/ReaderFragment$22;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ReaderFragment;->onFadeInComplete()V
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
    .line 2571
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$22;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2574
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$22;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2600(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v1

    const v2, 0x7f0f001a

    invoke-interface {v1, v2}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->findStaticViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2575
    .local v0, carousel:Landroid/view/View;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->setViewOffscreen(Landroid/view/View;Z)V

    .line 2577
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$22;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment;->mFadingIn:Z
    invoke-static {v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$5902(Lcom/google/android/apps/books/app/ReaderFragment;Z)Z

    .line 2578
    return-void
.end method
