.class public Lcom/google/android/apps/books/util/ConcurrentMutable;
.super Ljava/lang/Object;
.source "ConcurrentMutable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, this:Lcom/google/android/apps/books/util/ConcurrentMutable;,"Lcom/google/android/apps/books/util/ConcurrentMutable<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/google/android/apps/books/util/ConcurrentMutable;->mValue:Ljava/lang/Object;

    .line 14
    return-void
.end method

.method public static make(Ljava/lang/Object;)Lcom/google/android/apps/books/util/ConcurrentMutable;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Lcom/google/android/apps/books/util/ConcurrentMutable",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, init:Ljava/lang/Object;,"TU;"
    new-instance v0, Lcom/google/android/apps/books/util/ConcurrentMutable;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/util/ConcurrentMutable;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, this:Lcom/google/android/apps/books/util/ConcurrentMutable;,"Lcom/google/android/apps/books/util/ConcurrentMutable<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/util/ConcurrentMutable;->mValue:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setValue(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, this:Lcom/google/android/apps/books/util/ConcurrentMutable;,"Lcom/google/android/apps/books/util/ConcurrentMutable<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/books/util/ConcurrentMutable;->mValue:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 17
    monitor-exit p0

    return-void

    .line 16
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
