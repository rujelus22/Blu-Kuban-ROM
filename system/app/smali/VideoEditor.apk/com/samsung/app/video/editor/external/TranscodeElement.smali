.class public Lcom/samsung/app/video/editor/external/TranscodeElement;
.super Ljava/lang/Object;
.source "TranscodeElement.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/app/video/editor/external/TranscodeElement$DrawingListComparator;,
        Lcom/samsung/app/video/editor/external/TranscodeElement$TextListComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/samsung/app/video/editor/external/TranscodeElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static mTextListComparator:Lcom/samsung/app/video/editor/external/TranscodeElement$TextListComparator; = null

.field private static final serialVersionUID:J = -0x2e064f59557babb6L


# instance fields
.field private TargetDispHeight:I

.field private TargetDispWidth:I

.field private additionalAudioDuration:J

.field private additionlAudioEleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/Element;",
            ">;"
        }
    .end annotation
.end field

.field private cloneForExport:Lcom/samsung/app/video/editor/external/TranscodeElement;

.field private transient effect:I

.field private elementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/Element;",
            ">;"
        }
    .end annotation
.end field

.field public exportedVideoPath:Ljava/lang/String;

.field private fullMovieDuration:I

.field private index:I

.field private isAPreview:Z

.field private lastModified:Ljava/lang/String;

.field private mThemeName:I

.field private transient projectBitmap:Landroid/graphics/Bitmap;

.field private projectCreationTime:J

.field private transient projectElmntPath:Ljava/lang/String;

.field private transient projectElmntTime:F

.field public projectFileName:Ljava/lang/String;

.field public projectName:Ljava/lang/String;

.field private resolutionEnumValue:I

.field private textEleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;"
        }
    .end annotation
.end field

