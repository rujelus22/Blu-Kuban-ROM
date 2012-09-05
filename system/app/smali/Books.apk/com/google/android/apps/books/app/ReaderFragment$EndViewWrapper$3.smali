.class Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$3;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

.field final synthetic val$result:Lcom/google/android/apps/books/util/ConcurrentMutable;

.field final synthetic val$reuseBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;Lcom/google/android/apps/books/util/ConcurrentMutable;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$3;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iput-object p2, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$3;->val$result:Lcom/google/android/apps/books/util/ConcurrentMutable;

    iput-object p3, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$3;->val$reuseBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$3;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$2500(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_f

    .line 1192
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$3;->val$result:Lcom/google/android/apps/books/util/ConcurrentMutable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/util/ConcurrentMutable;->setValue(Ljava/lang/Object;)V

    .line 1196
    :goto_e
    return-void

    .line 1194
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$3;->val$result:Lcom/google/android/apps/books/util/ConcurrentMutable;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$3;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndView:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$2500(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$3;->val$reuseBitmap:Landroid/graphics/Bitmap;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->snapshotView(Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2000(Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/util/ConcurrentMutable;->setValue(Ljava/lang/Object;)V

    goto :goto_e
.end method
