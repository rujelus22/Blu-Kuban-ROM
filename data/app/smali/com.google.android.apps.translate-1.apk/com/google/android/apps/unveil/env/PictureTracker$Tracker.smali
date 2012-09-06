.class final Lcom/google/android/apps/unveil/env/PictureTracker$Tracker;
.super Ljava/lang/ref/PhantomReference;
.source "PictureTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/PictureTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Tracker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference",
        "<",
        "Lcom/google/android/apps/unveil/env/Picture;",
        ">;"
    }
.end annotation


# instance fields
.field private final picture:Lcom/google/android/apps/unveil/env/Picture;

.field final synthetic this$0:Lcom/google/android/apps/unveil/env/PictureTracker;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/env/PictureTracker;Lcom/google/android/apps/unveil/env/Picture;Ljava/lang/ref/ReferenceQueue;Lcom/google/android/apps/unveil/env/Picture;)V
    .registers 5
    .parameter
    .parameter "wrapped"
    .parameter
    .parameter "underlying"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/env/Picture;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Lcom/google/android/apps/unveil/env/Picture;",
            ">;",
            "Lcom/google/android/apps/unveil/env/Picture;",
            ")V"
        }
    .end annotation

    .prologue
    .line 140
    .local p3, queue:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<-Lcom/google/android/apps/unveil/env/Picture;>;"
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/PictureTracker$Tracker;->this$0:Lcom/google/android/apps/unveil/env/PictureTracker;

    .line 141
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 142
    iput-object p4, p0, Lcom/google/android/apps/unveil/env/PictureTracker$Tracker;->picture:Lcom/google/android/apps/unveil/env/Picture;

    .line 143
    return-void
.end method


# virtual methods
.method public recycle()V
    .registers 7

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/PictureTracker$Tracker;->picture:Lcom/google/android/apps/unveil/env/Picture;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Picture;->recycle()V

    .line 147
    invoke-static {}, Lcom/google/android/apps/unveil/env/PictureTracker;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Recycled %s, total %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/unveil/env/PictureTracker$Tracker;->this$0:Lcom/google/android/apps/unveil/env/PictureTracker;

    iget-object v5, p0, Lcom/google/android/apps/unveil/env/PictureTracker$Tracker;->picture:Lcom/google/android/apps/unveil/env/Picture;

    #calls: Lcom/google/android/apps/unveil/env/PictureTracker;->getPictureInfo(Lcom/google/android/apps/unveil/env/Picture;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/google/android/apps/unveil/env/PictureTracker;->access$100(Lcom/google/android/apps/unveil/env/PictureTracker;Lcom/google/android/apps/unveil/env/Picture;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/apps/unveil/env/PictureTracker$Tracker;->this$0:Lcom/google/android/apps/unveil/env/PictureTracker;

    iget-object v4, v4, Lcom/google/android/apps/unveil/env/PictureTracker;->trackers:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    return-void
.end method
