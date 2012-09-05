.class public Lcom/sec/android/app/ve/view/project/MultipleDelete;
.super Landroid/widget/LinearLayout;
.source "MultipleDelete.java"


# instance fields
.field cancel:Landroid/widget/Button;

.field private cancel_btnlayout:Landroid/widget/RelativeLayout;

.field private delDrawable:[Landroid/graphics/drawable/Drawable;

.field del_layout:Landroid/widget/LinearLayout;

.field delete:Landroid/widget/Button;

.field private delete_btnlayout:Landroid/widget/RelativeLayout;

.field private mBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mContext:Landroid/content/Context;

.field proj_list:Lcom/sec/android/app/ve/activity/ProjectListActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 3
    .parameter "context"
    .parameter "bitmapDrawable"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object p1, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->mContext:Landroid/content/Context;

    .line 35
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 36
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03001d

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    return-void
.end method


# virtual methods
.method public disableDeleteButton()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 205
    const-string v0, "Disabling Export and Share button"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->delete:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->delDrawable:[Landroid/graphics/drawable/Drawable;

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->delDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->delete:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->delete_btnlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 211
    return-void
.end method

.method public enableDeleteButton()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 215
    const-string v0, "Disabling Export and Share button"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->delete:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->delDrawable:[Landroid/graphics/drawable/Drawable;

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->delDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->delete:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->delete_btnlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 221
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 48
    const v0, 0x7f0b0055

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/project/MultipleDelete;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->del_layout:Landroid/widget/LinearLayout;

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->del_layout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->delete_btnlayout:Landroid/widget/RelativeLayout;

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->del_layout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0057

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->delete:Landroid/widget/Button;

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->delete_btnlayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_36

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->delete_btnlayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/app/ve/view/project/MultipleDelete$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/view/project/MultipleDelete$1;-><init>(Lcom/sec/android/app/ve/view/project/MultipleDelete;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    :cond_36
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->del_layout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0058

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->cancel_btnlayout:Landroid/widget/RelativeLayout;

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->del_layout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0059

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->cancel:Landroid/widget/Button;

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->cancel_btnlayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5e

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->cancel_btnlayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/app/ve/view/project/MultipleDelete$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/view/project/MultipleDelete$2;-><init>(Lcom/sec/android/app/ve/view/project/MultipleDelete;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :cond_5e
    return-void
.end method

.method public onKeyDownEevnt(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 225
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1e

    .line 228
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/project/MultipleDelete;->setVisibility(I)V

    .line 229
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 231
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->makeCheckBoxesInvisible()V

    .line 232
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->makeButtonLayoutVisible()V

    .line 234
    :cond_1c
    const/4 v0, 0x1

    .line 237
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public setProjectList(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V
    .registers 2
    .parameter "projlist"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/sec/android/app/ve/view/project/MultipleDelete;->proj_list:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 201
    return-void
.end method
