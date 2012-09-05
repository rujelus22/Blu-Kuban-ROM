.class Lcom/google/android/apps/books/app/ReaderFragment$EndViewFactory;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndViewFactory"
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
.field private mSpecialView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewFactory;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/app/ReaderFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1214
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewFactory;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized get()Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    .registers 3

    .prologue
    .line 1218
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewFactory;->mSpecialView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    if-nez v0, :cond_e

    .line 1219
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewFactory;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewFactory;->mSpecialView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    .line 1221
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewFactory;->mSpecialView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    .line 1218
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1214
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewFactory;->get()Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    move-result-object v0

    return-object v0
.end method
