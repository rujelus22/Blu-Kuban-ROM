.class Lcom/android/calendar/DayEventListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DayEventListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayEventListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field calendarColor:I

.field photo:Landroid/widget/ImageView;

.field title:Landroid/widget/TextView;

.field when:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
