.class public Lcom/google/android/apps/unveil/env/LIFOBlockingQueue;
.super Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;
.source "LIFOBlockingQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/apps/unveil/env/LinkedBlockingDeque",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    .local p0, this:Lcom/google/android/apps/unveil/env/LIFOBlockingQueue;,"Lcom/google/android/apps/unveil/env/LIFOBlockingQueue<TE;>;"
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;-><init>()V

    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, this:Lcom/google/android/apps/unveil/env/LIFOBlockingQueue;,"Lcom/google/android/apps/unveil/env/LIFOBlockingQueue<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-super {p0, p1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, this:Lcom/google/android/apps/unveil/env/LIFOBlockingQueue;,"Lcom/google/android/apps/unveil/env/LIFOBlockingQueue<TE;>;"
    invoke-super {p0}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
