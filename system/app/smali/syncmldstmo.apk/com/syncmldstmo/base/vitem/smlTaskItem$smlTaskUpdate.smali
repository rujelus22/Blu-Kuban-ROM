.class public Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;
.super Ljava/lang/Object;
.source "smlTaskItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/vitem/smlTaskItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "smlTaskUpdate"
.end annotation


# instance fields
.field public _id:I

.field public alarm:Ljava/lang/String;

.field public alarmampm:Ljava/lang/String;

.field public alarmday:I

.field public alarmhour:I

.field public alarmmin:I

.field public alarmmonth:I

.field public alarmtone:Ljava/lang/String;

.field public alarmyear:I

.field public details:Ljava/lang/String;

.field public duedate:Ljava/lang/String;

.field public nondone:I

.field public priority:I

.field public startdate:Ljava/lang/String;

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
    .line 186
    invoke-static {p2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 190
    :goto_6
    return-void

    .line 189
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
    .line 194
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 196
    .local v0, crc32:Ljava/util/zip/CRC32;
    const-string v1, "a"

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->updateCrc32(Ljava/util/zip/CRC32;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 199
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 201
    :cond_1b
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->details:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 202
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->details:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 204
    :cond_2c
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->startdate:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 205
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->startdate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 207
    :cond_3d
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->duedate:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 208
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->duedate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 210
    :cond_4e
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarm:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 211
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 213
    :cond_5f
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmampm:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 214
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmampm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 216
    :cond_70
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmtone:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_81

    .line 217
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmtone:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 219
    :cond_81
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmyear:I

    if-lez v1, :cond_92

    .line 220
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmyear:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 222
    :cond_92
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmmonth:I

    if-lez v1, :cond_a3

    .line 223
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmmonth:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 225
    :cond_a3
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmday:I

    if-lez v1, :cond_b4

    .line 226
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmday:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 228
    :cond_b4
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmhour:I

    if-lez v1, :cond_c5

    .line 229
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmhour:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 231
    :cond_c5
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmmin:I

    if-lez v1, :cond_d6

    .line 232
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->alarmmin:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 234
    :cond_d6
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->priority:I

    if-lez v1, :cond_e7

    .line 235
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->priority:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 237
    :cond_e7
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->nondone:I

    if-lez v1, :cond_f8

    .line 238
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlTaskItem$smlTaskUpdate;->nondone:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 240
    :cond_f8
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    return-wide v1
.end method