.field private totalDuration:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TAG:Ljava/lang/String;

    .line 146
    new-instance v0, Lcom/samsung/app/video/editor/external/TranscodeElement$TextListComparator;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement$TextListComparator;-><init>()V

    sput-object v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mTextListComparator:Lcom/samsung/app/video/editor/external/TranscodeElement$TextListComparator;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectCreationTime:J

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->cloneForExport:Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/samsung/app/video/editor/external/TranscodeElement;)V
    .registers 6
    .parameter "tElement"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectCreationTime:J

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->cloneForExport:Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 87
    iget-boolean v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->isAPreview:Z

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->isAPreview:Z

    .line 88
    iget v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->fullMovieDuration:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->fullMovieDuration:I

    .line 89
    iget v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->resolutionEnumValue:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->resolutionEnumValue:I

    .line 91
    iget v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->mThemeName:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mThemeName:I

    .line 92
    iget-object v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->lastModified:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->lastModified:Ljava/lang/String;

    .line 93
    iget-object v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->exportedVideoPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->exportedVideoPath:Ljava/lang/String;

    .line 94
    iget-wide v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectCreationTime:J

    iput-wide v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectCreationTime:J

    .line 95
    iget-object v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectFileName:Ljava/lang/String;

    .line 96
    iget-object v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectName:Ljava/lang/String;

    .line 97
    iget v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->index:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->index:I

    .line 98
    iget-wide v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->totalDuration:J

    iput-wide v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->totalDuration:J

    .line 99
    iget-wide v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionalAudioDuration:J

    iput-wide v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionalAudioDuration:J

    .line 101
    iget v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->TargetDispWidth:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TargetDispWidth:I

    .line 102
    iget v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->TargetDispHeight:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TargetDispHeight:I

    .line 104
    const/4 v0, 0x0

    .local v0, i:I
    :goto_43
    iget-object v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    if-eqz v1, :cond_4f

    iget-object v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_6a

    .line 110
    :cond_4f
    const/4 v0, 0x0

    :goto_50
    iget-object v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    if-eqz v1, :cond_5c

    iget-object v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_8a

    .line 116
    :cond_5c
    const/4 v0, 0x0

    :goto_5d
    iget-object v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    if-eqz v1, :cond_69

    iget-object v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_aa

    .line 123
    :cond_69
    return-void

    .line 105
    :cond_6a
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    if-nez v1, :cond_75

    .line 106
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    .line 107
    :cond_75
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    new-instance v3, Lcom/samsung/app/video/editor/external/Element;

    iget-object v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Element;

    invoke-direct {v3, v1}, Lcom/samsung/app/video/editor/external/Element;-><init>(Lcom/samsung/app/video/editor/external/Element;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 111
    :cond_8a
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    if-nez v1, :cond_95

    .line 112
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    .line 113
    :cond_95
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    new-instance v3, Lcom/samsung/app/video/editor/external/Element;

    iget-object v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Element;

    invoke-direct {v3, v1}, Lcom/samsung/app/video/editor/external/Element;-><init>(Lcom/samsung/app/video/editor/external/Element;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 117
    :cond_aa
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    if-nez v1, :cond_b5

    .line 118
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    .line 119
    :cond_b5
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    new-instance v3, Lcom/samsung/app/video/editor/external/ClipartParams;

    iget-object v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-direct {v3, v1}, Lcom/samsung/app/video/editor/external/ClipartParams;-><init>(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d
.end method

.method private adjustTextList()V
    .registers 8

    .prologue
    .line 914
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    if-eqz v4, :cond_e

    .line 915
    const/4 v3, 0x0

    .line 916
    .local v3, preendTime:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_f

    .line 927
    .end local v2           #i:I
    .end local v3           #preendTime:F
    :cond_e
    return-void

    .line 917
    .restart local v2       #i:I
    .restart local v3       #preendTime:F
    :cond_f
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 918
    .local v0, clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_43

    if-lez v2, :cond_43

    .line 919
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v4

    sub-float v1, v3, v4

    .line 920
    .local v1, currentTimeDiffTime:F
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/ClipartParams;

    iget-object v5, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v5

    sub-float/2addr v5, v1

    invoke-virtual {v4, v5}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardEndTime(F)V

    .line 924
    .end local v1           #currentTimeDiffTime:F
    :cond_43
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v3

    .line 916
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method private adjustTextListWithRightEdge()V
    .registers 6

    .prologue
    .line 861
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    if-eqz v4, :cond_e

    .line 862
    const/4 v3, 0x0

    .line 863
    .local v3, preendTime:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_f

    .line 875
    .end local v2           #i:I
    .end local v3           #preendTime:F
    :cond_e
    return-void

    .line 864
    .restart local v2       #i:I
    .restart local v3       #preendTime:F
    :cond_f
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 865
    .local v0, clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2d

    .line 866
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v4

    sub-float v1, v3, v4

    .line 868
    .local v1, currentTimeDiffTime:F
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v4

    add-float/2addr v4, v1

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardStartTime(F)V

    .line 872
    .end local v1           #currentTimeDiffTime:F
    :cond_2d
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v3

    .line 863
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method private getElementTime(Lcom/samsung/app/video/editor/external/Element;)F
    .registers 6
    .parameter "element"

    .prologue
    .line 347
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v3

    sub-float v1, v2, v3

    .line 348
    .local v1, time:F
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v0

    .line 349
    .local v0, edit:Lcom/samsung/app/video/editor/external/Edit;
    if-eqz v0, :cond_16

    .line 350
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 351
    :cond_16
    return v1
.end method

.method private getStoryTimeTillElement(I)F
    .registers 8
    .parameter "position"

    .prologue
    .line 422
    const/4 v3, 0x0

    .line 423
    .local v3, time:F
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    if-eqz v4, :cond_8

    .line 424
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    if-lt v2, p1, :cond_9

    .line 433
    .end local v2           #i:I
    :cond_8
    return v3

    .line 425
    .restart local v2       #i:I
    :cond_9
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Element;

    .line 426
    .local v1, element:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v5

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 427
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v0

    .line 428
    .local v0, edit:Lcom/samsung/app/video/editor/external/Edit;
    if-eqz v0, :cond_27

    .line 429
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 424
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method private getStoryTimeTillElement(Lcom/samsung/app/video/editor/external/Element;)F
    .registers 8
    .parameter "telement"

    .prologue
    .line 437
    const/4 v3, 0x0

    .line 438
    .local v3, time:F
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    if-eqz v4, :cond_e

    .line 439
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_f

    .line 450
    .end local v2           #i:I
    :cond_e
    return v3

    .line 440
    .restart local v2       #i:I
    :cond_f
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Element;

    .line 441
    .local v1, element:Lcom/samsung/app/video/editor/external/Element;
    if-eq v1, p1, :cond_e

    .line 443
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v5

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 444
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v0

    .line 445
    .local v0, edit:Lcom/samsung/app/video/editor/external/Edit;
    if-eqz v0, :cond_2f

    .line 446
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 439
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method private updateCaptionsWhileAdding(ILcom/samsung/app/video/editor/external/Element;)V
    .registers 11
    .parameter "elementPos"
    .parameter "element"

    .prologue
    .line 320
    iget-object v6, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    if-eqz v6, :cond_1a

    .line 321
    invoke-direct {p0, p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getStoryTimeTillElement(I)F

    move-result v5

    .line 322
    .local v5, time:F
    iget-object v6, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 323
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    iget-object v6, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_1b

    .line 341
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->updateTextEleList()V

    .line 344
    .end local v2           #i:I
    .end local v4           #size:I
    .end local v5           #time:F
    :cond_1a
    return-void

    .line 324
    .restart local v2       #i:I
    .restart local v4       #size:I
    .restart local v5       #time:F
    :cond_1b
    iget-object v6, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 326
    .local v0, clipart:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_51

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_51

    .line 327
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v3

    .line 328
    .local v3, preclipEndTime:F
    invoke-virtual {v0, v5}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardEndTime(F)V

    .line 330
    new-instance v1, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-direct {v1, v0}, Lcom/samsung/app/video/editor/external/ClipartParams;-><init>(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 331
    .local v1, clipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    const v6, 0x3dcccccd

    add-float/2addr v6, v5

    invoke-virtual {v1, v6}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardStartTime(F)V

    .line 332
    invoke-virtual {v1, v3}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardEndTime(F)V

    .line 334
    iget-object v6, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    .end local v1           #clipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    .end local v3           #preclipEndTime:F
    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 335
    :cond_51
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v6

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_4e

    .line 336
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v6

    invoke-direct {p0, p2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementTime(Lcom/samsung/app/video/editor/external/Element;)F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardStartTime(F)V

    .line 337
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v6

    invoke-direct {p0, p2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementTime(Lcom/samsung/app/video/editor/external/Element;)F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardEndTime(F)V

    goto :goto_4e
.end method

.method private updateCaptionsWhileRemoving(Lcom/samsung/app/video/editor/external/Element;F)Ljava/util/List;
    .registers 13
    .parameter "element"
    .parameter "time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/external/Element;",
            "F)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 356
    iget-object v7, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    if-eqz v7, :cond_10d

    .line 357
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    iget-object v7, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 360
    .local v6, size:I
    add-int/lit8 v2, v6, -0x1

    .local v2, i:I
    :goto_12
    if-gez v2, :cond_18

    .line 414
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->updateTextEleList()V

    .line 417
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .end local v6           #size:I
    :goto_17
    return-object v3

    .line 361
    .restart local v2       #i:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .restart local v6       #size:I
    :cond_18
    iget-object v7, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 363
    .local v0, clipart:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v7

    cmpl-float v7, p2, v7

    if-lez v7, :cond_5a

    invoke-direct {p0, p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementTime(Lcom/samsung/app/video/editor/external/Element;)F

    move-result v7

    add-float/2addr v7, p2

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_5a

    .line 364
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v4

    .line 365
    .local v4, preclipEndTime:F
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v7

    invoke-direct {p0, p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementTime(Lcom/samsung/app/video/editor/external/Element;)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v0, v7}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardEndTime(F)V

    .line 367
    new-instance v1, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-direct {v1, v0}, Lcom/samsung/app/video/editor/external/ClipartParams;-><init>(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 368
    .local v1, clipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-virtual {v1, v9}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardStartTime(F)V

    .line 369
    invoke-direct {p0, p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementTime(Lcom/samsung/app/video/editor/external/Element;)F

    move-result v7

    invoke-virtual {v1, v7}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardEndTime(F)V

    .line 370
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .end local v1           #clipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    .end local v4           #preclipEndTime:F
    :cond_57
    :goto_57
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    .line 373
    :cond_5a
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v7

    cmpg-float v7, p2, v7

    if-gtz v7, :cond_88

    invoke-direct {p0, p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementTime(Lcom/samsung/app/video/editor/external/Element;)F

    move-result v7

    add-float/2addr v7, p2

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_88

    .line 375
    iget-object v7, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 377
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v7

    sub-float/2addr v7, p2

    invoke-virtual {v0, v7}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardStartTime(F)V

    .line 378
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v7

    sub-float/2addr v7, p2

    invoke-virtual {v0, v7}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardEndTime(F)V

    .line 379
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 381
    :cond_88
    invoke-direct {p0, p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementTime(Lcom/samsung/app/video/editor/external/Element;)F

    move-result v7

    add-float/2addr v7, p2

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_bb

    invoke-direct {p0, p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementTime(Lcom/samsung/app/video/editor/external/Element;)F

    move-result v7

    add-float/2addr v7, p2

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_bb

    .line 383
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v7

    invoke-direct {p0, p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementTime(Lcom/samsung/app/video/editor/external/Element;)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v0, v7}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardStartTime(F)V

    .line 384
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v7

    invoke-direct {p0, p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementTime(Lcom/samsung/app/video/editor/external/Element;)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v0, v7}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardEndTime(F)V

    goto :goto_57

    .line 385
    :cond_bb
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v7

    cmpg-float v7, p2, v7

    if-gtz v7, :cond_ec

    .line 387
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v5

    .line 389
    .local v5, preclipStartTime:F
    invoke-virtual {v0, p2}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardStartTime(F)V

    .line 390
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v7

    invoke-direct {p0, p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementTime(Lcom/samsung/app/video/editor/external/Element;)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v0, v7}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardEndTime(F)V

    .line 393
    new-instance v1, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-direct {v1, v0}, Lcom/samsung/app/video/editor/external/ClipartParams;-><init>(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 394
    .restart local v1       #clipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    sub-float v7, v5, p2

    invoke-virtual {v1, v7}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardStartTime(F)V

    .line 395
    invoke-direct {p0, p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementTime(Lcom/samsung/app/video/editor/external/Element;)F

    move-result v7

    invoke-virtual {v1, v7}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardEndTime(F)V

    .line 396
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_57

    .line 400
    .end local v1           #clipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    .end local v5           #preclipStartTime:F
    :cond_ec
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v7

    cmpg-float v7, p2, v7

    if-gez v7, :cond_57

    .line 402
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v4

    .line 404
    .restart local v4       #preclipEndTime:F
    invoke-virtual {v0, p2}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardEndTime(F)V

    .line 407
    new-instance v1, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-direct {v1, v0}, Lcom/samsung/app/video/editor/external/ClipartParams;-><init>(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 408
    .restart local v1       #clipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-virtual {v1, v9}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardStartTime(F)V

    .line 409
    sub-float v7, v4, p2

    invoke-virtual {v1, v7}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardEndTime(F)V

    .line 410
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_57

    .line 417
    .end local v0           #clipart:Lcom/samsung/app/video/editor/external/ClipartParams;
    .end local v1           #clipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    .end local v2           #i:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .end local v4           #preclipEndTime:F
    .end local v6           #size:I
    :cond_10d
    const/4 v3, 0x0

    goto/16 :goto_17
.end method

.method public static declared-synchronized updateMusicTime()V
    .registers 1

    .prologue
    .line 603
    const-class v0, Lcom/samsung/app/video/editor/external/TranscodeElement;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method


# virtual methods
.method public addAdditionlAudioEleList(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 3
    .parameter "element"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    if-nez v0, :cond_10

    .line 514
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    .line 515
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_10
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    if-eqz v0, :cond_1e

    .line 518
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 519
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_1e
    return-void
.end method

.method public addElement(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 3
    .parameter "element"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 298
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    .line 300
    :cond_b
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 302
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->applyThemeToTransCodeElem(Lcom/samsung/app/video/editor/external/TranscodeElement;Z)V

    .line 317
    :cond_1c
    return-void
.end method

.method public addTextEleList(Lcom/samsung/app/video/editor/external/ClipartParams;)V
    .registers 4
    .parameter "clipParams"

    .prologue
    .line 849
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    if-nez v0, :cond_1b

    .line 850
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    .line 851
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    :goto_10
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    sget-object v1, Lcom/samsung/app/video/editor/external/TranscodeElement;->mTextListComparator:Lcom/samsung/app/video/editor/external/TranscodeElement$TextListComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 857
    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->adjustTextList()V

    .line 858
    return-void

    .line 853
    :cond_1b
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10
.end method

.method public compareTo(Lcom/samsung/app/video/editor/external/TranscodeElement;)I
    .registers 3
    .parameter "another"

    .prologue
    .line 710
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {p0, p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->compareTo(Lcom/samsung/app/video/editor/external/TranscodeElement;)I

    move-result v0

    return v0
.end method

.method public deleteAllClipArts()V
    .registers 4

    .prologue
    .line 930
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v2

    if-lt v1, v2, :cond_f

    .line 935
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTextEleListCount()I

    move-result v2

    if-lt v1, v2, :cond_1d

    .line 938
    return-void

    .line 931
    :cond_f
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Element;

    .line 932
    .local v0, element:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->deleteAllClipArts()V

    .line 930
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 936
    .end local v0           #element:Lcom/samsung/app/video/editor/external/Element;
    :cond_1d
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->remove()V

    .line 935
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method public getAdditionlAudioEleList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    return-object v0
.end method

.method public getAudioListCount()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 501
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    if-eqz v1, :cond_c

    .line 502
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 505
    :cond_b
    :goto_b
    return v0

    .line 503
    :cond_c
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    if-nez v1, :cond_b

    goto :goto_b
.end method

.method public getElementAt(F)Lcom/samsung/app/video/editor/external/Element;
    .registers 8
    .parameter "storyBoardTime"

    .prologue
    .line 454
    const/4 v3, 0x0

    .line 455
    .local v3, time:F
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    if-eqz v4, :cond_e

    .line 456
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_10

    .line 466
    .end local v2           #i:I
    :cond_e
    const/4 v1, 0x0

    :cond_f
    return-object v1

    .line 457
    .restart local v2       #i:I
    :cond_10
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Element;

    .line 458
    .local v1, element:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v5

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 459
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v0

    .line 460
    .local v0, edit:Lcom/samsung/app/video/editor/external/Edit;
    if-eqz v0, :cond_2e

    .line 461
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 462
    :cond_2e
    cmpl-float v4, v3, p1

    if-gez v4, :cond_f

    .line 456
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method public getElementCount()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 233
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    if-eqz v1, :cond_c

    .line 234
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 237
    :cond_b
    :goto_b
    return v0

    .line 235
    :cond_c
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    if-nez v1, :cond_b

    goto :goto_b
.end method

.method public getElementList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 196
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    .line 197
    :cond_b
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    return-object v0
.end method

.method public getExportedVideoPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->exportedVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFullMovieDuration()I
    .registers 2

    .prologue
    .line 553
    iget v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->fullMovieDuration:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 845
    iget v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->index:I

    return v0
.end method

.method public getMyPosition(Lcom/samsung/app/video/editor/external/Element;)I
    .registers 4
    .parameter "element"

    .prologue
    .line 268
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_b

    .line 273
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_a
    return v0

    .line 269
    .restart local v0       #i:I
    :cond_b
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_a

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getProjCreationTime()J
    .registers 3

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectCreationTime:J

    return-wide v0
.end method

.method public getProjectBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 784
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getProjectBitmapEffect()I
    .registers 2

    .prologue
    .line 792
    iget v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->effect:I

    return v0
.end method

.method public getProjectElmntPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectElmntPath:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectElmntTime()F
    .registers 2

    .prologue
    .line 776
    iget v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectElmntTime:F

    return v0
.end method

.method public getProjectFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectModifiedDate()Ljava/util/Date;
    .registers 7

    .prologue
    .line 812
    const/4 v0, 0x0

    .line 813
    .local v0, date:Ljava/util/Date;
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectFileName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 815
    .local v2, file:Ljava/io/File;
    :try_start_a
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 816
    .local v3, value:J
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_15

    .end local v0           #date:Ljava/util/Date;
    .local v1, date:Ljava/util/Date;
    move-object v0, v1

    .line 837
    .end local v1           #date:Ljava/util/Date;
    .end local v3           #value:J
    .restart local v0       #date:Ljava/util/Date;
    :goto_14
    return-object v0

    .line 834
    :catch_15
    move-exception v5

    goto :goto_14
.end method

.method public getResolutionEnumValue()I
    .registers 2

    .prologue
    .line 154
    iget v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->resolutionEnumValue:I

    return v0
.end method

.method public getTargetDispHeight()I
    .registers 2

    .prologue
    .line 143
    iget v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TargetDispHeight:I

    return v0
.end method

.method public getTargetDispWidth()I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TargetDispWidth:I

    return v0
.end method

.method public getTextEleList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 878
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    return-object v0
.end method

.method public getTextEleListCount()I
    .registers 2

    .prologue
    .line 882
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 883
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 885
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getThemeName()I
    .registers 2

    .prologue
    .line 764
    iget v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mThemeName:I

    return v0
.end method

.method public getTotalDuration()J
    .registers 11

    .prologue
    const/high16 v9, 0x447a

    .line 610
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->totalDuration:J

    .line 611
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    if-eqz v4, :cond_13

    .line 612
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_19

    .line 646
    .end local v2           #i:I
    :cond_13
    iget-wide v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->totalDuration:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    return-wide v4

    .line 615
    .restart local v2       #i:I
    :cond_19
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Element;

    .line 617
    .local v1, element:Lcom/samsung/app/video/editor/external/Element;
    iget-wide v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->totalDuration:J

    long-to-float v4, v4

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v5

    mul-float/2addr v5, v9

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v6

    mul-float/2addr v6, v9

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-long v4, v4

    iput-wide v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->totalDuration:J

    .line 618
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4e

    .line 619
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_4e

    .line 620
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v0

    .line 621
    .local v0, editList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Edit;>;"
    const/4 v3, 0x0

    .local v3, j:I
    :goto_48
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_51

    .line 612
    .end local v0           #editList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Edit;>;"
    .end local v3           #j:I
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 622
    .restart local v0       #editList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Edit;>;"
    .restart local v3       #j:I
    :cond_51
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Edit;->getType()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_7d

    .line 623
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v4

    if-eqz v4, :cond_7d

    .line 625
    iget-wide v5, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->totalDuration:J

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v7, v4

    add-long v4, v5, v7

    iput-wide v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->totalDuration:J

    .line 621
    :cond_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_48
.end method

.method public getTotalDurationInFloat()F
    .registers 11

    .prologue
    const/high16 v9, 0x447a

    .line 655
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->totalDuration:J

    .line 656
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    if-eqz v4, :cond_13

    .line 657
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_18

    .line 691
    .end local v2           #i:I
    :cond_13
    iget-wide v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->totalDuration:J

    long-to-float v4, v4

    div-float/2addr v4, v9

    return v4

    .line 660
    .restart local v2       #i:I
    :cond_18
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Element;

    .line 662
    .local v1, element:Lcom/samsung/app/video/editor/external/Element;
    iget-wide v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->totalDuration:J

    long-to-float v4, v4

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v5

    mul-float/2addr v5, v9

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v6

    mul-float/2addr v6, v9

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-long v4, v4

    iput-wide v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->totalDuration:J

    .line 663
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4d

    .line 664
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_4d

    .line 665
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v0

    .line 666
    .local v0, editList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Edit;>;"
    const/4 v3, 0x0

    .local v3, j:I
    :goto_47
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_50

    .line 657
    .end local v0           #editList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Edit;>;"
    .end local v3           #j:I
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 667
    .restart local v0       #editList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Edit;>;"
    .restart local v3       #j:I
    :cond_50
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Edit;->getType()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_7c

    .line 668
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v4

    if-eqz v4, :cond_7c

    .line 670
    iget-wide v5, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->totalDuration:J

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v7, v4

    add-long v4, v5, v7

    iput-wide v4, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->totalDuration:J

    .line 666
    :cond_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_47
.end method

.method public insertElement(Lcom/samsung/app/video/editor/external/Element;I)V
    .registers 4
    .parameter "element"
    .parameter "position"

    .prologue
    .line 256
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->insertElement(Lcom/samsung/app/video/editor/external/Element;IZ)V

    .line 257
    return-void
.end method

.method public insertElement(Lcom/samsung/app/video/editor/external/Element;IZ)V
    .registers 5
    .parameter "element"
    .parameter "position"
    .parameter "updateCaption"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 243
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    .line 244
    :cond_b
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 245
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 246
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->applyThemeToTransCodeElem(Lcom/samsung/app/video/editor/external/TranscodeElement;Z)V

    .line 247
    if-eqz p3, :cond_21

    .line 248
    invoke-direct {p0, p2, p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->updateCaptionsWhileAdding(ILcom/samsung/app/video/editor/external/Element;)V

    .line 252
    :cond_21
    return-void
.end method

.method public isAPreview()Z
    .registers 2

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->isAPreview:Z

    return v0
.end method

.method public isVideoFilePresentInStory()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 800
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    if-eqz v1, :cond_e

    .line 801
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    .line 807
    .end local v0           #i:I
    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1

    .line 802
    .restart local v0       #i:I
    :cond_10
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getType()I

    move-result v1

    if-ne v1, v2, :cond_20

    move v1, v2

    .line 803
    goto :goto_f

    .line 801
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public removeAdditionlAudioEleList(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 3
    .parameter "element"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 525
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 527
    :cond_9
    return-void
.end method

.method public removeBGMMusic()V
    .registers 2

    .prologue
    .line 531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    .line 532
    return-void
.end method

.method public removeElement(Lcom/samsung/app/video/editor/external/Element;)Ljava/util/List;
    .registers 3
    .parameter "element"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/external/Element;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->removeElement(Lcom/samsung/app/video/editor/external/Element;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeElement(Lcom/samsung/app/video/editor/external/Element;Z)Ljava/util/List;
    .registers 6
    .parameter "element"
    .parameter "updateCaption"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/external/Element;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    if-eqz v2, :cond_19

    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    invoke-direct {p0, p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getStoryTimeTillElement(Lcom/samsung/app/video/editor/external/Element;)F

    move-result v1

    .line 473
    .local v1, time:F
    if-eqz p2, :cond_f

    .line 474
    invoke-direct {p0, p1, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->updateCaptionsWhileRemoving(Lcom/samsung/app/video/editor/external/Element;F)Ljava/util/List;

    move-result-object v0

    .line 476
    :cond_f
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 477
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->applyThemeToTransCodeElem(Lcom/samsung/app/video/editor/external/TranscodeElement;Z)V

    .line 482
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .end local v1           #time:F
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public removeTextEleList(Lcom/samsung/app/video/editor/external/ClipartParams;)V
    .registers 4
    .parameter "clipParams"

    .prologue
    .line 889
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 890
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/ClipartParams;->remove()V

    .line 893
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 895
    :cond_c
    sget-object v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mTextListComparator:Lcom/samsung/app/video/editor/external/TranscodeElement$TextListComparator;

    if-eqz v0, :cond_17

    .line 896
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    sget-object v1, Lcom/samsung/app/video/editor/external/TranscodeElement;->mTextListComparator:Lcom/samsung/app/video/editor/external/TranscodeElement$TextListComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 897
    :cond_17
    return-void
.end method

.method public removeTextList()V
    .registers 2

    .prologue
    .line 900
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    .line 901
    return-void
.end method

.method public replaceElement(Lcom/samsung/app/video/editor/external/Element;I)V
    .registers 4
    .parameter "newElement"
    .parameter "position"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_16

    .line 261
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 263
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->applyThemeToTransCodeElem(Lcom/samsung/app/video/editor/external/TranscodeElement;Z)V

    .line 265
    :cond_16
    return-void
.end method

.method public replaceElement(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)V
    .registers 8
    .parameter "currentElement"
    .parameter "newElement"

    .prologue
    .line 277
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_8
    if-gez v2, :cond_b

    .line 289
    :goto_a
    return-void

    .line 278
    :cond_b
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Element;

    .line 279
    .local v1, element:Lcom/samsung/app/video/editor/external/Element;
    if-ne v1, p1, :cond_37

    .line 280
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 281
    .local v0, b:Z
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v3, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "==== replaceElement ===:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 285
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->applyThemeToTransCodeElem(Lcom/samsung/app/video/editor/external/TranscodeElement;Z)V

    goto :goto_a

    .line 277
    .end local v0           #b:Z
    :cond_37
    add-int/lit8 v2, v2, -0x1

    goto :goto_8
.end method

.method public setAPreview(Z)V
    .registers 2
    .parameter "isAPreview"

    .prologue
    .line 546
    iput-boolean p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->isAPreview:Z

    .line 547
    return-void
.end method

.method public setAdditionlAudioEleList(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p1, additionlAudioEleList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionlAudioEleList:Ljava/util/List;

    .line 590
    return-void
.end method

.method public setElementList(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 584
    .local p1, elementList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    .line 586
    return-void
.end method

.method public setExportedVideoPath(Ljava/lang/String;)V
    .registers 2
    .parameter "path"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->exportedVideoPath:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setFullMovieDuration(I)V
    .registers 2
    .parameter "fullMovieDuration"

    .prologue
    .line 561
    iput p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->fullMovieDuration:I

    .line 562
    return-void
.end method

.method public setIndex(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 841
    iput p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->index:I

    .line 842
    return-void
.end method

.method public setProjCreationTime(J)V
    .registers 3
    .parameter "value"

    .prologue
    .line 167
    iput-wide p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectCreationTime:J

    .line 168
    return-void
.end method

.method public setProjectBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "bitmap"

    .prologue
    .line 788
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectBitmap:Landroid/graphics/Bitmap;

    .line 789
    return-void
.end method

.method public setProjectBitmapEffect(I)V
    .registers 2
    .parameter "effect"

    .prologue
    .line 796
    iput p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->effect:I

    .line 797
    return-void
.end method

.method public setProjectElmntPath(Ljava/lang/String;)V
    .registers 2
    .parameter "path"

    .prologue
    .line 772
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectElmntPath:Ljava/lang/String;

    .line 773
    return-void
.end method

.method public setProjectElmntTime(F)V
    .registers 2
    .parameter "time"

    .prologue
    .line 780
    iput p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectElmntTime:F

    .line 781
    return-void
.end method

.method public setProjectFileName(Ljava/lang/String;)V
    .registers 2
    .parameter "projectFileName"

    .prologue
    .line 576
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectFileName:Ljava/lang/String;

    .line 577
    return-void
.end method

.method public setResolutionEnumValue(I)V
    .registers 3
    .parameter "resolutionEnumValue"

    .prologue
    .line 159
    if-ltz p1, :cond_5

    const/4 v0, 0x4

    if-le p1, v0, :cond_6

    .line 160
    :cond_5
    const/4 p1, 0x0

    .line 162
    :cond_6
    iput p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->resolutionEnumValue:I

    .line 163
    return-void
.end method

.method public setTargetDispHeight(I)V
    .registers 2
    .parameter "aHeight"

    .prologue
    .line 132
    iput p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TargetDispHeight:I

    .line 133
    return-void
.end method

.method public setTargetDispWidth(I)V
    .registers 2
    .parameter "aWidth"

    .prologue
    .line 127
    iput p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->TargetDispWidth:I

    .line 128
    return-void
.end method

.method public setThemeName(I)V
    .registers 2
    .parameter "aThemeName"

    .prologue
    .line 760
    iput p1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->mThemeName:I

    .line 761
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 715
    const-string v1, ""

    .line 716
    .local v1, string:Ljava/lang/String;
    const-string v2, "ToString"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 721
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Project Name:::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 722
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "No if Elements:::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 723
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Full Movie Duration::::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getFullMovieDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 724
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IS a Perview:::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->isAPreview()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 725
    const-string v3, "Additional Audio Duration:::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->additionalAudioDuration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 721
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 726
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_76
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_e4

    .line 728
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 729
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_101

    .line 734
    :cond_90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n Caption :-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 735
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTextEleList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_15b

    .line 736
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTextEleList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_13e

    .line 741
    :goto_b7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n <--- Caption end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n exported VideoPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->exportedVideoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 745
    return-object v1

    .line 726
    :cond_e4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Element;

    .line 727
    .local v0, e:Lcom/samsung/app/video/editor/external/Element;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_76

    .line 729
    .end local v0           #e:Lcom/samsung/app/video/editor/external/Element;
    :cond_101
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Element;

    .line 730
    .restart local v0       #e:Lcom/samsung/app/video/editor/external/Element;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 731
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_8a

    .line 736
    .end local v0           #e:Lcom/samsung/app/video/editor/external/Element;
    :cond_13e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 737
    .local v0, e:Lcom/samsung/app/video/editor/external/ClipartParams;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b1

    .line 739
    .end local v0           #e:Lcom/samsung/app/video/editor/external/ClipartParams;
    :cond_15b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " NULL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b7
.end method

.method public updateTextEleList()V
    .registers 3

    .prologue
    .line 904
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    sget-object v1, Lcom/samsung/app/video/editor/external/TranscodeElement;->mTextListComparator:Lcom/samsung/app/video/editor/external/TranscodeElement$TextListComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 905
    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->adjustTextList()V

    .line 906
    return-void
.end method

.method public updateTextEleListWithRightEdge()V
    .registers 3

    .prologue
    .line 909
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->textEleList:Ljava/util/List;

    sget-object v1, Lcom/samsung/app/video/editor/external/TranscodeElement;->mTextListComparator:Lcom/samsung/app/video/editor/external/TranscodeElement$TextListComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 910
    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->adjustTextListWithRightEdge()V

    .line 911
    return-void
.end method

.method public updateTotalTime()V
    .registers 6

    .prologue
    .line 699
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->totalDuration:J

    .line 700
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    if-eqz v1, :cond_14

    .line 701
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->elementList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_15

    .line 706
    :cond_14
    return-void

    .line 701
    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Element;

    .line 702
    .local v0, element:Lcom/samsung/app/video/editor/external/Element;
    iget-wide v2, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->totalDuration:J

    long-to-float v2, v2

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v4

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/samsung/app/video/editor/external/TranscodeElement;->totalDuration:J

    goto :goto_e
.end method
