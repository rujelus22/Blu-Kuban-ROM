.class Lcom/android/calendar/AgendaByDayAdapter$RowInfo;
.super Ljava/lang/Object;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaByDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RowInfo"
.end annotation


# instance fields
.field mChecked:Z

.field final mData:I

.field final mType:I


# direct methods
.method constructor <init>(II)V
    .registers 4
    .parameter "type"
    .parameter "data"

    .prologue
    .line 597
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mChecked:Z

    .line 598
    iput p1, p0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    .line 599
    iput p2, p0, Lcom/android/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    .line 600
    return-void
.end method
