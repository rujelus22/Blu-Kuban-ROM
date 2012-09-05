.class Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$MultipleDayInfo;
.super Ljava/lang/Object;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipleDayInfo"
.end annotation


# instance fields
.field final mEndDay:I

.field final mPosition:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .parameter "position"
    .parameter "endDay"

    .prologue
    .line 426
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 427
    iput p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    .line 428
    iput p2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    .line 429
    return-void
.end method
