.class Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;
.super Ljava/lang/Object;
.source "CalendarAppWidgetModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/CalendarAppWidgetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DayInfo"
.end annotation


# instance fields
.field final mDayLabel:Ljava/lang/String;

.field final mJulianDay:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter "julianDay"
    .parameter "label"

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mJulianDay:I

    .line 205
    iput-object p2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    .line 206
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 224
    if-ne p0, p1, :cond_5

    .line 238
    :cond_4
    :goto_4
    return v1

    .line 226
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 227
    goto :goto_4

    .line 228
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 229
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 230
    check-cast v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;

    .line 231
    .local v0, other:Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;
    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    if-nez v3, :cond_22

    .line 232
    iget-object v3, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    if-eqz v3, :cond_2e

    move v1, v2

    .line 233
    goto :goto_4

    .line 234
    :cond_22
    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    move v1, v2

    .line 235
    goto :goto_4

    .line 236
    :cond_2e
    iget v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mJulianDay:I

    iget v4, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mJulianDay:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 237
    goto :goto_4
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 215
    const/16 v0, 0x1f

    .line 216
    .local v0, prime:I
    const/4 v1, 0x1

    .line 217
    .local v1, result:I
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    if-nez v2, :cond_11

    const/4 v2, 0x0

    :goto_8
    add-int/lit8 v1, v2, 0x1f

    .line 218
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mJulianDay:I

    add-int v1, v2, v3

    .line 219
    return v1

    .line 217
    :cond_11
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    return-object v0
.end method
