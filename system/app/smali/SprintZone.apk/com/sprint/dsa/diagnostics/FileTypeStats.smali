.class public Lcom/sprint/dsa/diagnostics/FileTypeStats;
.super Ljava/lang/Object;
.source "FileTypeStats.java"


# static fields
.field public static final EXTS_AUDIO:Ljava/lang/String; = ".mp3"

.field public static final EXTS_IMAGE:Ljava/lang/String; = ".jpg.jpeg.gif.png"

.field public static final EXTS_VIDEO:Ljava/lang/String; = ".mp4.3gp"

.field public static final FILTER_AUDIO:Ljava/io/FileFilter;

.field public static final FILTER_IMAGE:Ljava/io/FileFilter;

.field public static final FILTER_VIDEO:Ljava/io/FileFilter;


# instance fields
.field public audioBytes:J

.field public audioCount:I

.field public imageBytes:J

.field public imageCount:I

.field public otherBytes:J

.field public otherCount:I

.field public totalBytes:J

.field public totalCount:I

.field public videoBytes:J

.field public videoCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcom/sprint/dsa/diagnostics/FileExtensionsFilter;

    const-string v1, ".jpg.jpeg.gif.png"

    invoke-direct {v0, v1}, Lcom/sprint/dsa/diagnostics/FileExtensionsFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->FILTER_IMAGE:Ljava/io/FileFilter;

    .line 17
    new-instance v0, Lcom/sprint/dsa/diagnostics/FileExtensionsFilter;

    const-string v1, ".mp3"

    invoke-direct {v0, v1}, Lcom/sprint/dsa/diagnostics/FileExtensionsFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->FILTER_AUDIO:Ljava/io/FileFilter;

    .line 18
    new-instance v0, Lcom/sprint/dsa/diagnostics/FileExtensionsFilter;

    const-string v1, ".mp4.3gp"

    invoke-direct {v0, v1}, Lcom/sprint/dsa/diagnostics/FileExtensionsFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->FILTER_VIDEO:Ljava/io/FileFilter;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->imageCount:I

    .line 22
    iput-wide v1, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->imageBytes:J

    .line 24
    iput v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->audioCount:I

    .line 25
    iput-wide v1, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->audioBytes:J

    .line 27
    iput v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->videoCount:I

    .line 28
    iput-wide v1, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->videoBytes:J

    .line 30
    iput v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->otherCount:I

    .line 31
    iput-wide v1, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->otherBytes:J

    .line 33
    iput v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->totalCount:I

    .line 34
    iput-wide v1, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->totalBytes:J

    .line 39
    return-void
.end method

.method public static get(Ljava/io/File;)Lcom/sprint/dsa/diagnostics/FileTypeStats;
    .registers 2
    .parameter "root"

    .prologue
    .line 43
    new-instance v0, Lcom/sprint/dsa/diagnostics/FileTypeStats;

    invoke-direct {v0}, Lcom/sprint/dsa/diagnostics/FileTypeStats;-><init>()V

    .line 44
    .local v0, stats:Lcom/sprint/dsa/diagnostics/FileTypeStats;
    invoke-virtual {v0, p0}, Lcom/sprint/dsa/diagnostics/FileTypeStats;->traverse(Ljava/io/File;)V

    .line 45
    return-object v0
.end method


# virtual methods
.method public count(Ljava/io/File;)V
    .registers 6
    .parameter "file"

    .prologue
    .line 67
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 68
    sget-object v0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->FILTER_IMAGE:Ljava/io/FileFilter;

    invoke-interface {v0, p1}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 69
    iget v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->imageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->imageCount:I

    .line 70
    iget-wide v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->imageBytes:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->imageBytes:J

    .line 85
    :goto_1d
    iget v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->totalCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->totalCount:I

    .line 86
    iget-wide v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->totalBytes:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->totalBytes:J

    .line 88
    :cond_2c
    return-void

    .line 72
    :cond_2d
    sget-object v0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->FILTER_AUDIO:Ljava/io/FileFilter;

    invoke-interface {v0, p1}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 73
    iget v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->audioCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->audioCount:I

    .line 74
    iget-wide v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->audioBytes:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->audioBytes:J

    goto :goto_1d

    .line 76
    :cond_45
    sget-object v0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->FILTER_VIDEO:Ljava/io/FileFilter;

    invoke-interface {v0, p1}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 77
    iget v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->videoCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->videoCount:I

    .line 78
    iget-wide v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->videoBytes:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->videoBytes:J

    goto :goto_1d

    .line 81
    :cond_5d
    iget v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->otherCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->otherCount:I

    .line 82
    iget-wide v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->otherBytes:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sprint/dsa/diagnostics/FileTypeStats;->otherBytes:J

    goto :goto_1d
.end method

.method public traverse(Ljava/io/File;)V
    .registers 5
    .parameter "file"

    .prologue
    .line 50
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 53
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/diagnostics/FileTypeStats;->count(Ljava/io/File;)V

    .line 64
    :cond_9
    return-void

    .line 57
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 58
    .local v0, files:[Ljava/io/File;
    if-eqz v0, :cond_9

    .line 59
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    array-length v2, v0

    if-ge v1, v2, :cond_9

    .line 60
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/sprint/dsa/diagnostics/FileTypeStats;->traverse(Ljava/io/File;)V

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method
