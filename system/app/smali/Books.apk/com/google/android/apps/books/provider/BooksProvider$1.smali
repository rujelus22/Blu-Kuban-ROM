.class final Lcom/google/android/apps/books/provider/BooksProvider$1;
.super Ljava/lang/Object;
.source "BooksProvider.java"

# interfaces
.implements Lcom/google/android/apps/books/util/pool/PoolableManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/BooksProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/books/util/pool/PoolableManager",
        "<",
        "Lcom/google/android/apps/books/util/SelectionBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance()Lcom/google/android/apps/books/util/SelectionBuilder;
    .registers 2

    .prologue
    .line 119
    new-instance v0, Lcom/google/android/apps/books/util/SelectionBuilder;

    invoke-direct {v0}, Lcom/google/android/apps/books/util/SelectionBuilder;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Lcom/google/android/apps/books/util/pool/Poolable;
    .registers 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/BooksProvider$1;->newInstance()Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public onAcquired(Lcom/google/android/apps/books/util/SelectionBuilder;)V
    .registers 2
    .parameter "element"

    .prologue
    .line 124
    return-void
.end method

.method public bridge synthetic onAcquired(Lcom/google/android/apps/books/util/pool/Poolable;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    check-cast p1, Lcom/google/android/apps/books/util/SelectionBuilder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/provider/BooksProvider$1;->onAcquired(Lcom/google/android/apps/books/util/SelectionBuilder;)V

    return-void
.end method

.method public onReleased(Lcom/google/android/apps/books/util/SelectionBuilder;)V
    .registers 2
    .parameter "element"

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/google/android/apps/books/util/SelectionBuilder;->reset()Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 128
    return-void
.end method

.method public bridge synthetic onReleased(Lcom/google/android/apps/books/util/pool/Poolable;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    check-cast p1, Lcom/google/android/apps/books/util/SelectionBuilder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/provider/BooksProvider$1;->onReleased(Lcom/google/android/apps/books/util/SelectionBuilder;)V

    return-void
.end method
