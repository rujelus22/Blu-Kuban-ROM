.class public Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;
.super Ljava/lang/Object;
.source "MXFileSorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileSizeComparatorDEC;,
        Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileSizeComparatorASC;,
        Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileTimeComparatorDEC;,
        Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileExtComparatorDEC;,
        Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileExtComparatorASC;,
        Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileNameComparatorDEC;,
        Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileNameComparatorASC;
    }
.end annotation


# static fields
.field public static BY_NAME_ASC:I

.field public static BY_NAME_DEC:I

.field public static BY_SIZE_ASC:I

.field public static BY_SIZE_DEC:I

.field public static BY_TIME_ASC:I

.field public static BY_TIME_DEC:I

.field public static BY_TYPE_ASC:I

.field public static BY_TYPE_DEC:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_TIME_ASC:I

    .line 20
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_TYPE_ASC:I

    .line 22
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_NAME_ASC:I

    .line 24
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_SIZE_ASC:I

    .line 26
    const/4 v0, 0x4

    sput v0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_TIME_DEC:I

    .line 28
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_TYPE_DEC:I

    .line 30
    const/4 v0, 0x6

    sput v0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_NAME_DEC:I

    .line 32
    const/4 v0, 0x7

    sput v0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_SIZE_DEC:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 234
    return-void
.end method

.method public static sortByExtASC(Ljava/util/ArrayList;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :try_start_0
    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileExtComparatorASC;

    invoke-direct {v1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileExtComparatorASC;-><init>()V

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    .line 92
    :goto_8
    return-void

    .line 88
    :catch_9
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 90
    const-string v1, "[MyFiles]"

    const-string v2, "sortByExtASC IllegalArgumentException occured..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static sortByExtDEC(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileExtComparatorDEC;

    invoke-direct {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileExtComparatorDEC;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 119
    return-void
.end method

.method public static sortByNameASC(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileNameComparatorASC;

    invoke-direct {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileNameComparatorASC;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 40
    return-void
.end method

.method public static sortByNameDEC(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileNameComparatorDEC;

    invoke-direct {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileNameComparatorDEC;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 62
    return-void
.end method

.method public static sortBySizeASC(Ljava/util/ArrayList;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :try_start_0
    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileSizeComparatorASC;

    invoke-direct {v1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileSizeComparatorASC;-><init>()V

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    .line 201
    :goto_8
    return-void

    .line 197
    :catch_9
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 199
    const-string v1, "[MyFiles]"

    const-string v2, "sortBySizeASC IllegalArgumentException occured..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static sortBySizeDEC(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileSizeComparatorDEC;

    invoke-direct {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileSizeComparatorDEC;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 228
    return-void
.end method

.method public static sortByTimeASC(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileTimeComparatorDEC;

    invoke-direct {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileTimeComparatorDEC;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 147
    return-void
.end method

.method public static sortByTimeDEC(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileTimeComparatorDEC;

    invoke-direct {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter$MXFileTimeComparatorDEC;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 171
    return-void
.end method
