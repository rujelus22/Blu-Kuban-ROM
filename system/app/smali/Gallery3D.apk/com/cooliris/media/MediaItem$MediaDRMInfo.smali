.class public Lcom/cooliris/media/MediaItem$MediaDRMInfo;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaDRMInfo"
.end annotation


# instance fields
.field public availableUses:I

.field public constraintsType:I

.field public typeStr:[I

.field public usesStr:I

.field public validityStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 436
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput v0, p0, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->availableUses:I

    .line 425
    iput v0, p0, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->constraintsType:I

    .line 427
    iput v0, p0, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->usesStr:I

    .line 429
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->typeStr:[I

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/media/MediaItem$MediaDRMInfo;->validityStr:Ljava/lang/String;

    .line 437
    return-void

    .line 429
    :array_16
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method
