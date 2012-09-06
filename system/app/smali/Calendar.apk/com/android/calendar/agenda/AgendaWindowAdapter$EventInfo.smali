.class Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
.super Ljava/lang/Object;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventInfo"
.end annotation


# instance fields
.field allDay:Z

.field begin:J

.field end:J

.field id:J

.field startDay:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
