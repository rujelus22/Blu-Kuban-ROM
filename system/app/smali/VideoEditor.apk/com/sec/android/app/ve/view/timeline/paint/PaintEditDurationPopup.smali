.class public Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;
.super Landroid/widget/PopupWindow;
.source "PaintEditDurationPopup.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyEventCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup$1;-><init>(Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;->mKeyEventCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;

    .line 42
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .prologue
    .line 69
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;->mKeyEventCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeKeyEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;)V

    .line 70
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updateCurrentView()V

    .line 71
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 72
    return-void
.end method

.method public init()V
    .registers 6

    .prologue
    .line 46
    const/16 v2, 0x500

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;->setWidth(I)V

    .line 47
    const/16 v2, 0x122

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;->setHeight(I)V

    .line 48
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;->setOutsideTouchable(Z)V

    .line 49
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    const v2, 0x7f090007

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;->setAnimationStyle(I)V

    .line 52
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 53
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030023

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 54
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;->setContentView(Landroid/view/View;)V

    .line 56
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;->mKeyEventCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->setKeyEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;)V

    .line 58
    const v2, 0x7f0b0073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup$2;-><init>(Lcom/sec/android/app/ve/view/timeline/paint/PaintEditDurationPopup;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method
