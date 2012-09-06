.class Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
.super Ljava/lang/Object;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuerySpec"
.end annotation


# instance fields
.field end:I

.field goToTime:Landroid/text/format/Time;

.field id:J

.field queryStartMillis:J

.field queryType:I

.field searchQuery:Ljava/lang/String;

.field start:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter "queryType"

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    .line 229
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->id:J

    .line 230
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 253
    if-ne p0, p1, :cond_5

    .line 272
    :cond_4
    :goto_4
    return v1

    .line 254
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    goto :goto_4

    .line 255
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 256
    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    .line 257
    .local v0, other:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    iget v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    iget v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    if-ne v3, v4, :cond_44

    iget-wide v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryStartMillis:J

    iget-wide v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryStartMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_44

    iget v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    iget v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    if-ne v3, v4, :cond_44

    iget v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    iget v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    if-ne v3, v4, :cond_44

    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    iget-wide v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->id:J

    iget-wide v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_46

    :cond_44
    move v1, v2

    .line 260
    goto :goto_4

    .line 263
    :cond_46
    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v3, :cond_5c

    .line 264
    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    invoke-virtual {v3, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    invoke-virtual {v5, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 265
    goto :goto_4

    .line 268
    :cond_5c
    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v3, :cond_4

    move v1, v2

    .line 269
    goto :goto_4
.end method

.method public hashCode()I
    .registers 11

    .prologue
    const/16 v9, 0x20

    .line 234
    const/16 v2, 0x1f

    .line 235
    .local v2, prime:I
    const/4 v3, 0x1

    .line 236
    .local v3, result:I
    iget v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    add-int/lit8 v3, v4, 0x1f

    .line 237
    mul-int/lit8 v4, v3, 0x1f

    iget-wide v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryStartMillis:J

    iget-wide v7, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryStartMillis:J

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    add-int v3, v4, v5

    .line 238
    mul-int/lit8 v4, v3, 0x1f

    iget v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    add-int v3, v4, v5

    .line 239
    mul-int/lit8 v4, v3, 0x1f

    iget v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    add-int v3, v4, v5

    .line 240
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    if-eqz v4, :cond_2e

    .line 241
    mul-int/lit8 v4, v3, 0x1f

    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v3, v4, v5

    .line 243
    :cond_2e
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v4, :cond_41

    .line 244
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 245
    .local v0, goToTimeMillis:J
    mul-int/lit8 v4, v3, 0x1f

    ushr-long v5, v0, v9

    xor-long/2addr v5, v0

    long-to-int v5, v5

    add-int v3, v4, v5

    .line 247
    .end local v0           #goToTimeMillis:J
    :cond_41
    mul-int/lit8 v4, v3, 0x1f

    iget-wide v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->id:J

    long-to-int v5, v5

    add-int v3, v4, v5

    .line 248
    return v3
.end method
