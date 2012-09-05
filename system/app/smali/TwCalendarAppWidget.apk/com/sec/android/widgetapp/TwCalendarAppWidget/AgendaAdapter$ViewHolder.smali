.class Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AgendaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field alldayTitle:Landroid/widget/TextView;

.field calendar:Landroid/view/View;

.field container:Landroid/view/View;

.field photo:Landroid/widget/ImageView;

.field photoContainer:Landroid/view/View;

.field title:Landroid/widget/TextView;

.field when:Landroid/widget/TextView;

.field where:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
