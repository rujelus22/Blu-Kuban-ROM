.class final Lcom/google/android/apps/unveil/env/PictureTracker$Reaper;
.super Ljava/lang/Thread;
.source "PictureTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/PictureTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Reaper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/env/PictureTracker;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/env/PictureTracker;)V
    .registers 3
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/PictureTracker$Reaper;->this$0:Lcom/google/android/apps/unveil/env/PictureTracker;

    .line 107
    const-string v0, "Picture Reaper"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 108
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/env/PictureTracker$Reaper;->setPriority(I)V

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/env/PictureTracker$Reaper;->setDaemon(Z)V

    .line 110
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 118
    invoke-static {}, Lcom/google/android/apps/unveil/env/PictureTracker;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v2

    const-string v3, "Reaper started"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :cond_c
    :goto_c
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/PictureTracker$Reaper;->this$0:Lcom/google/android/apps/unveil/env/PictureTracker;

    iget-boolean v2, v2, Lcom/google/android/apps/unveil/env/PictureTracker;->exitWhenFinished:Z

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/PictureTracker$Reaper;->this$0:Lcom/google/android/apps/unveil/env/PictureTracker;

    iget-object v2, v2, Lcom/google/android/apps/unveil/env/PictureTracker;->trackers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_39

    .line 122
    :cond_1c
    const/4 v1, 0x0

    .line 124
    .local v1, tracker:Lcom/google/android/apps/unveil/env/PictureTracker$Tracker;
    :try_start_1d
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/PictureTracker$Reaper;->this$0:Lcom/google/android/apps/unveil/env/PictureTracker;

    iget-object v2, v2, Lcom/google/android/apps/unveil/env/PictureTracker;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    .end local v1           #tracker:Lcom/google/android/apps/unveil/env/PictureTracker$Tracker;
    check-cast v1, Lcom/google/android/apps/unveil/env/PictureTracker$Tracker;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_37

    .line 128
    .restart local v1       #tracker:Lcom/google/android/apps/unveil/env/PictureTracker$Tracker;
    if-eqz v1, :cond_c

    .line 129
    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/PictureTracker$Tracker;->recycle()V

    .line 130
    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/PictureTracker$Tracker;->clear()V

    .line 131
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/PictureTracker$Reaper;->this$0:Lcom/google/android/apps/unveil/env/PictureTracker;

    iget-object v2, v2, Lcom/google/android/apps/unveil/env/PictureTracker;->trackers:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    .line 125
    .end local v1           #tracker:Lcom/google/android/apps/unveil/env/PictureTracker$Tracker;
    :catch_37
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/Exception;
    goto :goto_c

    .line 134
    .end local v0           #e:Ljava/lang/Exception;
    :cond_39
    return-void
.end method
