.class Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;
.super Ljava/lang/Object;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RowInfo"
.end annotation


# instance fields
.field mChecked:Z

.field final mCount:I

.field final mData:I

.field final mType:I


# direct methods
.method constructor <init>(III)V
    .registers 5
    .parameter "type"
    .parameter "data"
    .parameter "count"

    .prologue
    .line 415
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;->mChecked:Z

    .line 416
    iput p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;->mType:I

    .line 417
    iput p2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;->mData:I

    .line 418
    iput p3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter$RowInfo;->mCount:I

    .line 419
    return-void
.end method
