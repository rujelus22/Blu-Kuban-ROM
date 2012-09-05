.class Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper$1;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;

.field final synthetic val$result:Lcom/google/android/apps/books/util/ConcurrentMutable;

.field final synthetic val$reuseBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;Lcom/google/android/apps/books/util/ConcurrentMutable;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 985
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper$1;->this$0:Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;

    iput-object p2, p0, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper$1;->val$result:Lcom/google/android/apps/books/util/ConcurrentMutable;

    iput-object p3, p0, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper$1;->val$reuseBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 988
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper$1;->val$result:Lcom/google/android/apps/books/util/ConcurrentMutable;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper$1;->this$0:Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;->access$1900(Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper$1;->val$reuseBitmap:Landroid/graphics/Bitmap;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->snapshotView(Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2000(Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/util/ConcurrentMutable;->setValue(Ljava/lang/Object;)V

    .line 989
    return-void
.end method
