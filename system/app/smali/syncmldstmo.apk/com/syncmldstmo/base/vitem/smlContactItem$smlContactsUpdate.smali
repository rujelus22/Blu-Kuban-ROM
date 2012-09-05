.class public Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;
.super Ljava/lang/Object;
.source "smlContactItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/vitem/smlContactItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "smlContactsUpdate"
.end annotation


# instance fields
.field public _id:I

.field public state:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 163
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateCrc32(Ljava/util/zip/CRC32;Ljava/lang/String;)V
    .registers 4
    .parameter "crc32"
    .parameter "szValue"

    .prologue
    .line 172
    invoke-static {p2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 176
    :goto_6
    return-void

    .line 175
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
    .line 180
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 182
    .local v0, crc32:Ljava/util/zip/CRC32;
    const-string v1, "a"

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->updateCrc32(Ljava/util/zip/CRC32;Ljava/lang/String;)V

    .line 183
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->version:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/vitem/smlContactItem$smlContactsUpdate;->updateCrc32(Ljava/util/zip/CRC32;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    return-wide v1
.end method
