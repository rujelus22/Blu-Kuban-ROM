.class public Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;
.super Ljava/lang/Object;
.source "ObjectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/tracking/ObjectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrameChange"
.end annotation


# static fields
.field public static final FEATURE_STEP:I = 0x7


# instance fields
.field private final maxScore:F

.field private final minScore:F

.field public final pointDeltas:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/apps/unveil/tracking/ObjectTracker;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/tracking/ObjectTracker;[F)V
    .registers 21
    .parameter
    .parameter "framePoints"

    .prologue
    .line 151
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;->this$0:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/high16 v13, 0x42c8

    .line 153
    .local v13, minScore:F
    const/high16 v12, -0x3d38

    .line 155
    .local v12, maxScore:F
    new-instance v16, Ljava/util/Vector;

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x7

    invoke-direct/range {v16 .. v17}, Ljava/util/Vector;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;->pointDeltas:Ljava/util/Vector;

    .line 156
    const/4 v14, 0x0

    .line 157
    .local v14, totalChangeX:F
    const/4 v15, 0x0

    .line 158
    .local v15, totalChangeY:F
    const/4 v11, 0x0

    .local v11, i:I
    :goto_22
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v11, v0, :cond_96

    .line 159
    add-int/lit8 v16, v11, 0x0

    aget v16, p2, v16

    #getter for: Lcom/google/android/apps/unveil/tracking/ObjectTracker;->downsampleFactor:F
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->access$000(Lcom/google/android/apps/unveil/tracking/ObjectTracker;)F

    move-result v17

    mul-float v3, v16, v17

    .line 160
    .local v3, x1:F
    add-int/lit8 v16, v11, 0x1

    aget v16, p2, v16

    #getter for: Lcom/google/android/apps/unveil/tracking/ObjectTracker;->downsampleFactor:F
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->access$000(Lcom/google/android/apps/unveil/tracking/ObjectTracker;)F

    move-result v17

    mul-float v4, v16, v17

    .line 162
    .local v4, y1:F
    add-int/lit8 v16, v11, 0x2

    aget v16, p2, v16

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-lez v16, :cond_94

    const/4 v9, 0x1

    .line 164
    .local v9, wasFound:Z
    :goto_4a
    add-int/lit8 v16, v11, 0x3

    aget v16, p2, v16

    #getter for: Lcom/google/android/apps/unveil/tracking/ObjectTracker;->downsampleFactor:F
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->access$000(Lcom/google/android/apps/unveil/tracking/ObjectTracker;)F

    move-result v17

    mul-float v5, v16, v17

    .line 165
    .local v5, x2:F
    add-int/lit8 v16, v11, 0x4

    aget v16, p2, v16

    #getter for: Lcom/google/android/apps/unveil/tracking/ObjectTracker;->downsampleFactor:F
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->access$000(Lcom/google/android/apps/unveil/tracking/ObjectTracker;)F

    move-result v17

    mul-float v6, v16, v17

    .line 166
    .local v6, y2:F
    add-int/lit8 v16, v11, 0x5

    aget v7, p2, v16

    .line 167
    .local v7, score:F
    add-int/lit8 v16, v11, 0x6

    aget v16, p2, v16

    move/from16 v0, v16

    float-to-int v8, v0

    .line 169
    .local v8, type:I
    invoke-static {v13, v7}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 170
    invoke-static {v12, v7}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 172
    new-instance v2, Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;

    invoke-direct/range {v2 .. v9}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;-><init>(FFFFFIZ)V

    .line 173
    .local v2, pointDelta:Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;
    invoke-virtual {v2}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;->getDelta()Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;

    move-result-object v10

    .line 175
    .local v10, change:Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;
    iget v0, v10, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;->x:F

    move/from16 v16, v0

    add-float v14, v14, v16

    .line 176
    iget v0, v10, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;->y:F

    move/from16 v16, v0

    add-float v15, v15, v16

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;->pointDeltas:Ljava/util/Vector;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v11, v11, 0x7

    goto :goto_22

    .line 162
    .end local v2           #pointDelta:Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;
    .end local v5           #x2:F
    .end local v6           #y2:F
    .end local v7           #score:F
    .end local v8           #type:I
    .end local v9           #wasFound:Z
    .end local v10           #change:Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;
    :cond_94
    const/4 v9, 0x0

    goto :goto_4a

    .line 181
    .end local v3           #x1:F
    .end local v4           #y1:F
    :cond_96
    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;->minScore:F

    .line 182
    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;->maxScore:F

    .line 183
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;->minScore:F

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$FrameChange;->maxScore:F

    return v0
.end method
