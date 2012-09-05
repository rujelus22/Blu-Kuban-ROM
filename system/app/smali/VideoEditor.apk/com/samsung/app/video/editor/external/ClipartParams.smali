.class public Lcom/samsung/app/video/editor/external/ClipartParams;
.super Ljava/lang/Object;
.source "ClipartParams.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DRAWING_SD_PATH:Ljava/lang/String; = null

.field public static final PNG:Ljava/lang/String; = ".png"

.field public static final XML:Ljava/lang/String; = "save.png"

.field private static final serialVersionUID:J = -0x2e6f991fc05e975L


# instance fields
.field public Filepath:Ljava/lang/String;

.field public Style:I

.field public captionXPosition:I

.field public captionXpositionInPreview:I

.field public captionYPosition:I

.field public captionYpositionInPreview:I

.field public clipart_height:I

.field public clipart_width:I

.field public clipart_x_pos:I

.field public clipart_y_pos:I

.field public data:Ljava/lang/String;

.field public itext_end_time:I

.field public itext_start_time:I

.field public pbBuf:[B

.field private storyboardEndTime:I

.field private storyboardStartTime:I

.field public tf:I

.field public themeId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/.vmdrawing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    sput-object v0, Lcom/samsung/app/video/editor/external/ClipartParams;->DRAWING_SD_PATH:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/ClipartParams;->checkDrawingDir()V

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/app/video/editor/external/ClipartParams;->DRAWING_SD_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/draw_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, f:Ljava/io/File;
    return-void
.end method

.method public constructor <init>(Lcom/samsung/app/video/editor/external/ClipartParams;)V
    .registers 7
    .parameter "clipartParams"

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/ClipartParams;-><init>()V

    .line 74
    iget v1, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->captionXPosition:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->captionXPosition:I

    .line 75
    iget v1, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->captionXpositionInPreview:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->captionXpositionInPreview:I

    .line 76
    iget v1, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->captionYPosition:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->captionYPosition:I

    .line 77
    iget v1, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->captionYpositionInPreview:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->captionYpositionInPreview:I

    .line 78
    iget v1, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_height:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_height:I

    .line 79
    iget v1, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_width:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_width:I

    .line 80
    iget v1, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_x_pos:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_x_pos:I

    .line 81
    iget v1, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_y_pos:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_y_pos:I

    .line 82
    iget v1, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->itext_end_time:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->itext_end_time:I

    .line 83
    iget v1, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->itext_start_time:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->itext_start_time:I

    .line 84
    iget-object v1, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->data:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->data:Ljava/lang/String;

    .line 85
    iget v1, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->storyboardStartTime:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->storyboardStartTime:I

    .line 86
    iget v1, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->storyboardEndTime:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->storyboardEndTime:I

    .line 87
    iget v1, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->tf:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->tf:I

    .line 88
    iget v1, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->themeId:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->themeId:I

    .line 89
    iget v1, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->Style:I

    iput v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->Style:I

    .line 90
    iget-object v1, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->pbBuf:[B

    if-eqz v1, :cond_59

    .line 91
    iget-object v1, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->pbBuf:[B

    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->pbBuf:[B

    .line 92
    iget-object v1, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->pbBuf:[B

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->pbBuf:[B

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->pbBuf:[B

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    :cond_59
    :try_start_59
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/sec/android/app/ve/util/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 97
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/sec/android/app/ve/util/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 98
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "save.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "save.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/sec/android/app/ve/util/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_d8} :catch_d9

    .line 103
    :goto_d8
    return-void

    .line 100
    :catch_d9
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d8
.end method

.method private checkDrawingDir()V
    .registers 3

    .prologue
    .line 66
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/app/video/editor/external/ClipartParams;->DRAWING_SD_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, lFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 70
    :cond_10
    return-void
.end method


# virtual methods
.method public createFile()V
    .registers 5

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/samsung/app/video/editor/external/ClipartParams;->checkDrawingDir()V

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/app/video/editor/external/ClipartParams;->DRAWING_SD_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/draw_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    .line 180
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, f:Ljava/io/File;
    return-void
.end method

.method public getEndTime()F
    .registers 3

    .prologue
    .line 125
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->itext_end_time:I

    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    return v0
.end method

.method public getStartTime()F
    .registers 3

    .prologue
    .line 133
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->itext_start_time:I

    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    return v0
.end method

.method public getStoryBoardEndTime()F
    .registers 3

    .prologue
    .line 203
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->storyboardEndTime:I

    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    return v0
.end method

.method public getStoryBoardStartTime()F
    .registers 3

    .prologue
    .line 188
    iget v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->storyboardStartTime:I

    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    return v0
.end method

.method public remove()V
    .registers 6

    .prologue
    .line 157
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, RAWFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 162
    :cond_10
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, pngFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 164
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 168
    :cond_35
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "save.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v2, xmlFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 170
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 173
    :cond_5a
    return-void
.end method

.method public setEndTime(F)V
    .registers 3
    .parameter "storyBoardEndTime"

    .prologue
    .line 118
    const/high16 v0, 0x447a

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->itext_end_time:I

    .line 119
    return-void
.end method

.method public setStartTime(F)V
    .registers 3
    .parameter "storyBoardStartTime"

    .prologue
    .line 110
    const/high16 v0, 0x447a

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->itext_start_time:I

    .line 111
    return-void
.end method

.method public setStoryBoardEndTime(F)V
    .registers 3
    .parameter "storyBoardEndTime"

    .prologue
    .line 211
    const/high16 v0, 0x447a

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->storyboardEndTime:I

    .line 212
    return-void
.end method

.method public setStoryBoardStartTime(F)V
    .registers 3
    .parameter "storyBoardStartTime"

    .prologue
    .line 196
    const/high16 v0, 0x447a

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->storyboardStartTime:I

    .line 197
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ClipartParams: ----->\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, strBuf:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clipart_width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clipart_height: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "itext_start_time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->itext_start_time:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "itext_end_time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->itext_end_time:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "storyboardStartTime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->storyboardStartTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "storyboardEndTime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->storyboardEndTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Filepath: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pbBuf: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/app/video/editor/external/ClipartParams;->pbBuf:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    const-string v1, "<---------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
