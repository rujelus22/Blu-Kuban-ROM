.class public Lcom/android/calendar/WeekView;
.super Lcom/android/calendar/CalendarView;
.source "WeekView.java"


# instance fields
.field private mCellMargin:F


# direct methods
.method public constructor <init>(Lcom/android/calendar/CalendarActivity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView;-><init>(Lcom/android/calendar/CalendarActivity;)V

    .line 25
    invoke-virtual {p1}, Lcom/android/calendar/CalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/WeekView;->mCellMargin:F

    .line 26
    invoke-direct {p0}, Lcom/android/calendar/WeekView;->init()V

    .line 27
    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mDrawTextInEventRect:Z

    .line 31
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    .line 32
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    iget v1, p0, Lcom/android/calendar/WeekView;->mCellMargin:F

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventGeometry;->setCellMargin(F)V

    .line 34
    invoke-virtual {p0}, Lcom/android/calendar/WeekView;->setCellSize()V

    .line 35
    return-void
.end method
