.class Lcom/google/android/apps/books/app/ReaderFragment$MyScreenReaderTask;
.super Lcom/google/android/apps/books/util/AccessibilityUtils$ScreenReaderTask;
.source "ReaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScreenReaderTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method protected constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .registers 3
    .parameter

    .prologue
    .line 4426
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$MyScreenReaderTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    .line 4427
    invoke-virtual {p1}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/util/AccessibilityUtils$ScreenReaderTask;-><init>(Landroid/content/Context;)V

    .line 4428
    return-void
.end method


# virtual methods
.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 4
    .parameter "isActive"

    .prologue
    .line 4432
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$MyScreenReaderTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mTtsActiveSetByUser:Z
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$5500(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 4433
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$MyScreenReaderTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment;->mTtsActive:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$5402(Lcom/google/android/apps/books/app/ReaderFragment;Z)Z

    .line 4434
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$MyScreenReaderTask;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->maybeStartReadingBook()V
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$5600(Lcom/google/android/apps/books/app/ReaderFragment;)V

    .line 4436
    :cond_19
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 4424
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$MyScreenReaderTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
