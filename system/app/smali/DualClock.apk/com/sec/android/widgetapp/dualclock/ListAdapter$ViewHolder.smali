.class Lcom/sec/android/widgetapp/dualclock/ListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/dualclock/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field bottomLabel:Landroid/widget/TextView;

.field layoutToggle:Landroid/widget/LinearLayout;

.field tPosition:I

.field topLabel:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/widgetapp/dualclock/ListAdapter$ViewHolder;->tPosition:I

    return-void
.end method
