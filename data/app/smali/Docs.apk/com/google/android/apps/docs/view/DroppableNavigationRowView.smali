.class public Lcom/google/android/apps/docs/view/DroppableNavigationRowView;
.super Landroid/widget/FrameLayout;
.source "DroppableNavigationRowView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 37
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/DroppableNavigationRowView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lda;->DroppableNavigationEntryRow:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 39
    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 42
    if-eq v3, v4, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    const-string v4, "Missing attribute cakemix:entryLayout"

    invoke-static {v1, v4}, LafQ;->b(ZLjava/lang/Object;)V

    .line 44
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/DroppableNavigationRowView;->addView(Landroid/view/View;)V

    .line 47
    return-void
.end method


# virtual methods
.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 51
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 73
    :goto_9
    :pswitch_9
    return v1

    .line 59
    :pswitch_a
    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/view/DroppableNavigationRowView;->setDragHovered(Z)V

    goto :goto_9

    .line 64
    :pswitch_e
    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/view/DroppableNavigationRowView;->setDragHovered(Z)V

    goto :goto_9

    .line 69
    :pswitch_12
    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/view/DroppableNavigationRowView;->setDragHovered(Z)V

    goto :goto_9

    .line 51
    :pswitch_data_16
    .packed-switch 0x3
        :pswitch_9
        :pswitch_12
        :pswitch_a
        :pswitch_e
    .end packed-switch
.end method

.method public setDragHovered(Z)V
    .registers 3
    .parameter

    .prologue
    .line 92
    if-nez p1, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/DroppableNavigationRowView;->setEnabled(Z)V

    .line 93
    return-void

    .line 92
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method
