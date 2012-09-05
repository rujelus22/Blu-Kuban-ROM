.class public Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileTimeComparatorDEC;
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
    name = "MXFileTimeComparatorDEC"
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
    .line 177
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .registers 8
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 179
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 180
    .local v0, modified1:J
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 185
    .local v2, modified2:J
    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    .line 186
    const/4 v4, 0x0

    .line 188
    :goto_d
    return v4

    :cond_e
    cmp-long v4, v0, v2

    if-lez v4, :cond_14

    const/4 v4, -0x1

    goto :goto_d

    :cond_14
    const/4 v4, 0x1

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    check-cast p1, Ljava/io/File;

    .end local p1
    check-cast p2, Ljava/io/File;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileTimeComparatorDEC;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
