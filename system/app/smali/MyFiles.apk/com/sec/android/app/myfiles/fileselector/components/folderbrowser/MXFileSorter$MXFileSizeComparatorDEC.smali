.class public Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileSizeComparatorDEC;
.super Ljava/lang/Object;
.source "MXFileSorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MXFileSizeComparatorDEC"
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
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 234
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .registers 10
    .parameter "object1"
    .parameter "object2"

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 236
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 249
    :cond_8
    :goto_8
    return v4

    .line 238
    :cond_9
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_11

    move v4, v5

    .line 239
    goto :goto_8

    .line 240
    :cond_11
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 241
    .local v0, length1:J
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 246
    .local v2, length2:J
    cmp-long v6, v0, v2

    if-nez v6, :cond_1f

    .line 247
    const/4 v4, 0x0

    goto :goto_8

    .line 249
    :cond_1f
    cmp-long v6, v0, v2

    if-ltz v6, :cond_8

    move v4, v5

    goto :goto_8
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 234
    check-cast p1, Ljava/io/File;

    .end local p1
    check-cast p2, Ljava/io/File;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileSizeComparatorDEC;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
