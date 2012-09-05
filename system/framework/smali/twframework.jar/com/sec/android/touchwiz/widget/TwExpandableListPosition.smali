.class Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
.super Ljava/lang/Object;
.source "TwExpandableListPosition.java"


# static fields
.field public static final CHILD:I = 0x1

.field public static final GROUP:I = 0x2

.field private static final MAX_POOL_SIZE:I = 0x5

.field private static sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public childPos:I

.field flatListPos:I

.field public groupPos:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method private static getRecycledOrCreate()Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    .registers 4

    .prologue
    .line 117
    sget-object v2, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v2

    .line 118
    :try_start_3
    sget-object v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_19

    .line 119
    sget-object v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->sPool:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    .line 123
    .local v0, elp:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_20

    .line 124
    invoke-direct {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->resetState()V

    .line 125
    .end local v0           #elp:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    :goto_18
    return-object v0

    .line 121
    :cond_19
    :try_start_19
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;-><init>()V

    monitor-exit v2

    goto :goto_18

    .line 123
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_20

    throw v1
.end method

.method static obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    .registers 5
    .parameter "type"
    .parameter "groupPos"
    .parameter "childPos"
    .parameter "flatListPos"

    .prologue
    .line 107
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->getRecycledOrCreate()Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v0

    .line 108
    .local v0, elp:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    iput p0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    .line 109
    iput p1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    .line 110
    iput p2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    .line 111
    iput p3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    .line 112
    return-object v0
.end method

.method static obtainChildPosition(II)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 86
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v0

    return-object v0
.end method

.method static obtainGroupPosition(I)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    .registers 3
    .parameter "groupPosition"

    .prologue
    const/4 v1, 0x0

    .line 82
    const/4 v0, 0x2

    invoke-static {v0, p0, v1, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->obtain(IIII)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v0

    return-object v0
.end method

.method static obtainPosition(J)Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    .registers 6
    .parameter "packedPosition"

    .prologue
    const/4 v3, 0x1

    .line 90
    const-wide v1, 0xffffffffL

    cmp-long v1, p0, v1

    if-nez v1, :cond_c

    .line 91
    const/4 v0, 0x0

    .line 103
    :goto_b
    return-object v0

    .line 94
    :cond_c
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->getRecycledOrCreate()Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-result-object v0

    .line 95
    .local v0, elp:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;
    invoke-static {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    .line 96
    invoke-static {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionType(J)I

    move-result v1

    if-ne v1, v3, :cond_25

    .line 98
    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    .line 99
    invoke-static {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    goto :goto_b

    .line 101
    :cond_25
    const/4 v1, 0x2

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    goto :goto_b
.end method

.method private resetState()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    .line 68
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    .line 69
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    .line 70
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    .line 71
    return-void
.end method


# virtual methods
.method getPackedPosition()J
    .registers 3

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    .line 78
    :goto_d
    return-wide v0

    :cond_e
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    goto :goto_d
.end method

.method public recycle()V
    .registers 4

    .prologue
    .line 129
    sget-object v1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v1

    .line 130
    :try_start_3
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_11

    .line 131
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_11
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method
