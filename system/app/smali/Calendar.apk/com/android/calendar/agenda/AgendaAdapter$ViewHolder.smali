.class Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AgendaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field allDay:Z

.field colorChip:Lcom/android/calendar/ColorChipView;

.field grayed:Z

.field instanceId:J

.field julianDay:I

.field selectedMarker:Landroid/view/View;

.field startTimeMilli:J

.field title:Landroid/widget/TextView;

.field when:Landroid/widget/TextView;

.field where:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
