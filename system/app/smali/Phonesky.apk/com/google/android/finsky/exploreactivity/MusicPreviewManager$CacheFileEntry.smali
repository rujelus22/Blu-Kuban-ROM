.class Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;
.super Ljava/lang/Object;
.source "MusicPreviewManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheFileEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDocId:Ljava/lang/String;

.field private final mFile:Ljava/io/File;

.field private mSize:J

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;J)V
    .registers 7
    .parameter "docId"
    .parameter "file"
    .parameter "size"

    .prologue
    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;->mTimestamp:J

    .line 492
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;->mDocId:Ljava/lang/String;

    .line 493
    iput-object p2, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;->mFile:Ljava/io/File;

    .line 494
    iput-wide p3, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;->mSize:J

    .line 495
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;->mDocId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 485
    iget-wide v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;->mSize:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 485
    iput-wide p1, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;->mSize:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;->mFile:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;)I
    .registers 6
    .parameter "arg0"

    .prologue
    .line 499
    iget-wide v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;->mTimestamp:J

    iget-wide v2, p1, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;->mTimestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    .line 500
    const/4 v0, 0x1

    .line 504
    :goto_9
    return v0

    .line 501
    :cond_a
    iget-wide v0, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;->mTimestamp:J

    iget-wide v2, p1, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;->mTimestamp:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    .line 502
    const/4 v0, -0x1

    goto :goto_9

    .line 504
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 485
    check-cast p1, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;->compareTo(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$CacheFileEntry;)I

    move-result v0

    return v0
.end method
