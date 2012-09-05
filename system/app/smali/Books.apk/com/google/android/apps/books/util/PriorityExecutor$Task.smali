.class Lcom/google/android/apps/books/util/PriorityExecutor$Task;
.super Ljava/util/concurrent/FutureTask;
.source "PriorityExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/PriorityExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final mPriority:I


# direct methods
.method static synthetic access$000(Lcom/google/android/apps/books/util/PriorityExecutor$Task;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/apps/books/util/PriorityExecutor$Task;->mPriority:I

    return v0
.end method
