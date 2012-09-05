.class final Lcom/google/android/youtube/core/utils/Util$2;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/utils/Util;->shrinkDirSize(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .registers 8
    .parameter "file1"
    .parameter "file2"

    .prologue
    .line 521
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 522
    .local v0, ts1:J
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 523
    .local v2, ts2:J
    cmp-long v4, v0, v2

    if-gez v4, :cond_e

    .line 524
    const/4 v4, -0x1

    .line 528
    :goto_d
    return v4

    .line 525
    :cond_e
    cmp-long v4, v0, v2

    if-lez v4, :cond_14

    .line 526
    const/4 v4, 0x1

    goto :goto_d

    .line 528
    :cond_14
    const/4 v4, 0x0

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 518
    check-cast p1, Ljava/io/File;

    .end local p1
    check-cast p2, Ljava/io/File;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/utils/Util$2;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
