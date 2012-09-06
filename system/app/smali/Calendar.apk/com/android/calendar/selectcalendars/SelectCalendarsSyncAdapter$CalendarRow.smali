.class public Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;
.super Ljava/lang/Object;
.source "SelectCalendarsSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CalendarRow"
.end annotation


# instance fields
.field color:I

.field displayName:Ljava/lang/String;

.field id:J

.field originalSynced:Z

.field synced:Z

.field final synthetic this$0:Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;


# direct methods
.method public constructor <init>(Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->this$0:Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
