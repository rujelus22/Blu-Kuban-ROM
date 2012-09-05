.class public Lcom/sec/android/app/ve/view/project/ProjectOpView;
.super Landroid/widget/FrameLayout;
.source "ProjectOpView.java"


# instance fields
.field delete:Landroid/widget/Button;

.field private ed:[Landroid/graphics/drawable/Drawable;

.field export:Landroid/widget/Button;

.field exportRelative:Landroid/widget/RelativeLayout;

.field private mBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mContext:Landroid/content/Context;

.field private mMovingView:Landroid/view/View;

.field private proj_list:Lcom/sec/android/app/ve/activity/ProjectListActivity;

.field private proj_op_layout:Landroid/widget/LinearLayout;

.field share:Landroid/widget/Button;

.field private shareDrwable:[Landroid/graphics/drawable/Drawable;

.field shareRelative:Landroid/widget/RelativeLayout;

.field private srcColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 3
    .parameter "context"
    .parameter "bitmapDrawable"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    iput-object p1, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-object p1, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->mContext:Landroid/content/Context;

    .line 50
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 51
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03002a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 53
    return-void
.end method


# virtual methods
.method public disableExportShareButton()V
    .registers 4

    .prologue
    const/16 v2, 0x4d

    const/4 v1, 0x0

    .line 301
    const-string v0, "Disabling Export and Share button"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->export:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->ed:[Landroid/graphics/drawable/Drawable;

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->ed:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->exportRelative:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->export:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->share:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->shareDrwable:[Landroid/graphics/drawable/Drawable;

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->shareDrwable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->shareRelative:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->share:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 319
    return-void
.end method

.method public enableExportShareButton()V
    .registers 5

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 323
    const-string v0, "Disabling Export and Share button"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->export:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->ed:[Landroid/graphics/drawable/Drawable;

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->export:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->exportRelative:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->ed:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->share:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->shareDrwable:[Landroid/graphics/drawable/Drawable;

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->shareDrwable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->share:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->shareRelative:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 339
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 62
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 63
    const v1, 0x7f0b00b3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->proj_op_layout:Landroid/widget/LinearLayout;

    .line 65
    iget-object v1, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->proj_op_layout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00b5

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->delete:Landroid/widget/Button;

    .line 67
    const v1, 0x7f0b00b4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 68
    .local v0, deleteRelative:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_2e

    .line 70
    new-instance v1, Lcom/sec/android/app/ve/view/project/ProjectOpView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/view/project/ProjectOpView$1;-><init>(Lcom/sec/android/app/ve/view/project/ProjectOpView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :cond_2e
    iget-object v1, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->proj_op_layout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00b8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->exportRelative:Landroid/widget/RelativeLayout;

    .line 135
    iget-object v1, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->proj_op_layout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00b9

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->export:Landroid/widget/Button;

    .line 141
    iget-object v1, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->exportRelative:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_56

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->exportRelative:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/sec/android/app/ve/view/project/ProjectOpView$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/ve/view/project/ProjectOpView$2;-><init>(Lcom/sec/android/app/ve/view/project/ProjectOpView;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :cond_56
    iget-object v1, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->proj_op_layout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00b6

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->shareRelative:Landroid/widget/RelativeLayout;

    .line 198
    iget-object v1, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->proj_op_layout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00b7

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->share:Landroid/widget/Button;

    .line 200
    iget-object v1, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->shareRelative:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_7e

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->shareRelative:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/sec/android/app/ve/view/project/ProjectOpView$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/ve/view/project/ProjectOpView$3;-><init>(Lcom/sec/android/app/ve/view/project/ProjectOpView;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    :cond_7e
    return-void
.end method

.method public onKeyDownEevnt(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 348
    const/4 v0, 0x4

    if-ne p1, v0, :cond_f

    .line 351
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->setVisibility(I)V

    .line 352
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->makeButtonLayoutVisible()V

    .line 355
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public setProjectList(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V
    .registers 2
    .parameter "projlist"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView;->proj_list:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 343
    return-void
.end method
