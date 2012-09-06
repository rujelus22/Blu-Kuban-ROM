.class Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
.super Ljava/lang/Object;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DayAdapterInfo"
.end annotation


# instance fields
.field cursor:Landroid/database/Cursor;

.field dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

.field end:I

.field offset:I

.field size:I

.field start:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-direct {v0, p1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    .line 294
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 300
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 301
    .local v1, time:Landroid/text/format/Time;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .local v0, sb:Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 303
    invoke-virtual {v1, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 304
    const-string v2, "Start:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 306
    invoke-virtual {v1, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 307
    const-string v2, " End:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v2, " Offset:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    const-string v2, " Size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
