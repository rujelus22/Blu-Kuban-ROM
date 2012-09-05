.class Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
.super Ljava/lang/Object;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DayAdapterInfo"
.end annotation


# instance fields
.field cursor:Landroid/database/Cursor;

.field dayAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;

.field end:I

.field offset:I

.field size:I

.field start:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 244
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 245
    new-instance v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;

    invoke-direct {v0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;

    .line 246
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 250
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 251
    .local v1, time:Landroid/text/format/Time;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v0, sb:Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->start:I

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    .line 253
    invoke-virtual {v1, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 254
    const-string v2, "Start:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->end:I

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    .line 256
    invoke-virtual {v1, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 257
    const-string v2, " End:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v2, " Offset:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    const-string v2, " Size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
