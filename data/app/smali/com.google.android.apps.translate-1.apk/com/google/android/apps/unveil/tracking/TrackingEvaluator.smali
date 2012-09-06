.class public Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;
.super Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
.source "TrackingEvaluator.java"

# interfaces
.implements Lcom/google/android/apps/unveil/nonstop/DebugView$RenderCallback;
.implements Lcom/google/android/apps/unveil/ui/GlOverlay$RenderCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;,
        Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$EvaluationFinishedCallback;
    }
.end annotation


# static fields
.field private static final GT_FILE:Ljava/lang/String; = "gt.txt"

.field public static final MANIFEST_FILE:Ljava/lang/String; = "objects.txt"

.field private static final NULL_BOX:Ljava/lang/String; = "NaN,NaN,NaN,NaN"

.field private static final TRACK_TEMPLATE:Ljava/lang/String; = "track_%s.txt"


# instance fields
.field private final callback:Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$EvaluationFinishedCallback;

.field private final currentGroundTruthPositions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final currentTrackedObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;",
            ">;"
        }
    .end annotation
.end field

.field private final currentTrackedPositions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final groundTruthTracks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field private numFramesProcessed:I

.field private numTrackedPositionsProcessed:I

.field private objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

.field final paint:Landroid/graphics/Paint;

.field private final resources:Landroid/content/res/Resources;

.field private final sequenceDir:Ljava/lang/String;

.field final text:Lcom/google/android/apps/unveil/env/BorderedText;

.field private totalScore:F

.field private final trackingOutput:Ljava/io/BufferedWriter;

