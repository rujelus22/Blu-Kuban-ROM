.class public Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;
.super Ljava/lang/Object;
.source "smlMemoItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/vitem/smlMemoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "smlMemoUpdate"
.end annotation


# instance fields
.field public _id:I

.field public body:Ljava/lang/String;

.field public create:J

.field public modify:J

.field public state:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateCrc32(Ljava/util/zip/CRC32;Ljava/lang/String;)V
    .registers 4
    .parameter "crc32"
    .parameter "szValue"

    .prologue
    .line 176
    invoke-static {p2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 180
    :goto_6
    return-void

    .line 179
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/zip/CRC32;->update([B)V

    goto :goto_6
.end method


# virtual methods
.method public getCrc()J
    .registers 4

    .prologue
    .line 184
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 186
    .local v0, crc32:Ljava/util/zip/CRC32;
    const-string v1, "a"

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->updateCrc32(Ljava/util/zip/CRC32;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->body:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 189
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlMemoItem$smlMemoUpdate;->body:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 191
    :cond_1b
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    return-wide v1
.end method
