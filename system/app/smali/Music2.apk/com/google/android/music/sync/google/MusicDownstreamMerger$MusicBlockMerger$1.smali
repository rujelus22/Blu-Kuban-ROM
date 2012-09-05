.class Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger$1;
.super Ljava/lang/Object;
.source "MusicDownstreamMerger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->cleanupLocallyCachedFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;

.field final synthetic val$filesToDelete:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;[Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger$1;->this$0:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;

    iput-object p2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger$1;->val$filesToDelete:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger$1;->val$filesToDelete:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_4
    if-ge v3, v4, :cond_5c

    aget-object v5, v0, v3

    .line 463
    .local v5, path:Ljava/lang/String;
    :try_start_8
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 464
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_35

    .line 465
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger$1;->this$0:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;

    #getter for: Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->access$000(Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not cache file <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_35} :catch_38

    .line 461
    .end local v2           #file:Ljava/io/File;
    :cond_35
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 467
    :catch_38
    move-exception v1

    .line 468
    .local v1, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger$1;->this$0:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;

    #getter for: Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->mTag:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->access$000(Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while deleting cache file <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    .line 471
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #path:Ljava/lang/String;
    :cond_5c
    return-void
.end method
