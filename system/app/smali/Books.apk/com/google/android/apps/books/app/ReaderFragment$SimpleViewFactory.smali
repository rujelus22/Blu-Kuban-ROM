.class Lcom/google/android/apps/books/app/ReaderFragment$SimpleViewFactory;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleViewFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;I)V
    .registers 5
    .parameter "parent"
    .parameter "id"

    .prologue
    .line 1011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$SimpleViewFactory;->mView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    .line 1014
    return-void
.end method


# virtual methods
.method public declared-synchronized get()Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    .registers 2

    .prologue
    .line 1017
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$SimpleViewFactory;->mView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment$SimpleViewFactory;->get()Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    move-result-object v0

    return-object v0
.end method
