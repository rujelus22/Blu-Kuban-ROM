.class Lcom/android/calendar/CalendarView$DayHeader;
.super Ljava/lang/Object;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DayHeader"
.end annotation


# instance fields
.field cell:I

.field dayName:Ljava/lang/String;

.field dayNum:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 178
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/CalendarView$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/calendar/CalendarView$DayHeader;-><init>()V

    return-void
.end method
