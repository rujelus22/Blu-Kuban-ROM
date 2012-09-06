.class Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;
.super Ljava/lang/Object;
.source "TrackingEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObjectTrack"
.end annotation


# instance fields
.field final endFrame:I

.field private final positions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field final startFrame:I

.field final synthetic this$0:Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;Ljava/lang/String;II)V
    .registers 25
    .parameter
    .parameter "gtFile"
    .parameter "startFrame"
    .parameter "endFrame"

    .prologue
    .line 400
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 401
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;->startFrame:I

    .line 403
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;->positions:Ljava/util/ArrayList;

    .line 406
    :try_start_18
    invoke-static/range {p2 .. p2}, Lcom/google/android/apps/unveil/env/ResourceUtils;->fromAssets(Ljava/lang/String;)Z

    move-result v6

    .line 407
    .local v6, fromAssets:Z
    invoke-static/range {p2 .. p2}, Lcom/google/android/apps/unveil/env/ResourceUtils;->getPathFromPrefixedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 409
    .local v9, location:Ljava/lang/String;
    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->access$000(Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;)Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Loading file from "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->resources:Landroid/content/res/Resources;
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->access$100(Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;)Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v6, v9}, Lcom/google/android/apps/unveil/env/ResourceUtils;->getInputStreamForFile(Landroid/content/res/Resources;ZLjava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 414
    .local v11, reader:Ljava/io/BufferedReader;
    move/from16 v4, p3

    .line 416
    .local v4, currFrame:I
    :goto_5a
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 417
    .local v8, line:Ljava/lang/String;
    if-nez v8, :cond_d3

    .line 437
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_63} :catch_12c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_63} :catch_158

    .line 444
    const/4 v15, -0x1

    move/from16 v0, p4

    if-eq v0, v15, :cond_176

    .line 445
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;->endFrame:I

    .line 446
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;->endFrame:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;->startFrame:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/lit8 v10, v15, 0x1

    .line 447
    .local v10, numExpectedPositions:I
    move/from16 v0, p3

    move/from16 v1, p4

    if-gt v0, v1, :cond_8c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;->positions:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-eq v10, v15, :cond_18c

    .line 448
    :cond_8c
    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->access$000(Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;)Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v15

    const-string v16, "Track %s invalid! start:%d end:%d, read %d positions when expecting %d."

    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p2, v17, v18

    const/16 v18, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;->positions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    new-instance v15, Ljava/lang/RuntimeException;

    const-string v16, "Invalid track!"

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 421
    .end local v10           #numExpectedPositions:I
    :cond_d3
    const/4 v3, 0x0

    .line 422
    .local v3, box:Landroid/graphics/RectF;
    :try_start_d4
    const-string v15, "NaN,NaN,NaN,NaN"

    invoke-virtual {v8, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_14f

    .line 423
    new-instance v13, Ljava/util/StringTokenizer;

    const-string v15, ", "

    invoke-direct {v13, v8, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .local v13, st:Ljava/util/StringTokenizer;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 425
    .local v7, left:F
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    .line 426
    .local v14, top:F
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    .line 427
    .local v12, right:F
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 429
    .local v2, bottom:F
    cmpg-float v15, v7, v12

    if-gtz v15, :cond_10b

    cmpg-float v15, v14, v2

    if-lez v15, :cond_14a

    .line 430
    :cond_10b
    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid rectangle! \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_12c
    .catch Ljava/io/FileNotFoundException; {:try_start_d4 .. :try_end_12c} :catch_12c
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_12c} :catch_158

    .line 438
    .end local v2           #bottom:F
    .end local v3           #box:Landroid/graphics/RectF;
    .end local v4           #currFrame:I
    .end local v6           #fromAssets:Z
    .end local v7           #left:F
    .end local v8           #line:Ljava/lang/String;
    .end local v9           #location:Ljava/lang/String;
    .end local v11           #reader:Ljava/io/BufferedReader;
    .end local v12           #right:F
    .end local v13           #st:Ljava/util/StringTokenizer;
    .end local v14           #top:F
    :catch_12c
    move-exception v5

    .line 439
    .local v5, e:Ljava/io/FileNotFoundException;
    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Couldn\'t find file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 433
    .end local v5           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #bottom:F
    .restart local v3       #box:Landroid/graphics/RectF;
    .restart local v4       #currFrame:I
    .restart local v6       #fromAssets:Z
    .restart local v7       #left:F
    .restart local v8       #line:Ljava/lang/String;
    .restart local v9       #location:Ljava/lang/String;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    .restart local v12       #right:F
    .restart local v13       #st:Ljava/util/StringTokenizer;
    .restart local v14       #top:F
    :cond_14a
    :try_start_14a
    new-instance v3, Landroid/graphics/RectF;

    .end local v3           #box:Landroid/graphics/RectF;
    invoke-direct {v3, v7, v14, v12, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 435
    .end local v2           #bottom:F
    .end local v7           #left:F
    .end local v12           #right:F
    .end local v13           #st:Ljava/util/StringTokenizer;
    .end local v14           #top:F
    .restart local v3       #box:Landroid/graphics/RectF;
    :cond_14f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;->positions:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_156
    .catch Ljava/io/FileNotFoundException; {:try_start_14a .. :try_end_156} :catch_12c
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_156} :catch_158

    goto/16 :goto_5a

    .line 440
    .end local v3           #box:Landroid/graphics/RectF;
    .end local v4           #currFrame:I
    .end local v6           #fromAssets:Z
    .end local v8           #line:Ljava/lang/String;
    .end local v9           #location:Ljava/lang/String;
    .end local v11           #reader:Ljava/io/BufferedReader;
    :catch_158
    move-exception v5

    .line 441
    .local v5, e:Ljava/io/IOException;
    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception reading "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 453
    .end local v5           #e:Ljava/io/IOException;
    .restart local v4       #currFrame:I
    .restart local v6       #fromAssets:Z
    .restart local v8       #line:Ljava/lang/String;
    .restart local v9       #location:Ljava/lang/String;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :cond_176
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;->positions:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;->startFrame:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;->endFrame:I

    .line 455
    :cond_18c
    return-void
.end method


# virtual methods
.method getPositionAtFrame(I)Landroid/graphics/RectF;
    .registers 4
    .parameter "frameNum"

    .prologue
    .line 458
    iget v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;->startFrame:I

    sub-int v0, p1, v1

    .line 459
    .local v0, index:I
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;->positions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    if-gez v0, :cond_10

    .line 460
    :cond_e
    const/4 v1, 0x0

    .line 462
    :goto_f
    return-object v1

    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$ObjectTrack;->positions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    goto :goto_f
.end method
