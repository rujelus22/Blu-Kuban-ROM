.class public Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event$EventComparator;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;",
        ">;"
    }
.end annotation


# instance fields
.field mNotificationMoment:Z

.field private final sCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Z)V
    .registers 3
    .parameter "notificationMoment"

    .prologue
    .line 614
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 635
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event$EventComparator;->sCollator:Ljava/text/Collator;

    .line 615
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event$EventComparator;->mNotificationMoment:Z

    .line 616
    return-void
.end method


# virtual methods
.method public final compare(Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;)I
    .registers 8
    .parameter "a"
    .parameter "b"

    .prologue
    .line 619
    iget-wide v2, p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 620
    .local v0, aStart:Ljava/lang/Long;
    iget-object v2, p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 621
    iget-wide v2, p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startMillis:J

    const-string v4, "UTC"

    invoke-static {v2, v3, v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->convertEventTimezoneToLocal(JLjava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 626
    :cond_1a
    :goto_1a
    iget-wide v2, p2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 627
    .local v1, bStart:Ljava/lang/Long;
    iget-object v2, p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 628
    iget-wide v2, p2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startMillis:J

    const-string v4, "UTC"

    invoke-static {v2, v3, v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->convertEventTimezoneToLocal(JLjava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 633
    :cond_34
    :goto_34
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event$EventComparator;->sCollator:Ljava/text/Collator;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 622
    .end local v1           #bStart:Ljava/lang/Long;
    :cond_43
    iget-boolean v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event$EventComparator;->mNotificationMoment:Z

    if-nez v2, :cond_1a

    iget-object v2, p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->timezone:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 623
    iget-wide v3, p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startMillis:J

    iget-object v2, p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->timezone:Ljava/lang/CharSequence;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->convertEventTimezoneToLocal(JLjava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1a

    .line 629
    .restart local v1       #bStart:Ljava/lang/Long;
    :cond_5e
    iget-boolean v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event$EventComparator;->mNotificationMoment:Z

    if-nez v2, :cond_34

    iget-object v2, p2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->timezone:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 630
    iget-wide v3, p2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startMillis:J

    iget-object v2, p2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->timezone:Ljava/lang/CharSequence;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->convertEventTimezoneToLocal(JLjava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_34
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 611
    check-cast p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;

    .end local p1
    check-cast p2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event$EventComparator;->compare(Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;)I

    move-result v0

    return v0
.end method
