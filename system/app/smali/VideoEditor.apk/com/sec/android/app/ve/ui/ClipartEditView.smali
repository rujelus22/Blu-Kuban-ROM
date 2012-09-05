.class public Lcom/sec/android/app/ve/ui/ClipartEditView;
.super Landroid/widget/PopupWindow;
.source "ClipartEditView.java"


# instance fields
.field private _instance:Lcom/sec/android/app/ve/ui/ClipartEditView;

.field btnclick:Landroid/view/View$OnClickListener;

.field private closebtn:Landroid/widget/Button;

.field private mClipArtEditView:Landroid/view/View;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v1, Lcom/sec/android/app/ve/ui/ClipartEditView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/ui/ClipartEditView$1;-><init>(Lcom/sec/android/app/ve/ui/ClipartEditView;)V

    iput-object v1, p0, Lcom/sec/android/app/ve/ui/ClipartEditView;->btnclick:Landroid/view/View$OnClickListener;

    .line 24
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/ClipartEditView;->mContext:Landroid/content/Context;

    .line 25
    iput-object p0, p0, Lcom/sec/android/app/ve/ui/ClipartEditView;->_instance:Lcom/sec/android/app/ve/ui/ClipartEditView;

    .line 27
    iget-object v1, p0, Lcom/sec/android/app/ve/ui/ClipartEditView;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 28
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    add-int/lit16 v1, v1, -0xc8

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/ui/ClipartEditView;->setWidth(I)V

    .line 29
    const/16 v1, 0xfc

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/ui/ClipartEditView;->setHeight(I)V

    .line 30
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/ui/ClipartEditView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/ve/ui/ClipartEditView;->mClipArtEditView:Landroid/view/View;

    .line 32
    iget-object v1, p0, Lcom/sec/android/app/ve/ui/ClipartEditView;->mClipArtEditView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/ui/ClipartEditView;->setContentView(Landroid/view/View;)V

    .line 33
    iget-object v1, p0, Lcom/sec/android/app/ve/ui/ClipartEditView;->mClipArtEditView:Landroid/view/View;

    const v2, 0x7f0b0020

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/ve/ui/ClipartEditView;->closebtn:Landroid/widget/Button;

    .line 34
    iget-object v1, p0, Lcom/sec/android/app/ve/ui/ClipartEditView;->closebtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/ve/ui/ClipartEditView;->btnclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method public get_instance()Lcom/sec/android/app/ve/ui/ClipartEditView;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/ClipartEditView;->_instance:Lcom/sec/android/app/ve/ui/ClipartEditView;

    return-object v0
.end method
