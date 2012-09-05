.class Lcom/google/android/apps/books/app/ReaderFragment$19;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ReaderFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    .line 2232
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$19;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2234
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$19;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment;->mTtsActive:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$5402(Lcom/google/android/apps/books/app/ReaderFragment;Z)Z

    .line 2235
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$19;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment;->mTtsActiveSetByUser:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$5502(Lcom/google/android/apps/books/app/ReaderFragment;Z)Z

    .line 2236
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$19;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->maybeStartReadingBook()V
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$5600(Lcom/google/android/apps/books/app/ReaderFragment;)V

    .line 2237
    return-void
.end method
