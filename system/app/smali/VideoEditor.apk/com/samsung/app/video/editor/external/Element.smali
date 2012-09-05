.class public Lcom/samsung/app/video/editor/external/Element;
.super Ljava/lang/Object;
.source "Element.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final HEIGHT:I = 0x154

.field private static final WIDTH:I = 0x258

.field private static mDrawingListComparator:Lcom/samsung/app/video/editor/external/TranscodeElement$DrawingListComparator; = null

.field private static final serialVersionUID:J = -0x4d17b9cc982558b3L


# instance fields
.field public Video_Template:I

.field public alphaImageFileName:Ljava/lang/String;

.field public alphaImageFileName_q:Ljava/lang/String;

.field public audFilePath1:Ljava/lang/String;

.field public audFilePath2:Ljava/lang/String;

.field public audVidStripConstant:I

.field public audVidType:I

.field private audioDisplayName:Ljava/lang/String;

.field private drawingEleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;"
        }
    .end annotation
.end field

.field private duration:F

.field public editList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/Edit;",
            ">;"
        }
    .end annotation
.end field

.field private endTime:I

.field public end_frame_x1:I

.field public end_frame_x2:I

.field public end_frame_y1:I

.field public end_frame_y2:I

.field private end_values:[F

.field public filePath:Ljava/lang/String;

.field public isMergeFullFile:Z

.field public ref_frame_x1:I

.field public ref_frame_x2:I

.field public ref_frame_y1:I

.field public ref_frame_y2:I

.field public splitReplaceSeq:I

.field private splitTime:F

.field private startTime:I

.field public start_frame_x1:I

.field public start_frame_x2:I

.field public start_frame_y1:I

.field public start_frame_y2:I

.field private start_values:[F

.field public templateFileName:Ljava/lang/String;

.field public templateFileName_q:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    new-instance v0, Lcom/samsung/app/video/editor/external/TranscodeElement$DrawingListComparator;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement$DrawingListComparator;-><init>()V

    sput-object v0, Lcom/samsung/app/video/editor/external/Element;->mDrawingListComparator:Lcom/samsung/app/video/editor/external/TranscodeElement$DrawingListComparator;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    .line 47
    iput-boolean v1, p0, Lcom/samsung/app/video/editor/external/Element;->isMergeFullFile:Z

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->templateFileName:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->alphaImageFileName:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->templateFileName_q:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->alphaImageFileName_q:Ljava/lang/String;

    .line 82
    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->ref_frame_x1:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->ref_frame_y1:I

    const/16 v0, 0x258

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->ref_frame_x2:I

    const/16 v0, 0x154

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->ref_frame_y2:I

    .line 83
    new-array v0, v2, [F

    fill-array-data v0, :array_3e

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->start_values:[F

    .line 84
    new-array v0, v2, [F

    fill-array-data v0, :array_54

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->end_values:[F

    .line 89
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->duration:F

    .line 91
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->audVidType:I

    .line 96
    return-void

    .line 83
    :array_3e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 84
    :array_54
    .array-data 0x4
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 8
    .parameter "element"

    .prologue
    const/16 v5, 0x258

    const/16 v4, 0x154

    const/16 v3, 0x9

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    .line 47
    iput-boolean v2, p0, Lcom/samsung/app/video/editor/external/Element;->isMergeFullFile:Z

    .line 63
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->templateFileName:Ljava/lang/String;

    .line 68
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->alphaImageFileName:Ljava/lang/String;

    .line 70
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->templateFileName_q:Ljava/lang/String;

    .line 72
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->alphaImageFileName_q:Ljava/lang/String;

    .line 82
    iput v2, p0, Lcom/samsung/app/video/editor/external/Element;->ref_frame_x1:I

    iput v2, p0, Lcom/samsung/app/video/editor/external/Element;->ref_frame_y1:I

    iput v5, p0, Lcom/samsung/app/video/editor/external/Element;->ref_frame_x2:I

    iput v4, p0, Lcom/samsung/app/video/editor/external/Element;->ref_frame_y2:I

    .line 83
    new-array v1, v3, [F

    fill-array-data v1, :array_11e

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->start_values:[F

    .line 84
    new-array v1, v3, [F

    fill-array-data v1, :array_134

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->end_values:[F

    .line 89
    const/high16 v1, 0x4040

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->duration:F

    .line 91
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->audVidType:I

    .line 99
    iget-object v1, p1, Lcom/samsung/app/video/editor/external/Element;->audFilePath1:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->audFilePath1:Ljava/lang/String;

    .line 100
    iget-object v1, p1, Lcom/samsung/app/video/editor/external/Element;->audFilePath2:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->audFilePath2:Ljava/lang/String;

    .line 101
    iget-object v1, p1, Lcom/samsung/app/video/editor/external/Element;->audioDisplayName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->audioDisplayName:Ljava/lang/String;

    .line 102
    iget v1, p1, Lcom/samsung/app/video/editor/external/Element;->audVidStripConstant:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->audVidStripConstant:I

    .line 103
    iget v1, p1, Lcom/samsung/app/video/editor/external/Element;->duration:F

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->duration:F

    .line 104
    iget v1, p1, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    .line 105
    iget-object v1, p1, Lcom/samsung/app/video/editor/external/Element;->filePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->filePath:Ljava/lang/String;

    .line 106
    iget-boolean v1, p1, Lcom/samsung/app/video/editor/external/Element;->isMergeFullFile:Z

    iput-boolean v1, p0, Lcom/samsung/app/video/editor/external/Element;->isMergeFullFile:Z

    .line 107
    iget v1, p1, Lcom/samsung/app/video/editor/external/Element;->splitReplaceSeq:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->splitReplaceSeq:I

    .line 108
    iget v1, p1, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    .line 109
    iget v1, p1, Lcom/samsung/app/video/editor/external/Element;->type:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->type:I

    .line 110
    iget v1, p1, Lcom/samsung/app/video/editor/external/Element;->splitTime:F

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->splitTime:F

    .line 111
    iget v1, p1, Lcom/samsung/app/video/editor/external/Element;->audVidType:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->audVidType:I

    .line 112
    iget-object v1, p1, Lcom/samsung/app/video/editor/external/Element;->templateFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->templateFileName:Ljava/lang/String;

    .line 113
    iget-object v1, p1, Lcom/samsung/app/video/editor/external/Element;->alphaImageFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->alphaImageFileName:Ljava/lang/String;

    .line 114
    iget v1, p1, Lcom/samsung/app/video/editor/external/Element;->Video_Template:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->Video_Template:I

    .line 115
    iget-object v1, p1, Lcom/samsung/app/video/editor/external/Element;->alphaImageFileName_q:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->alphaImageFileName_q:Ljava/lang/String;

    .line 116
    iget-object v1, p1, Lcom/samsung/app/video/editor/external/Element;->templateFileName_q:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->templateFileName_q:Ljava/lang/String;

    .line 118
    iget v1, p1, Lcom/samsung/app/video/editor/external/Element;->start_frame_x1:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->start_frame_x1:I

    .line 119
    iget v1, p1, Lcom/samsung/app/video/editor/external/Element;->start_frame_y1:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->start_frame_y1:I

    .line 120
    iget v1, p1, Lcom/samsung/app/video/editor/external/Element;->start_frame_x2:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->start_frame_x2:I

    .line 121
    iget v1, p1, Lcom/samsung/app/video/editor/external/Element;->start_frame_y2:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->start_frame_y2:I

    .line 123
    iget v1, p1, Lcom/samsung/app/video/editor/external/Element;->end_frame_x1:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->end_frame_x1:I

    .line 124
    iget v1, p1, Lcom/samsung/app/video/editor/external/Element;->end_frame_y1:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->end_frame_y1:I

    .line 125
    iget v1, p1, Lcom/samsung/app/video/editor/external/Element;->end_frame_x2:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->end_frame_x2:I

    .line 126
    iget v1, p1, Lcom/samsung/app/video/editor/external/Element;->end_frame_y2:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/Element;->end_frame_y2:I

    .line 128
    iput v2, p0, Lcom/samsung/app/video/editor/external/Element;->ref_frame_x1:I

    .line 129
    iput v2, p0, Lcom/samsung/app/video/editor/external/Element;->ref_frame_y1:I

    .line 130
    iput v5, p0, Lcom/samsung/app/video/editor/external/Element;->ref_frame_x2:I

    .line 131
    iput v4, p0, Lcom/samsung/app/video/editor/external/Element;->ref_frame_y2:I

    .line 133
    iget-object v1, p1, Lcom/samsung/app/video/editor/external/Element;->start_values:[F

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->start_values:[F

    .line 134
    iget-object v1, p1, Lcom/samsung/app/video/editor/external/Element;->end_values:[F

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->end_values:[F

    .line 136
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    .line 137
    monitor-enter p0

    .line 139
    const/4 v0, 0x0

    .local v0, i:I
    :goto_be
    :try_start_be
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_ce

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_ea

    .line 137
    :cond_ce
    monitor-exit p0
    :try_end_cf
    .catchall {:try_start_be .. :try_end_cf} :catchall_101

    .line 144
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    .line 145
    monitor-enter p0

    .line 146
    const/4 v0, 0x0

    :goto_d8
    :try_start_d8
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e8

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_104

    .line 145
    :cond_e8
    monitor-exit p0
    :try_end_e9
    .catchall {:try_start_d8 .. :try_end_e9} :catchall_11b

    .line 151
    return-void

    .line 140
    :cond_ea
    :try_start_ea
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    new-instance v3, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Edit;

    invoke-direct {v3, v1}, Lcom/samsung/app/video/editor/external/Edit;-><init>(Lcom/samsung/app/video/editor/external/Edit;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_be

    .line 137
    :catchall_101
    move-exception v1

    monitor-exit p0
    :try_end_103
    .catchall {:try_start_ea .. :try_end_103} :catchall_101

    throw v1

    .line 147
    :cond_104
    :try_start_104
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    new-instance v3, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-direct {v3, v1}, Lcom/samsung/app/video/editor/external/ClipartParams;-><init>(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_d8

    .line 145
    :catchall_11b
    move-exception v1

    monitor-exit p0
    :try_end_11d
    .catchall {:try_start_104 .. :try_end_11d} :catchall_11b

    throw v1

    .line 83
    :array_11e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 84
    :array_134
    .array-data 0x4
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private adjustDrawingList()V
    .registers 8

    .prologue
    .line 621
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    if-eqz v4, :cond_e

    .line 622
    const/4 v3, 0x0

    .line 623
    .local v3, preendTime:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_f

    .line 634
    .end local v2           #i:I
    .end local v3           #preendTime:F
    :cond_e
    return-void

    .line 624
    .restart local v2       #i:I
    .restart local v3       #preendTime:F
    :cond_f
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 625
    .local v0, clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_43

    if-lez v2, :cond_43

    .line 626
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v4

    sub-float v1, v3, v4

    .line 627
    .local v1, currentTimeDiffTime:F
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/ClipartParams;

    iget-object v5, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v5

    sub-float/2addr v5, v1

    invoke-virtual {v4, v5}, Lcom/samsung/app/video/editor/external/ClipartParams;->setEndTime(F)V

    .line 631
    .end local v1           #currentTimeDiffTime:F
    :cond_43
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v3

    .line 623
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method private adjustTextListWithRightEdge()V
    .registers 6

    .prologue
    .line 660
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    if-eqz v4, :cond_e

    .line 661
    const/4 v3, 0x0

    .line 662
    .local v3, preendTime:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_f

    .line 674
    .end local v2           #i:I
    .end local v3           #preendTime:F
    :cond_e
    return-void

    .line 663
    .restart local v2       #i:I
    .restart local v3       #preendTime:F
    :cond_f
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 664
    .local v0, clipParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2d

    .line 665
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v4

    sub-float v1, v3, v4

    .line 667
    .local v1, currentTimeDiffTime:F
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v4

    add-float/2addr v4, v1

    invoke-virtual {v0, v4}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStartTime(F)V

    .line 671
    .end local v1           #currentTimeDiffTime:F
    :cond_2d
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v3

    .line 662
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method


# virtual methods
.method public addDrawingEleList(Lcom/samsung/app/video/editor/external/ClipartParams;)V
    .registers 4
    .parameter "clipParams"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    if-nez v0, :cond_1b

    .line 609
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    .line 610
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    :goto_10
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    sget-object v1, Lcom/samsung/app/video/editor/external/Element;->mDrawingListComparator:Lcom/samsung/app/video/editor/external/TranscodeElement$DrawingListComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 616
    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/Element;->adjustDrawingList()V

    .line 617
    return-void

    .line 612
    :cond_1b
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10
.end method

.method public addEdit(Lcom/samsung/app/video/editor/external/Edit;)V
    .registers 6
    .parameter "edit"

    .prologue
    .line 325
    if-nez p1, :cond_3

    .line 343
    :goto_2
    return-void

    .line 328
    :cond_3
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    if-nez v2, :cond_e

    .line 329
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    .line 333
    :cond_e
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1d

    .line 342
    :goto_17
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 334
    :cond_1d
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Edit;

    .line 335
    .local v0, cedit:Lcom/samsung/app/video/editor/external/Edit;
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Edit;->getType()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getType()I

    move-result v3

    if-ne v2, v3, :cond_35

    .line 337
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_17

    .line 333
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public deleteAllClipArts()V
    .registers 4

    .prologue
    .line 800
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleListCount()I

    move-result v2

    if-lt v1, v2, :cond_8

    .line 804
    return-void

    .line 801
    :cond_8
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 802
    .local v0, cliparts:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->remove()V

    .line 800
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getAudFilePath1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->audFilePath1:Ljava/lang/String;

    return-object v0
.end method

.method public getAudFilePath2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->audFilePath2:Ljava/lang/String;

    return-object v0
.end method

.method public getAudVidStripConstant()I
    .registers 2

    .prologue
    .line 296
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->audVidStripConstant:I

    return v0
.end method

.method public getAudioDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->audioDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawingEleIndex(Lcom/samsung/app/video/editor/external/ClipartParams;)I
    .registers 3
    .parameter "clip"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 743
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 745
    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public getDrawingEleList()Ljava/util/List;
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
    .line 597
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    return-object v0
.end method

.method public getDrawingEleListCount()I
    .registers 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 602
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 604
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDuration()F
    .registers 2

    .prologue
    .line 516
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->duration:F

    return v0
.end method

.method public getEdit(I)Lcom/samsung/app/video/editor/external/Edit;
    .registers 5
    .parameter "type"

    .prologue
    .line 346
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    if-eqz v2, :cond_d

    .line 347
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_f

    .line 353
    .end local v1           #i:I
    :cond_d
    const/4 v0, 0x0

    :cond_e
    return-object v0

    .line 348
    .restart local v1       #i:I
    :cond_f
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Edit;

    .line 349
    .local v0, edit:Lcom/samsung/app/video/editor/external/Edit;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getType()I

    move-result v2

    if-eq p1, v2, :cond_e

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public getEditList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/Edit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    return-object v0
.end method

.method public getEndRect()Landroid/graphics/RectF;
    .registers 6

    .prologue
    .line 539
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->end_frame_x1:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/app/video/editor/external/Element;->end_frame_y1:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/app/video/editor/external/Element;->end_frame_x2:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/app/video/editor/external/Element;->end_frame_y2:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getEndTime()F
    .registers 3

    .prologue
    .line 218
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    return v0
.end method

.method public getFadInFadOutEdit()Lcom/samsung/app/video/editor/external/Edit;
    .registers 4

    .prologue
    .line 440
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    if-eqz v1, :cond_d

    .line 441
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_f

    .line 447
    .end local v0           #i:I
    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1

    .line 442
    .restart local v0       #i:I
    :cond_f
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Edit;->getType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_27

    .line 443
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Edit;

    goto :goto_e

    .line 441
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMatrix(Z)Landroid/graphics/Matrix;
    .registers 6
    .parameter "value"

    .prologue
    .line 554
    if-eqz p1, :cond_24

    .line 556
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 557
    .local v0, m:Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->start_values:[F

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Element::getmatrix:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    move-object v1, v0

    .line 565
    .end local v0           #m:Landroid/graphics/Matrix;
    .local v1, m:Ljava/lang/Object;
    :goto_23
    return-object v1

    .line 562
    .end local v1           #m:Ljava/lang/Object;
    :cond_24
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 563
    .restart local v0       #m:Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->end_values:[F

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Element::getmatrix:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    move-object v1, v0

    .line 565
    .restart local v1       #m:Ljava/lang/Object;
    goto :goto_23
.end method

.method public getRetouchEdit()Lcom/samsung/app/video/editor/external/Edit;
    .registers 4

    .prologue
    .line 415
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    if-eqz v1, :cond_d

    .line 417
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_f

    .line 423
    .end local v0           #i:I
    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1

    .line 418
    .restart local v0       #i:I
    :cond_f
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Edit;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_27

    .line 419
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Edit;

    goto :goto_e

    .line 417
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public getSplitReplaceSeq()I
    .registers 2

    .prologue
    .line 311
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->splitReplaceSeq:I

    return v0
.end method

.method public getSplitTime()F
    .registers 2

    .prologue
    .line 158
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->splitTime:F

    return v0
.end method

.method public getStartRect()Landroid/graphics/RectF;
    .registers 6

    .prologue
    .line 535
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/app/video/editor/external/Element;->start_frame_x1:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/app/video/editor/external/Element;->start_frame_y1:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/app/video/editor/external/Element;->start_frame_x2:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/app/video/editor/external/Element;->start_frame_y2:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getStartTime()F
    .registers 3

    .prologue
    .line 197
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    return v0
.end method

.method public getTimeToNextDrawing(Lcom/samsung/app/video/editor/external/ClipartParams;)F
    .registers 7
    .parameter "clip"

    .prologue
    .line 755
    const/high16 v1, -0x4080

    .line 756
    .local v1, nextStartTime:F
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    if-eqz v3, :cond_35

    if-eqz p1, :cond_35

    .line 758
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_31

    .line 760
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 761
    .local v0, nIndex:I
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_31

    .line 763
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 764
    .local v2, temp:Lcom/samsung/app/video/editor/external/ClipartParams;
    if-eqz v2, :cond_31

    .line 765
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v3

    .line 770
    .end local v0           #nIndex:I
    .end local v2           #temp:Lcom/samsung/app/video/editor/external/ClipartParams;
    :goto_30
    return v3

    .line 768
    :cond_31
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v1

    :cond_35
    move v3, v1

    .line 770
    goto :goto_30
.end method

.method public getTimeToPreviousDrawing(Lcom/samsung/app/video/editor/external/ClipartParams;)F
    .registers 7
    .parameter "clip"

    .prologue
    .line 780
    const/high16 v1, -0x4080

    .line 781
    .local v1, prevEndTime:F
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    if-eqz v3, :cond_2d

    if-eqz p1, :cond_2d

    .line 783
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_29

    .line 785
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 786
    .local v0, nIndex:I
    if-lez v0, :cond_29

    .line 788
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 789
    .local v2, temp:Lcom/samsung/app/video/editor/external/ClipartParams;
    if-eqz v2, :cond_29

    .line 790
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v3

    .line 795
    .end local v0           #nIndex:I
    .end local v2           #temp:Lcom/samsung/app/video/editor/external/ClipartParams;
    :goto_28
    return v3

    .line 793
    :cond_29
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v1

    :cond_2d
    move v3, v1

    .line 795
    goto :goto_28
.end method

.method public getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;
    .registers 4

    .prologue
    .line 402
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    if-eqz v1, :cond_d

    .line 404
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_f

    .line 410
    .end local v0           #i:I
    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1

    .line 405
    .restart local v0       #i:I
    :cond_f
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Edit;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_27

    .line 406
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Edit;

    goto :goto_e

    .line 404
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 165
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->type:I

    return v0
.end method

.method public getVolumeEdit()Lcom/samsung/app/video/editor/external/Edit;
    .registers 4

    .prologue
    .line 428
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    if-eqz v1, :cond_d

    .line 429
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_f

    .line 435
    .end local v0           #i:I
    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1

    .line 430
    .restart local v0       #i:I
    :cond_f
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Edit;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    .line 431
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Edit;

    goto :goto_e

    .line 429
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public isMergeFullFile()Z
    .registers 2

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/samsung/app/video/editor/external/Element;->isMergeFullFile:Z

    return v0
.end method

.method public declared-synchronized removeCaptionEdit()V
    .registers 5

    .prologue
    .line 483
    monitor-enter p0

    :try_start_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "entry caption removecaptionedit"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    if-eqz v1, :cond_2f

    .line 487
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "caption removing  number  editList.size();"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 489
    const/4 v0, 0x0

    .local v0, i:I
    :goto_27
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_78

    move-result v1

    if-lt v0, v1, :cond_31

    .line 501
    .end local v0           #i:I
    :cond_2f
    monitor-exit p0

    return-void

    .line 490
    .restart local v0       #i:I
    :cond_31
    :try_start_31
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "caption removing  number  in for loop:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Edit;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_75

    .line 492
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "caption removing  number: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_73
    .catchall {:try_start_31 .. :try_end_73} :catchall_78

    .line 494
    add-int/lit8 v0, v0, -0x1

    .line 489
    :cond_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 483
    .end local v0           #i:I
    :catchall_78
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeDrawingsToRightOfClip(Lcom/samsung/app/video/editor/external/ClipartParams;)V
    .registers 7
    .parameter "rightMostclip"

    .prologue
    .line 687
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    if-eqz v4, :cond_18

    if-eqz p1, :cond_18

    .line 689
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 690
    .local v2, nRightMostIndex:I
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 691
    .local v3, numDrawing:I
    add-int/lit8 v1, v2, 0x1

    .line 697
    .local v1, delIndex:I
    :goto_14
    add-int/lit8 v4, v2, 0x1

    if-gt v3, v4, :cond_19

    .line 705
    .end local v1           #delIndex:I
    .end local v2           #nRightMostIndex:I
    .end local v3           #numDrawing:I
    :cond_18
    return-void

    .line 699
    .restart local v1       #delIndex:I
    .restart local v2       #nRightMostIndex:I
    .restart local v3       #numDrawing:I
    :cond_19
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 700
    .local v0, clip:Lcom/samsung/app/video/editor/external/ClipartParams;
    if-eqz v0, :cond_26

    .line 701
    invoke-virtual {p0, v0}, Lcom/samsung/app/video/editor/external/Element;->removeTextEleList(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 702
    :cond_26
    iget-object v4, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_14
.end method

.method public declared-synchronized removeEdit(I)V
    .registers 5
    .parameter "edittype"

    .prologue
    .line 374
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_21

    move-result v2

    if-nez v2, :cond_f

    .line 380
    :goto_d
    monitor-exit p0

    return-void

    .line 374
    :cond_f
    :try_start_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Edit;

    .line 375
    .local v0, e:Lcom/samsung/app/video/editor/external/Edit;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getType()I

    move-result v2

    if-ne v2, p1, :cond_7

    .line 376
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_21

    goto :goto_d

    .line 374
    .end local v0           #e:Lcom/samsung/app/video/editor/external/Edit;
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeEdit(Ljava/lang/String;)V
    .registers 6
    .parameter "edittype"

    .prologue
    .line 357
    monitor-enter p0

    :try_start_1
    const-string v1, "tran"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 358
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 364
    :cond_15
    const-string v1, "eff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 365
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_3e

    move-result v2

    if-nez v2, :cond_41

    .line 371
    :cond_29
    monitor-exit p0

    return-void

    .line 358
    :cond_2b
    :try_start_2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Edit;

    .line 359
    .local v0, e:Lcom/samsung/app/video/editor/external/Edit;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_f

    .line 360
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_3e

    goto :goto_f

    .line 357
    .end local v0           #e:Lcom/samsung/app/video/editor/external/Edit;
    :catchall_3e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 365
    :cond_41
    :try_start_41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Edit;

    .line 366
    .restart local v0       #e:Lcom/samsung/app/video/editor/external/Edit;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_23

    .line 367
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_53
    .catchall {:try_start_41 .. :try_end_53} :catchall_3e

    goto :goto_23
.end method

.method public declared-synchronized removeRetouchEdit()V
    .registers 4

    .prologue
    .line 452
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    if-eqz v1, :cond_e

    .line 454
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_2b

    move-result v1

    if-lt v0, v1, :cond_10

    .line 463
    .end local v0           #i:I
    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    .line 455
    .restart local v0       #i:I
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Edit;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2e

    .line 456
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_2b

    goto :goto_e

    .line 452
    .end local v0           #i:I
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 454
    .restart local v0       #i:I
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public removeTextEleList(Lcom/samsung/app/video/editor/external/ClipartParams;)V
    .registers 4
    .parameter "clipParams"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 639
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/ClipartParams;->remove()V

    .line 642
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 644
    :cond_c
    sget-object v0, Lcom/samsung/app/video/editor/external/Element;->mDrawingListComparator:Lcom/samsung/app/video/editor/external/TranscodeElement$DrawingListComparator;

    if-eqz v0, :cond_17

    .line 645
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    sget-object v1, Lcom/samsung/app/video/editor/external/Element;->mDrawingListComparator:Lcom/samsung/app/video/editor/external/TranscodeElement$DrawingListComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 646
    :cond_17
    return-void
.end method

.method public removeTextList()V
    .registers 2

    .prologue
    .line 678
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    .line 679
    return-void
.end method

.method public declared-synchronized removetransitionEdit()V
    .registers 4

    .prologue
    .line 384
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    if-eqz v1, :cond_e

    .line 387
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_2b

    move-result v1

    if-lt v0, v1, :cond_10

    .line 399
    .end local v0           #i:I
    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    .line 389
    .restart local v0       #i:I
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Edit;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2e

    .line 391
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_2b

    goto :goto_e

    .line 384
    .end local v0           #i:I
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 387
    .restart local v0       #i:I
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public retainOnlyDrawingClip(Lcom/samsung/app/video/editor/external/ClipartParams;)V
    .registers 6
    .parameter "retainClip"

    .prologue
    .line 713
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    if-eqz v3, :cond_10

    if-eqz p1, :cond_10

    .line 715
    const/4 v0, 0x0

    .line 716
    .local v0, delIndex:I
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 722
    .local v1, numDrawing:I
    :goto_d
    const/4 v3, 0x1

    if-gt v1, v3, :cond_11

    .line 734
    .end local v0           #delIndex:I
    .end local v1           #numDrawing:I
    :cond_10
    return-void

    .line 724
    .restart local v0       #delIndex:I
    .restart local v1       #numDrawing:I
    :cond_11
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 726
    .local v2, temp:Lcom/samsung/app/video/editor/external/ClipartParams;
    if-ne v2, p1, :cond_24

    .line 727
    add-int/lit8 v0, v0, 0x1

    .line 731
    :goto_1d
    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_d

    .line 729
    :cond_24
    invoke-virtual {p0, v2}, Lcom/samsung/app/video/editor/external/Element;->removeTextEleList(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    goto :goto_1d
.end method

.method public returnEffectEdit()Lcom/samsung/app/video/editor/external/Edit;
    .registers 5

    .prologue
    .line 469
    iget-object v1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    .line 475
    const/4 v0, 0x0

    :goto_d
    return-object v0

    .line 469
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Edit;

    .line 470
    .local v0, delEdit:Lcom/samsung/app/video/editor/external/Edit;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    goto :goto_d
.end method

.method public setAudFilePath1(Ljava/lang/String;)V
    .registers 2
    .parameter "audFilePath1"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Element;->audFilePath1:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setAudFilePath2(Ljava/lang/String;)V
    .registers 2
    .parameter "audFilePath2"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Element;->audFilePath2:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setAudVidStripConstant(I)V
    .registers 2
    .parameter "audVidStripConstant"

    .prologue
    .line 304
    iput p1, p0, Lcom/samsung/app/video/editor/external/Element;->audVidStripConstant:I

    .line 305
    return-void
.end method

.method public setAudioDisplayName(Ljava/lang/String;)V
    .registers 2
    .parameter "audioDisplayName"

    .prologue
    .line 504
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Element;->audioDisplayName:Ljava/lang/String;

    .line 505
    return-void
.end method

.method public setDuration(F)V
    .registers 2
    .parameter "duration"

    .prologue
    .line 512
    iput p1, p0, Lcom/samsung/app/video/editor/external/Element;->duration:F

    .line 513
    return-void
.end method

.method public setEditList(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/Edit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, editList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Edit;>;"
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    .line 245
    return-void
.end method

.method public setEndRect(Landroid/graphics/RectF;)V
    .registers 3
    .parameter "end"

    .prologue
    .line 527
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->end_frame_x1:I

    .line 528
    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->end_frame_y1:I

    .line 529
    iget v0, p1, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->end_frame_x2:I

    .line 530
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->end_frame_y2:I

    .line 531
    return-void
.end method

.method public setEndTime(F)V
    .registers 3
    .parameter "endTime"

    .prologue
    .line 226
    const/high16 v0, 0x447a

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->endTime:I

    .line 228
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->type:I

    if-eqz v0, :cond_10

    .line 229
    invoke-static {}, Lcom/samsung/app/video/editor/external/TranscodeElement;->updateMusicTime()V

    .line 230
    :cond_10
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2
    .parameter "filePath"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/Element;->filePath:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;Z)V
    .registers 4
    .parameter "m"
    .parameter "value"

    .prologue
    .line 543
    if-eqz p2, :cond_8

    .line 545
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->start_values:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 551
    :goto_7
    return-void

    .line 549
    :cond_8
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->end_values:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    goto :goto_7
.end method

.method public setMergeFullFile(Z)V
    .registers 2
    .parameter "isMergeFullFile"

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/samsung/app/video/editor/external/Element;->isMergeFullFile:Z

    .line 290
    return-void
.end method

.method public setSplitReplaceSeq(I)V
    .registers 2
    .parameter "splitReplaceSeq"

    .prologue
    .line 319
    iput p1, p0, Lcom/samsung/app/video/editor/external/Element;->splitReplaceSeq:I

    .line 320
    return-void
.end method

.method public setSplitTime(F)V
    .registers 2
    .parameter "splitTime"

    .prologue
    .line 154
    iput p1, p0, Lcom/samsung/app/video/editor/external/Element;->splitTime:F

    .line 155
    return-void
.end method

.method public setStartRect(Landroid/graphics/RectF;)V
    .registers 3
    .parameter "start"

    .prologue
    .line 520
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->start_frame_x1:I

    .line 521
    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->start_frame_y1:I

    .line 522
    iget v0, p1, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->start_frame_x2:I

    .line 523
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->start_frame_y2:I

    .line 524
    return-void
.end method

.method public setStartTime(F)V
    .registers 3
    .parameter "startTime"

    .prologue
    .line 205
    const/high16 v0, 0x447a

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/Element;->startTime:I

    .line 209
    iget v0, p0, Lcom/samsung/app/video/editor/external/Element;->type:I

    if-eqz v0, :cond_d

    .line 210
    invoke-static {}, Lcom/samsung/app/video/editor/external/TranscodeElement;->updateMusicTime()V

    .line 212
    :cond_d
    return-void
.end method

.method public setType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 173
    iput p1, p0, Lcom/samsung/app/video/editor/external/Element;->type:I

    .line 174
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 570
    const/4 v1, 0x0

    .line 571
    .local v1, string:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=====================\nElement name:::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 572
    const-string v3, "Element start time:::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 573
    const-string v3, "Element End Time::::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 574
    const-string v3, "Element Split Time::::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 575
    const-string v3, "Element AudioFile Path 1::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getAudFilePath1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 576
    const-string v3, "Element Audio File Path2::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Element;->getAudFilePath2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 577
    const-string v3, "Element Alpha PathName::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->alphaImageFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 578
    const-string v3, "Element TemplateFileName::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->templateFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 579
    const-string v3, "Element Video Template Value::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/app/video/editor/external/Element;->Video_Template:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 580
    const-string v3, "Element start rect::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/app/video/editor/external/Element;->start_frame_x1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/app/video/editor/external/Element;->start_frame_y1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/app/video/editor/external/Element;->start_frame_x2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/app/video/editor/external/Element;->start_frame_y2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 581
    const-string v3, "Element end rect::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/app/video/editor/external/Element;->end_frame_x1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/app/video/editor/external/Element;->end_frame_y1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/app/video/editor/external/Element;->end_frame_x2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/app/video/editor/external/Element;->end_frame_y2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 582
    const-string v3, "Edit info start \n:-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/Element;->editList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n <<<<<<<<<<<< Edit info ends \n =================="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 571
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 584
    const/4 v0, 0x0

    .local v0, i:I
    :goto_139
    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    if-eqz v2, :cond_145

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_146

    .line 587
    :cond_145
    return-object v1

    .line 585
    :cond_146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_139
.end method

.method public updateTextEleList()V
    .registers 3

    .prologue
    .line 649
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    sget-object v1, Lcom/samsung/app/video/editor/external/Element;->mDrawingListComparator:Lcom/samsung/app/video/editor/external/TranscodeElement$DrawingListComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 650
    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/Element;->adjustDrawingList()V

    .line 651
    return-void
.end method

.method public updateTextEleListWithRightEdge()V
    .registers 3

    .prologue
    .line 654
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/Element;->drawingEleList:Ljava/util/List;

    sget-object v1, Lcom/samsung/app/video/editor/external/Element;->mDrawingListComparator:Lcom/samsung/app/video/editor/external/TranscodeElement$DrawingListComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 655
    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/Element;->adjustTextListWithRightEdge()V

    .line 656
    return-void
.end method
