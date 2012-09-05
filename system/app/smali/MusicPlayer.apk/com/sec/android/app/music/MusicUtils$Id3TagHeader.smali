.class Lcom/sec/android/app/music/MusicUtils$Id3TagHeader;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Id3TagHeader"
.end annotation


# instance fields
.field flags:[B

.field identifier:[B

.field size:[B

.field version:[B


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3003
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3004
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/app/music/MusicUtils$Id3TagHeader;->identifier:[B

    .line 3006
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/app/music/MusicUtils$Id3TagHeader;->version:[B

    .line 3008
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/app/music/MusicUtils$Id3TagHeader;->flags:[B

    .line 3010
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/app/music/MusicUtils$Id3TagHeader;->size:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/music/MusicUtils$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 3003
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicUtils$Id3TagHeader;-><init>()V

    return-void
.end method
