.class public Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;
.super Ljava/lang/Object;
.source "smlCalendarItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/vitem/smlCalendarItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "smlCalendarUpdate"
.end annotation


# instance fields
.field public _id:I

.field public aleamMinutes:I

.field public allDay:I

.field public description:Ljava/lang/String;

.field public dtend:J

.field public dtstart:J

.field public duration:Ljava/lang/String;

.field public hasAlarm:I

.field public location:Ljava/lang/String;

.field public rrule:Ljava/lang/String;

.field public state:I

.field public summary:Ljava/lang/String;

.field public timezone:Ljava/lang/String;


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
    .line 184
    invoke-static {p2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 188
    :goto_6
    return-void

    .line 187
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/zip/CRC32;->update([B)V

    goto :goto_6
.end method


# virtual methods
.method public getCrc()J
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    .line 192
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 194
    .local v0, crc32:Ljava/util/zip/CRC32;
    const-string v1, "a"

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->updateCrc32(Ljava/util/zip/CRC32;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->summary:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 197
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->summary:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->updateCrc32(Ljava/util/zip/CRC32;Ljava/lang/String;)V

    .line 199
    :cond_19
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->description:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 200
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->description:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->updateCrc32(Ljava/util/zip/CRC32;Ljava/lang/String;)V

    .line 202
    :cond_26
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->location:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 203
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->location:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->updateCrc32(Ljava/util/zip/CRC32;Ljava/lang/String;)V

    .line 205
    :cond_33
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->rrule:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 206
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->rrule:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->updateCrc32(Ljava/util/zip/CRC32;Ljava/lang/String;)V

    .line 208
    :cond_40
    iget-wide v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtstart:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_4f

    .line 209
    iget-wide v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtstart:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->updateCrc32(Ljava/util/zip/CRC32;Ljava/lang/String;)V

    .line 211
    :cond_4f
    iget-wide v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtend:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_5e

    .line 212
    iget-wide v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->dtend:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->updateCrc32(Ljava/util/zip/CRC32;Ljava/lang/String;)V

    .line 214
    :cond_5e
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->allDay:I

    if-lez v1, :cond_6b

    .line 215
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->allDay:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->updateCrc32(Ljava/util/zip/CRC32;Ljava/lang/String;)V

    .line 217
    :cond_6b
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->hasAlarm:I

    if-lez v1, :cond_78

    .line 218
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->hasAlarm:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->updateCrc32(Ljava/util/zip/CRC32;Ljava/lang/String;)V

    .line 220
    :cond_78
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->aleamMinutes:I

    if-lez v1, :cond_85

    .line 221
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->aleamMinutes:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/syncmldstmo/base/vitem/smlCalendarItem$smlCalendarUpdate;->updateCrc32(Ljava/util/zip/CRC32;Ljava/lang/String;)V

    .line 223
    :cond_85
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    return-wide v1
.end method
