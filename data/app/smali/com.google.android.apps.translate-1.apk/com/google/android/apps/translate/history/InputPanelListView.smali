.class public Lcom/google/android/apps/translate/history/InputPanelListView;
.super Lcom/google/android/apps/translate/history/FocusRequestingListView;
.source "InputPanelListView.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/translate/history/FocusRequestingListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-object p1, p0, Lcom/google/android/apps/translate/history/InputPanelListView;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method protected getBottomFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public getSolidColor()I
    .registers 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/translate/history/InputPanelListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/translate/R$color;->list_view_edge_effect_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 30
    const v0, 0x0

    return v0
.end method
