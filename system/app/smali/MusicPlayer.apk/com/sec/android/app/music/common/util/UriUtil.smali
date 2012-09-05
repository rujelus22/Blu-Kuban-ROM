.class public Lcom/sec/android/app/music/common/util/UriUtil;
.super Ljava/lang/Object;
.source "UriUtil.java"


# static fields
.field private static final PREFIX_FILE_EXTERNAL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/util/UriUtil;->PREFIX_FILE_EXTERNAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getType(Landroid/net/Uri;Z)I
    .registers 5
    .parameter "uri"
    .parameter "ispyvwmdrmfile"

    .prologue
    .line 75
    const/4 v1, -0x1

    .line 78
    .local v1, type:I
    if-nez p0, :cond_5

    .line 79
    const/4 v2, -0x1

    .line 104
    :goto_4
    return v2

    .line 81
    :cond_5
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, strUri:Ljava/lang/String;
    const-string v2, "content://media/internal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 85
    const/4 v1, 0x1

    .line 100
    :cond_12
    :goto_12
    const/4 v2, 0x1

    if-ne p1, v2, :cond_16

    .line 101
    const/4 v1, 0x5

    :cond_16
    move v2, v1

    .line 104
    goto :goto_4

    .line 86
    :cond_18
    const-string v2, "content://media/external"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 87
    const/4 v1, 0x2

    goto :goto_12

    .line 88
    :cond_22
    const-string v2, "file:///"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 89
    sget-object v2, Lcom/sec/android/app/music/common/util/UriUtil;->PREFIX_FILE_EXTERNAL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 90
    const/4 v1, 0x4

    goto :goto_12

    .line 92
    :cond_34
    const/4 v1, 0x3

    goto :goto_12

    .line 94
    :cond_36
    const-string v2, "content://drm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 95
    const/16 v1, 0x8

    goto :goto_12
.end method
