.class public Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
.super Ljava/lang/Object;
.source "TwExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionMetadata"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x5

.field private static sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public groupInsertIndex:I

.field public groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

.field public position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 955
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 986
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 987
    return-void
.end method

.method private static getRecycledOrCreate()Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .registers 4

    .prologue
    .line 1000
    sget-object v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1001
    :try_start_3
    sget-object v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_19

    .line 1002
    sget-object v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    .line 1006
    .local v0, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_20

    .line 1007
    invoke-direct {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->resetState()V

    .line 1008
    .end local v0           #pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    :goto_18
    return-object v0

    .line 1004
    :cond_19
    :try_start_19
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;-><init>()V

    monitor-exit v2

    goto :goto_18

    .line 1006
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_20

    throw v1
.end method

.method static obtain(IIIILcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .registers 8
    .parameter "flatListPos"
    .parameter "type"
    .parameter "groupPos"
    .parameter "childPos"
    .parameter "groupMetadata"
    .parameter "groupInsertIndex"

    .prologue
    .line 991
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->getRecycledOrCreate()Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 992
    .local v0, pm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    invoke-static {p1, p2, p3, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    .line 993
    iput-object p4, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    .line 994
    iput p5, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 995
    return-object v0
.end method

.method private resetState()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 978
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    .line 979
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    .line 980
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 981
    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .registers 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public recycle()V
    .registers 4

    .prologue
    .line 1012
    sget-object v1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1013
    :try_start_3
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_11

    .line 1014
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    :cond_11
    monitor-exit v1

    .line 1017
    return-void

    .line 1016
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method