.field private visionGyro:Lcom/google/android/apps/unveil/tracking/VisionGyro;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$EvaluationFinishedCallback;)V
    .registers 8
    .parameter "resources"
    .parameter "basePath"
    .parameter "outputFile"
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;-><init>()V

    .line 45
    new-instance v1, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v1}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 75
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->totalScore:F

    .line 76
    iput v2, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->numTrackedPositionsProcessed:I

    .line 77
    iput v2, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->numFramesProcessed:I

    .line 86
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->paint:Landroid/graphics/Paint;

    .line 87
    new-instance v1, Lcom/google/android/apps/unveil/env/BorderedText;

    const/high16 v2, 0x4220

    invoke-direct {v1, v2}, Lcom/google/android/apps/unveil/env/BorderedText;-><init>(F)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->text:Lcom/google/android/apps/unveil/env/BorderedText;

    .line 97
    iput-object p1, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->resources:Landroid/content/res/Resources;

    .line 99
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, dirs:[Ljava/lang/String;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->sequenceDir:Ljava/lang/String;

    .line 102
    invoke-direct {p0, p2}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->loadAllGroundTruths(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->groundTruthTracks:Ljava/util/HashMap;

    .line 104
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->currentTrackedPositions:Ljava/util/HashMap;

    .line 105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->currentGroundTruthPositions:Ljava/util/HashMap;

    .line 106
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->currentTrackedObjects:Ljava/util/HashMap;

    .line 108
    if-eqz p3, :cond_57

    invoke-direct {p0, p3}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->getOutputWriter(Ljava/lang/String;)Ljava/io/BufferedWriter;

    move-result-object v1

    :goto_52
    iput-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->trackingOutput:Ljava/io/BufferedWriter;

    .line 110
    iput-object p4, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->callback:Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$EvaluationFinishedCallback;

    .line 111
    return-void

    .line 108
    :cond_57
    const/4 v1, 0x0

    goto :goto_52
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;)Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;)Landroid/content/res/Resources;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->resources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static getArea(Landroid/graphics/RectF;)F
    .registers 3
    .parameter "rect"

    .prologue
    .line 341
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private getOutputWriter(Ljava/lang/String;)Ljava/io/BufferedWriter;
    .registers 6
    .parameter "filename"

    .prologue
    .line 115
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 116
    :catch_b
    move-exception v0

    .line 117
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error opening output file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadAllGroundTruths(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 24
    .parameter "basePath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v8, groundTruths:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "objects.txt"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 127
    .local v12, manifestFile:Ljava/lang/String;
    :try_start_22
    invoke-static {v12}, Lcom/google/android/apps/unveil/env/ResourceUtils;->fromAssets(Ljava/lang/String;)Z

    move-result v7

    .line 128
    .local v7, fromAssets:Z
    invoke-static {v12}, Lcom/google/android/apps/unveil/env/ResourceUtils;->getPathFromPrefixedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 130
    .local v11, location:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Loading file from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->resources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v7, v11}, Lcom/google/android/apps/unveil/env/ResourceUtils;->getInputStreamForFile(Landroid/content/res/Resources;ZLjava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 135
    .local v14, reader:Ljava/io/BufferedReader;
    :cond_68
    :goto_68
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 136
    .local v10, line:Ljava/lang/String;
    if-nez v10, :cond_72

    .line 159
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 168
    .end local v7           #fromAssets:Z
    .end local v10           #line:Ljava/lang/String;
    .end local v11           #location:Ljava/lang/String;
    .end local v14           #reader:Ljava/io/BufferedReader;
    :goto_71
    return-object v8

    .line 140
    .restart local v7       #fromAssets:Z
    .restart local v10       #line:Ljava/lang/String;
    .restart local v11       #location:Ljava/lang/String;
    .restart local v14       #reader:Ljava/io/BufferedReader;
    :cond_72
    const-string v17, "object"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_68

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Object! \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 148
    .local v16, tokens:[Ljava/lang/String;
    new-instance v17, Ljava/util/StringTokenizer;

    const/16 v18, 0x1

    aget-object v18, v16, v18

    const-string v19, "."

    invoke-direct/range {v17 .. v19}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 150
    .local v13, objectName:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "track_%s.txt"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v13, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, filePath:Ljava/lang/String;
    const/16 v17, 0x2

    aget-object v17, v16, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 152
    .local v15, startFrame:I
    const/16 v17, 0x3

    aget-object v17, v16, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 154
    .local v5, endFrame:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-object/from16 v17, v0

    const-string v18, "object %s, Start frame: %d, End frame: %d"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v13, v19, v20

    const/16 v20, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    new-instance v17, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v15, v5}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;-><init>(Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;Ljava/lang/String;II)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_131
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_131} :catch_133
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_131} :catch_188

    goto/16 :goto_68

    .line 160
    .end local v5           #endFrame:I
    .end local v6           #filePath:Ljava/lang/String;
    .end local v7           #fromAssets:Z
    .end local v10           #line:Ljava/lang/String;
    .end local v11           #location:Ljava/lang/String;
    .end local v13           #objectName:Ljava/lang/String;
    .end local v14           #reader:Ljava/io/BufferedReader;
    .end local v15           #startFrame:I
    .end local v16           #tokens:[Ljava/lang/String;
    :catch_133
    move-exception v4

    .line 161
    .local v4, e:Ljava/io/FileNotFoundException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "gt.txt"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 162
    .local v9, gtPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-object/from16 v17, v0

    const-string v18, "Couldn\'t find file %s, trying to load %s instead."

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v12, v19, v20

    const/16 v20, 0x1

    aput-object v9, v19, v20

    invoke-virtual/range {v17 .. v19}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    const-string v17, "gt"

    new-instance v18, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;

    const/16 v19, 0x0

    const/16 v20, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;-><init>(Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;Ljava/lang/String;II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_71

    .line 164
    .end local v4           #e:Ljava/io/FileNotFoundException;
    .end local v9           #gtPath:Ljava/lang/String;
    :catch_188
    move-exception v4

    .line 165
    .local v4, e:Ljava/io/IOException;
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception reading "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17
.end method

.method static matchScore(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)F
    .registers 9
    .parameter "a"
    .parameter "b"
    .parameter "frameRect"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 361
    if-eqz p0, :cond_b

    invoke-static {p0, p2}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v5

    if-nez v5, :cond_1c

    :cond_b
    move v0, v4

    .line 362
    .local v0, aNotVisible:Z
    :goto_c
    if-eqz p1, :cond_14

    invoke-static {p1, p2}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v5

    if-nez v5, :cond_15

    :cond_14
    move v1, v4

    .line 363
    .local v1, bNotVisible:Z
    :cond_15
    if-eqz v0, :cond_1e

    if-eqz v1, :cond_1e

    .line 366
    const/high16 v3, 0x3f80

    .line 380
    :cond_1b
    :goto_1b
    return v3

    .end local v0           #aNotVisible:Z
    .end local v1           #bNotVisible:Z
    :cond_1c
    move v0, v1

    .line 361
    goto :goto_c

    .line 367
    .restart local v0       #aNotVisible:Z
    .restart local v1       #bNotVisible:Z
    :cond_1e
    if-nez v0, :cond_1b

    if-nez v1, :cond_1b

    .line 373
    invoke-virtual {p0, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 374
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 376
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 377
    .local v2, c:Landroid/graphics/RectF;
    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 380
    const/high16 v3, 0x4000

    invoke-static {v2}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->getArea(Landroid/graphics/RectF;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {p0}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->getArea(Landroid/graphics/RectF;)F

    move-result v4

    invoke-static {p1}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->getArea(Landroid/graphics/RectF;)F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v3, v4

    goto :goto_1b
.end method

.method private maybeInitObjectTracker(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 5
    .parameter "frame"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    if-nez v0, :cond_1d

    .line 173
    new-instance v0, Lcom/google/android/apps/unveil/tracking/VisionGyro;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/tracking/VisionGyro;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->visionGyro:Lcom/google/android/apps/unveil/tracking/VisionGyro;

    .line 174
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampleFactor()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->getInstance(III)Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    .line 177
    :cond_1d
    return-void
.end method

.method private maybeWritePosition(Landroid/graphics/RectF;)V
    .registers 10
    .parameter "position"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 260
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->trackingOutput:Ljava/io/BufferedWriter;

    if-nez v2, :cond_7

    .line 283
    :goto_6
    return-void

    .line 264
    :cond_7
    if-eqz p1, :cond_57

    const-string v2, "%.2f,%.2f,%.2f,%.2f\n"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    iget v5, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, positionString:Ljava/lang/String;
    :goto_34
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "position: %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    :try_start_3f
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->trackingOutput:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->trackingOutput:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_49} :catch_4a

    goto :goto_6

    .line 280
    :catch_4a
    move-exception v0

    .line 281
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Exception!"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 264
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #positionString:Ljava/lang/String;
    :cond_57
    const-string v1, "NaN,NaN,NaN,NaN"

    goto :goto_34
.end method

.method private processTrackForFrame(Ljava/lang/String;Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;[B)V
    .registers 15
    .parameter "objectKey"
    .parameter "track"
    .parameter "frame"

    .prologue
    .line 220
    iget v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->numFramesProcessed:I

    invoke-virtual {p2, v6}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;->getPositionAtFrame(I)Landroid/graphics/RectF;

    move-result-object v5

    .line 221
    .local v5, truePosition:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->currentGroundTruthPositions:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->numFramesProcessed:I

    iget v7, p2, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;->startFrame:I

    if-ne v6, v7, :cond_35

    .line 225
    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v7, "Track [%s] starting at %d: %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->numFramesProcessed:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    invoke-virtual {v6, v5, p3}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->trackObject(Landroid/graphics/RectF;[B)Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;

    move-result-object v2

    .line 227
    .local v2, object:Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;
    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->currentTrackedObjects:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .end local v2           #object:Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;
    :cond_35
    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->currentTrackedObjects:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;

    .line 232
    .local v4, trackedObject:Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;
    invoke-virtual {v4}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->getTrackedPositionInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v3

    .line 233
    .local v3, trackePosition:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->currentTrackedPositions:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->getPreviewFrameSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v1

    .line 236
    .local v1, frameSize:Lcom/google/android/apps/unveil/env/Size;
    new-instance v0, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, v1, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-float v8, v8

    iget v9, v1, Lcom/google/android/apps/unveil/env/Size;->height:I

    int-to-float v9, v9

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 238
    .local v0, frameRect:Landroid/graphics/RectF;
    iget v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->totalScore:F

    invoke-static {v5, v3, v0}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->matchScore(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->totalScore:F

    .line 240
    iget v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->numTrackedPositionsProcessed:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->numTrackedPositionsProcessed:I

    .line 243
    iget v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->numFramesProcessed:I

    iget v7, p2, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;->endFrame:I

    if-ne v6, v7, :cond_8d

    .line 244
    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v7, "Track [%s] ending at %d: %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->numFramesProcessed:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->currentTrackedObjects:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-virtual {v4}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->stopTracking()V

    .line 248
    :cond_8d
    return-void
.end method


# virtual methods
.method public declared-synchronized draw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    .line 295
    monitor-enter p0

    :try_start_1
    iget v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->numFramesProcessed:I

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_75

    if-nez v6, :cond_b

    .line 338
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 299
    :cond_b
    :try_start_b
    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 300
    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->paint:Landroid/graphics/Paint;

    const/high16 v7, 0x40c0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 302
    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->currentGroundTruthPositions:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 303
    .local v3, objectKey:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->currentGroundTruthPositions:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 304
    .local v1, groundTruthPosition:Landroid/graphics/RectF;
    if-eqz v1, :cond_51

    .line 305
    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->paint:Landroid/graphics/Paint;

    const/high16 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 307
    .local v5, temp:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->getFrameToCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 308
    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 311
    .end local v5           #temp:Landroid/graphics/RectF;
    :cond_51
    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->currentTrackedPositions:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    .line 312
    .local v4, objectPosition:Landroid/graphics/RectF;
    if-eqz v4, :cond_23

    .line 313
    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->paint:Landroid/graphics/Paint;

    const v7, -0xff0100

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 314
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 315
    .restart local v5       #temp:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->getFrameToCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 316
    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_74
    .catchall {:try_start_b .. :try_end_74} :catchall_75

    goto :goto_23

    .line 295
    .end local v1           #groundTruthPosition:Landroid/graphics/RectF;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #objectKey:Ljava/lang/String;
    .end local v4           #objectPosition:Landroid/graphics/RectF;
    .end local v5           #temp:Landroid/graphics/RectF;
    :catchall_75
    move-exception v6

    monitor-exit p0

    throw v6

    .line 320
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_78
    const/4 v0, 0x0

    .line 322
    .local v0, currY:F
    :try_start_79
    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->text:Lcom/google/android/apps/unveil/env/BorderedText;

    invoke-virtual {v6}, Lcom/google/android/apps/unveil/env/BorderedText;->getTextSize()F

    move-result v6

    add-float/2addr v0, v6

    .line 325
    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->text:Lcom/google/android/apps/unveil/env/BorderedText;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sequence: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->sequenceDir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, p1, v7, v0, v8}, Lcom/google/android/apps/unveil/env/BorderedText;->drawText(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    .line 327
    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->text:Lcom/google/android/apps/unveil/env/BorderedText;

    invoke-virtual {v6}, Lcom/google/android/apps/unveil/env/BorderedText;->getTextSize()F

    move-result v6

    add-float/2addr v0, v6

    .line 330
    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->text:Lcom/google/android/apps/unveil/env/BorderedText;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->getTimeStats()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, p1, v7, v0, v8}, Lcom/google/android/apps/unveil/env/BorderedText;->drawText(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    .line 332
    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->text:Lcom/google/android/apps/unveil/env/BorderedText;

    invoke-virtual {v6}, Lcom/google/android/apps/unveil/env/BorderedText;->getTextSize()F

    move-result v6

    add-float/2addr v0, v6

    .line 335
    iget-object v6, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->text:Lcom/google/android/apps/unveil/env/BorderedText;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Average score: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->getPerformance()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", frame: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->numFramesProcessed:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, p1, v7, v0, v8}, Lcom/google/android/apps/unveil/env/BorderedText;->drawText(Landroid/graphics/Canvas;FFLjava/lang/String;)V
    :try_end_dc
    .catchall {:try_start_79 .. :try_end_dc} :catchall_75

    goto/16 :goto_9
.end method

.method public drawOverlay(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5
    .parameter "gl"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    if-eqz v0, :cond_11

    .line 390
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->getViewSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->getRotation()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->drawOverlay(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/apps/unveil/env/Size;I)V

    .line 392
    :cond_11
    return-void
.end method

.method public getPerformance()F
    .registers 3

    .prologue
    .line 384
    iget v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->totalScore:F

    iget v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->numTrackedPositionsProcessed:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public declared-synchronized onDrawDebug(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 287
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    if-eqz v0, :cond_e

    .line 288
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->getFrameToCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->drawDebug(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 290
    :cond_e
    monitor-exit p0

    return-void

    .line 287
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onProcessFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 14
    .parameter "frame"

    .prologue
    .line 181
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->maybeInitObjectTracker(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V

    .line 182
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledImage()Lcom/google/android/apps/unveil/env/DownsampledImage;

    move-result-object v8

    .line 183
    .local v8, image:Lcom/google/android/apps/unveil/env/DownsampledImage;
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->visionGyro:Lcom/google/android/apps/unveil/tracking/VisionGyro;

    invoke-virtual {v8}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/unveil/tracking/VisionGyro;->nextFrame([BII)[F

    move-result-object v4

    .line 185
    .local v4, vgMatrix:[F
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    invoke-virtual {v8}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getTimestamp()J

    move-result-wide v2

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->nextFrame([BJ[FZ)V

    .line 187
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->currentGroundTruthPositions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 188
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->currentTrackedPositions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 189
    const/4 v9, 0x0

    .line 190
    .local v9, maxFrame:I
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->groundTruthTracks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 191
    .local v10, objectKey:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->groundTruthTracks:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;

    .line 193
    .local v11, track:Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;
    iget v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->numFramesProcessed:I

    iget v1, v11, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;->startFrame:I

    if-lt v0, v1, :cond_68

    iget v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->numFramesProcessed:I

    iget v1, v11, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;->endFrame:I

    if-gt v0, v1, :cond_68

    .line 195
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledImage()Lcom/google/android/apps/unveil/env/DownsampledImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v10, v11, v0}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->processTrackForFrame(Ljava/lang/String;Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;[B)V

    .line 198
    :cond_68
    iget v0, v11, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;->endFrame:I

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 199
    goto :goto_3d

    .line 202
    .end local v10           #objectKey:Ljava/lang/String;
    .end local v11           #track:Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;
    :cond_6f
    iget v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->numFramesProcessed:I

    if-lt v0, v9, :cond_89

    .line 203
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->trackingOutput:Ljava/io/BufferedWriter;
    :try_end_75
    .catchall {:try_start_1 .. :try_end_75} :catchall_9d

    if-eqz v0, :cond_7c

    .line 205
    :try_start_77
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->trackingOutput:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_9d
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7c} :catch_91

    .line 210
    :cond_7c
    :goto_7c
    :try_start_7c
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->release()V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    .line 212
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->callback:Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$EvaluationFinishedCallback;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$EvaluationFinishedCallback;->onEvaluationFinished()V

    .line 215
    :cond_89
    iget v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->numFramesProcessed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->numFramesProcessed:I
    :try_end_8f
    .catchall {:try_start_7c .. :try_end_8f} :catchall_9d

    .line 216
    monitor-exit p0

    return-void

    .line 206
    :catch_91
    move-exception v6

    .line 207
    .local v6, e:Ljava/io/IOException;
    :try_start_92
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Exception!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9c
    .catchall {:try_start_92 .. :try_end_9c} :catchall_9d

    goto :goto_7c

    .line 181
    .end local v4           #vgMatrix:[F
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #image:Lcom/google/android/apps/unveil/env/DownsampledImage;
    .end local v9           #maxFrame:I
    :catchall_9d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onShutdown()V
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    if-eqz v0, :cond_c

    .line 253
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->release()V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    .line 256
    :cond_c
    return-void
.end method
