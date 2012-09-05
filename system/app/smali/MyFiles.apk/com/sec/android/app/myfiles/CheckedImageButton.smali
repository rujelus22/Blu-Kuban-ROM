.class public Lcom/sec/android/app/myfiles/CheckedImageButton;
.super Ljava/lang/Object;
.source "CheckedImageButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mCheck:Landroid/widget/CompoundButton;

.field mContext:Landroid/content/Context;

.field private mIcon:Landroid/widget/ImageView;

.field private mOverlay:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;

.field private mThumbnail:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mContext:Landroid/content/Context;

    .line 49
    iput-object p1, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method


# virtual methods
.method public initViews(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 53
    const v0, 0x7f0c0020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mIcon:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f0c0021

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mThumbnail:Landroid/widget/ImageView;

    .line 55
    const v0, 0x7f0c0025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mTextView:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0c0024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mCheck:Landroid/widget/CompoundButton;

    .line 57
    const v0, 0x7f0c0022

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mOverlay:Landroid/widget/ImageView;

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mCheck:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setClickable(Z)V

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mCheck:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    .line 61
    const-string v0, "show"

    iget-object v1, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mCheck:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mCheck:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 65
    :goto_55
    return-void

    .line 64
    :cond_56
    iget-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mCheck:Landroid/widget/CompoundButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_55
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mCheck:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_b

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mCheck:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 70
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setCheckMarkDrawable(I)V
    .registers 4
    .parameter "checkbox"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mCheck:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_11

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mCheck:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mCheck:Landroid/widget/CompoundButton;

    const-string v1, "show"

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 132
    :cond_11
    return-void
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mCheck:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_9

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mCheck:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 76
    :cond_9
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2
    .parameter "file"

    .prologue
    .line 85
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "icon"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    return-void
.end method

.method public setImageThumbnailDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "icon"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mThumbnail:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    return-void
.end method

.method public setOverlayResource(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    return-void
.end method

.method public setOverlayVisibility(Z)V
    .registers 4
    .parameter "visibility"

    .prologue
    .line 115
    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mOverlay:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    :goto_9
    return-void

    .line 118
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mOverlay:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9
.end method

.method public setText(Ljava/lang/String;Z)V
    .registers 4
    .parameter "string"
    .parameter "b"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_9
    return-void
.end method

.method public setThumbnailVisibility(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mCheck:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_9

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/myfiles/CheckedImageButton;->mCheck:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    .line 81
    :cond_9
    return-void
.end method
