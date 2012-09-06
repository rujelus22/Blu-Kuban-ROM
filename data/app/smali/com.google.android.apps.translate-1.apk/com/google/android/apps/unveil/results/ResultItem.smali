.class public Lcom/google/android/apps/unveil/results/ResultItem;
.super Lcom/google/android/apps/unveil/results/ResultModel;
.source "ResultItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final LOCAL_BARCODE_RESULT_ID_PREFIX:Ljava/lang/String; = "local_barcode"

.field public static final UNKNOWN_SEQUENCE_NUMBER:I = -0x1

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger; = null

.field static final serialVersionUID:J = 0x1L


# instance fields
.field protected final annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

.field private final boundingBox:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

.field private transient boundingBoxRect:Landroid/graphics/Rect;

.field private final directUrl:Ljava/lang/String;

.field private final queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

.field private final resultPosition:I

.field private final subtitle:Ljava/lang/String;

.field private final subtype:Ljava/lang/String;

.field private final thumbnailUrl:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final ttsDescription:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field private final webSearchUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/results/ResultItem;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/goggles/ResultProtos$Result;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;I)V
    .registers 12
    .parameter "result"
    .parameter "queryType"
    .parameter "resultPosition"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/apps/unveil/results/ResultModel;-><init>()V

    .line 58
    sget-object v3, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->annotationResult:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1, v3}, Lcom/google/goggles/ResultProtos$Result;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    .line 60
    .local v0, annotationResult:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasBoundingBox()Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 61
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getBoundingBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->boundingBox:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 62
    iget-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->boundingBox:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-static {v3}, Lcom/google/android/apps/unveil/results/ResultItem;->toRect(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->boundingBoxRect:Landroid/graphics/Rect;

    .line 67
    :goto_1f
    const/4 v2, 0x0

    .line 68
    .local v2, thumbnailUrl:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasCanonicalImage()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 69
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getCanonicalImage()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v1

    .line 70
    .local v1, image:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    invoke-virtual {v1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->hasThumbnailUrl()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 71
    invoke-virtual {v1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    .line 75
    .end local v1           #image:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    :cond_34
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->title:Ljava/lang/String;

    .line 76
    sget-object v3, Lcom/google/android/apps/unveil/results/ResultItem;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Got result %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/apps/unveil/results/ResultItem;->title:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getSubtitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtitle:Ljava/lang/String;

    .line 78
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->type:Ljava/lang/String;

    .line 79
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getSubtype()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtype:Ljava/lang/String;

    .line 80
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getTtsDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9f

    const-string v3, "Banknote"

    iget-object v4, p0, Lcom/google/android/apps/unveil/results/ResultItem;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 84
    iget-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->title:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->ttsDescription:Ljava/lang/String;

    .line 88
    :goto_73
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getDirectUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->directUrl:Ljava/lang/String;

    .line 89
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getWebsearchUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->webSearchUrl:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Lcom/google/android/apps/unveil/results/ResultItem;->thumbnailUrl:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/google/android/apps/unveil/results/ResultItem;->queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    .line 92
    sget-object v3, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->annotationResult:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1, v3}, Lcom/google/goggles/ResultProtos$Result;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    iput-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    .line 93
    iput p3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->resultPosition:I

    .line 95
    iget-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    if-nez v3, :cond_a6

    .line 96
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No annotation result found."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    .end local v2           #thumbnailUrl:Ljava/lang/String;
    :cond_9b
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->boundingBox:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    goto :goto_1f

    .line 86
    .restart local v2       #thumbnailUrl:Ljava/lang/String;
    :cond_9f
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getTtsDescription()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->ttsDescription:Ljava/lang/String;

    goto :goto_73

    .line 98
    :cond_a6
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/goggles/BoundingBoxProtos$BoundingBox;Ljava/lang/String;Ljava/lang/String;Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;Ljava/lang/String;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;I)V
    .registers 15
    .parameter "title"
    .parameter "subtitle"
    .parameter "type"
    .parameter "subtype"
    .parameter "ttsDescription"
    .parameter "boundingBox"
    .parameter "directUrl"
    .parameter "webSearchUrl"
    .parameter "annotationResult"
    .parameter "thumbnailUrl"
    .parameter "queryType"
    .parameter "resultPosition"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/android/apps/unveil/results/ResultModel;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/google/android/apps/unveil/results/ResultItem;->title:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtitle:Ljava/lang/String;

    .line 121
    iput-object p3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->type:Ljava/lang/String;

    .line 122
    iput-object p4, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtype:Ljava/lang/String;

    .line 123
    iput-object p5, p0, Lcom/google/android/apps/unveil/results/ResultItem;->ttsDescription:Ljava/lang/String;

    .line 124
    iput-object p6, p0, Lcom/google/android/apps/unveil/results/ResultItem;->boundingBox:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 125
    iput-object p7, p0, Lcom/google/android/apps/unveil/results/ResultItem;->directUrl:Ljava/lang/String;

    .line 126
    iput-object p8, p0, Lcom/google/android/apps/unveil/results/ResultItem;->webSearchUrl:Ljava/lang/String;

    .line 127
    iput-object p10, p0, Lcom/google/android/apps/unveil/results/ResultItem;->thumbnailUrl:Ljava/lang/String;

    .line 128
    iput-object p9, p0, Lcom/google/android/apps/unveil/results/ResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    .line 129
    iput-object p11, p0, Lcom/google/android/apps/unveil/results/ResultItem;->queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    .line 130
    iput p12, p0, Lcom/google/android/apps/unveil/results/ResultItem;->resultPosition:I

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    if-nez v0, :cond_27

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No annotation result found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_27
    return-void
.end method

.method private static toRect(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Landroid/graphics/Rect;
    .registers 7
    .parameter "boundingBox"

    .prologue
    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getX()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getY()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getX()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getY()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 383
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/results/ResultItem;->getTtsDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 256
    if-ne p0, p1, :cond_5

    .line 318
    :cond_4
    :goto_4
    return v1

    .line 259
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 260
    goto :goto_4

    .line 262
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 263
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 265
    check-cast v0, Lcom/google/android/apps/unveil/results/ResultItem;

    .line 267
    .local v0, other:Lcom/google/android/apps/unveil/results/ResultItem;
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/results/ResultItem;->isAdvertisement()Z

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/results/ResultItem;->isAdvertisement()Z

    move-result v4

    if-eq v3, v4, :cond_24

    move v1, v2

    .line 268
    goto :goto_4

    .line 271
    :cond_24
    iget-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtitle:Ljava/lang/String;

    if-nez v3, :cond_2e

    .line 272
    iget-object v3, v0, Lcom/google/android/apps/unveil/results/ResultItem;->subtitle:Ljava/lang/String;

    if-eqz v3, :cond_3a

    move v1, v2

    .line 273
    goto :goto_4

    .line 275
    :cond_2e
    iget-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtitle:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/apps/unveil/results/ResultItem;->subtitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    move v1, v2

    .line 276
    goto :goto_4

    .line 279
    :cond_3a
    iget-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtype:Ljava/lang/String;

    if-nez v3, :cond_44

    .line 280
    iget-object v3, v0, Lcom/google/android/apps/unveil/results/ResultItem;->subtype:Ljava/lang/String;

    if-eqz v3, :cond_50

    move v1, v2

    .line 281
    goto :goto_4

    .line 283
    :cond_44
    iget-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtype:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/apps/unveil/results/ResultItem;->subtype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    move v1, v2

    .line 284
    goto :goto_4

    .line 287
    :cond_50
    iget-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->ttsDescription:Ljava/lang/String;

    if-nez v3, :cond_5a

    .line 288
    iget-object v3, v0, Lcom/google/android/apps/unveil/results/ResultItem;->ttsDescription:Ljava/lang/String;

    if-eqz v3, :cond_66

    move v1, v2

    .line 289
    goto :goto_4

    .line 291
    :cond_5a
    iget-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->ttsDescription:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/apps/unveil/results/ResultItem;->ttsDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    move v1, v2

    .line 292
    goto :goto_4

    .line 295
    :cond_66
    iget-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->thumbnailUrl:Ljava/lang/String;

    if-nez v3, :cond_70

    .line 296
    iget-object v3, v0, Lcom/google/android/apps/unveil/results/ResultItem;->thumbnailUrl:Ljava/lang/String;

    if-eqz v3, :cond_7c

    move v1, v2

    .line 297
    goto :goto_4

    .line 299
    :cond_70
    iget-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->thumbnailUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/apps/unveil/results/ResultItem;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7c

    move v1, v2

    .line 300
    goto :goto_4

    .line 303
    :cond_7c
    iget-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->title:Ljava/lang/String;

    if-nez v3, :cond_87

    .line 304
    iget-object v3, v0, Lcom/google/android/apps/unveil/results/ResultItem;->title:Ljava/lang/String;

    if-eqz v3, :cond_94

    move v1, v2

    .line 305
    goto/16 :goto_4

    .line 307
    :cond_87
    iget-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/apps/unveil/results/ResultItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_94

    move v1, v2

    .line 308
    goto/16 :goto_4

    .line 311
    :cond_94
    iget-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->type:Ljava/lang/String;

    if-nez v3, :cond_9f

    .line 312
    iget-object v3, v0, Lcom/google/android/apps/unveil/results/ResultItem;->type:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v1, v2

    .line 313
    goto/16 :goto_4

    .line 315
    :cond_9f
    iget-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/apps/unveil/results/ResultItem;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 316
    goto/16 :goto_4
.end method

.method public getAnnotationResult()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    return-object v0
.end method

.method public declared-synchronized getBoundingBox()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 207
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->boundingBoxRect:Landroid/graphics/Rect;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->boundingBox:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    if-eqz v0, :cond_11

    .line 208
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->boundingBox:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-static {v0}, Lcom/google/android/apps/unveil/results/ResultItem;->toRect(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->boundingBoxRect:Landroid/graphics/Rect;

    .line 210
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->boundingBoxRect:Landroid/graphics/Rect;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    .line 207
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDirectUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->directUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/results/ResultItem;->hasAnnotationResult()Z

    move-result v0

    if-nez v0, :cond_9

    .line 390
    const-string v0, ""

    .line 393
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/results/ResultItem;->getAnnotationResult()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getCanonicalImage()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public getKeyFromHashCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/results/ResultItem;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryType()Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->queryType:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    return-object v0
.end method

.method public getReferrerUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/results/ResultItem;->hasAnnotationResult()Z

    move-result v0

    if-nez v0, :cond_9

    .line 399
    const-string v0, ""

    .line 402
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/results/ResultItem;->getAnnotationResult()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getCanonicalImage()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getReferrerUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public getResultPosition()I
    .registers 2

    .prologue
    .line 183
    iget v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->resultPosition:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 195
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtitle:Ljava/lang/String;

    .line 197
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getSubtype()Ljava/lang/String;
    .registers 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtype:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 188
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtype:Ljava/lang/String;

    .line 190
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTtsDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/results/ResultItem;->hasRealTtsDescription()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 350
    iget-object v1, p0, Lcom/google/android/apps/unveil/results/ResultItem;->ttsDescription:Ljava/lang/String;

    .line 369
    :goto_8
    return-object v1

    .line 352
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/android/apps/unveil/results/ResultItem;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 354
    iget-object v1, p0, Lcom/google/android/apps/unveil/results/ResultItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_20
    iget-object v1, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtype:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 358
    iget-object v1, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_32
    iget-object v1, p0, Lcom/google/android/apps/unveil/results/ResultItem;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 362
    iget-object v1, p0, Lcom/google/android/apps/unveil/results/ResultItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_44
    iget-object v1, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 366
    iget-object v1, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getWebSearchUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->webSearchUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasAnnotationResult()Z
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasImageUrl()Z
    .registers 2

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/results/ResultItem;->hasAnnotationResult()Z

    move-result v0

    if-nez v0, :cond_8

    .line 408
    const/4 v0, 0x0

    .line 411
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/results/ResultItem;->getAnnotationResult()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getCanonicalImage()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->hasImageUrl()Z

    move-result v0

    goto :goto_7
.end method

.method public hasRealTtsDescription()Z
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->ttsDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hashCode()I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 237
    const/16 v0, 0x1f

    .line 238
    .local v0, prime:I
    const/4 v1, 0x1

    .line 239
    .local v1, result:I
    iget-object v2, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtitle:Ljava/lang/String;

    if-nez v2, :cond_4a

    move v2, v3

    :goto_9
    add-int/lit8 v1, v2, 0x1f

    .line 240
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtype:Ljava/lang/String;

    if-nez v2, :cond_51

    move v2, v3

    :goto_12
    add-int v1, v4, v2

    .line 241
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/apps/unveil/results/ResultItem;->thumbnailUrl:Ljava/lang/String;

    if-nez v2, :cond_58

    move v2, v3

    :goto_1b
    add-int v1, v4, v2

    .line 242
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/apps/unveil/results/ResultItem;->title:Ljava/lang/String;

    if-nez v2, :cond_5f

    move v2, v3

    :goto_24
    add-int v1, v4, v2

    .line 243
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/apps/unveil/results/ResultItem;->type:Ljava/lang/String;

    if-nez v2, :cond_66

    move v2, v3

    :goto_2d
    add-int v1, v4, v2

    .line 244
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/apps/unveil/results/ResultItem;->ttsDescription:Ljava/lang/String;

    if-nez v2, :cond_6d

    move v2, v3

    :goto_36
    add-int v1, v4, v2

    .line 245
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/apps/unveil/results/ResultItem;->directUrl:Ljava/lang/String;

    if-nez v2, :cond_74

    move v2, v3

    :goto_3f
    add-int v1, v4, v2

    .line 246
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/android/apps/unveil/results/ResultItem;->webSearchUrl:Ljava/lang/String;

    if-nez v4, :cond_7b

    :goto_47
    add-int v1, v2, v3

    .line 247
    return v1

    .line 239
    :cond_4a
    iget-object v2, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    .line 240
    :cond_51
    iget-object v2, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtype:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_12

    .line 241
    :cond_58
    iget-object v2, p0, Lcom/google/android/apps/unveil/results/ResultItem;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1b

    .line 242
    :cond_5f
    iget-object v2, p0, Lcom/google/android/apps/unveil/results/ResultItem;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_24

    .line 243
    :cond_66
    iget-object v2, p0, Lcom/google/android/apps/unveil/results/ResultItem;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2d

    .line 244
    :cond_6d
    iget-object v2, p0, Lcom/google/android/apps/unveil/results/ResultItem;->ttsDescription:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_36

    .line 245
    :cond_74
    iget-object v2, p0, Lcom/google/android/apps/unveil/results/ResultItem;->directUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3f

    .line 246
    :cond_7b
    iget-object v3, p0, Lcom/google/android/apps/unveil/results/ResultItem;->webSearchUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_47
.end method

.method public isAdvertisement()Z
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getIsAd()Z

    move-result v0

    return v0
.end method

.method public isPlace()Z
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasPlaceInfo()Z

    move-result v0

    return v0
.end method

.method public isProduct()Z
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasProductInfo()Z

    move-result v0

    return v0
.end method

.method public isUserGenerated()Z
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasContributionInfo()Z

    move-result v0

    return v0
.end method

.method public isWithdrawn()Z
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/apps/unveil/results/ResultItem;->annotation:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getIsWithdrawn()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "ResultItem [directUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v1, p0, Lcom/google/android/apps/unveil/results/ResultItem;->directUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v1, ", webSearchUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    iget-object v1, p0, Lcom/google/android/apps/unveil/results/ResultItem;->webSearchUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-object v1, p0, Lcom/google/android/apps/unveil/results/ResultItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v1, ", subtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object v1, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v1, p0, Lcom/google/android/apps/unveil/results/ResultItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v1, ", subtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget-object v1, p0, Lcom/google/android/apps/unveil/results/ResultItem;->subtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string v1, ", ttsDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    iget-object v1, p0, Lcom/google/android/apps/unveil/results/ResultItem;->ttsDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const-string v1, ", thumbnailUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget-object v1, p0, Lcom/google/android/apps/unveil/results/ResultItem;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
