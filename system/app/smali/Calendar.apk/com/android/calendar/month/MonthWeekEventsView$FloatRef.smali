.class Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;
.super Ljava/lang/Object;
.source "MonthWeekEventsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/month/MonthWeekEventsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatRef"
.end annotation


# instance fields
.field array:[F

.field final synthetic this$0:Lcom/android/calendar/month/MonthWeekEventsView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/month/MonthWeekEventsView;I)V
    .registers 4
    .parameter
    .parameter "size"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->this$0:Lcom/android/calendar/month/MonthWeekEventsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-array v0, p2, [F

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    .line 225
    return-void
.end method
