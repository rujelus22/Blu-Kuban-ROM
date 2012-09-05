.class Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleSpecialViewWrapper"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 980
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;->mView:Landroid/view/View;

    .line 981
    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 977
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;->mView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 995
    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "reuseBitmap"

    .prologue
    .line 984
    invoke-static {p1}, Lcom/google/android/apps/books/util/ConcurrentMutable;->make(Ljava/lang/Object;)Lcom/google/android/apps/books/util/ConcurrentMutable;

    move-result-object v0

    .line 985
    .local v0, result:Lcom/google/android/apps/books/util/ConcurrentMutable;,"Lcom/google/android/apps/books/util/ConcurrentMutable<Landroid/graphics/Bitmap;>;"
    new-instance v1, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper$1;-><init>(Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;Lcom/google/android/apps/books/util/ConcurrentMutable;Landroid/graphics/Bitmap;)V

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->runOnUiThreadAndBlock(Ljava/lang/Runnable;)V
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2100(Ljava/lang/Runnable;)V

    .line 991
    invoke-virtual {v0}, Lcom/google/android/apps/books/util/ConcurrentMutable;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public getContentDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1000
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLastPage()Z
    .registers 2

    .prologue
    .line 1005
    const/4 v0, 0x0

    return v0
.end method
