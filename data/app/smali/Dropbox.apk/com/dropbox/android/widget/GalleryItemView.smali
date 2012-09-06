.class public Lcom/dropbox/android/widget/GalleryItemView;
.super Landroid/widget/FrameLayout;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/filemanager/f;


# instance fields
.field protected final a:Landroid/widget/ImageView;

.field protected final b:Landroid/widget/ImageView;

.field protected final c:Landroid/widget/FrameLayout;

.field protected final d:Landroid/widget/TextView;

.field protected e:I

.field private final f:Ljava/lang/String;

.field private g:Lcom/dropbox/android/util/D;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->e:I

    .line 29
    const-class v0, Lcom/dropbox/android/widget/GalleryItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->f:Ljava/lang/String;

    .line 34
    invoke-virtual {p0, v2}, Lcom/dropbox/android/widget/GalleryItemView;->setDuplicateParentStateEnabled(Z)V

    .line 35
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 36
    const v0, 0x7f030013

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 37
    invoke-virtual {v1, v2}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 38
    invoke-virtual {p0, v1}, Lcom/dropbox/android/widget/GalleryItemView;->addView(Landroid/view/View;)V

    .line 39
    const v0, 0x7f0d0055

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->a:Landroid/widget/ImageView;

    .line 40
    const v0, 0x7f0d0057

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->b:Landroid/widget/ImageView;

    .line 41
    const v0, 0x7f0d0023

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->c:Landroid/widget/FrameLayout;

    .line 42
    const v0, 0x7f0d0025

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->d:Landroid/widget/TextView;

    .line 43
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 114
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 116
    :cond_e
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->g:Lcom/dropbox/android/util/D;

    if-eqz v0, :cond_19

    .line 117
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->g:Lcom/dropbox/android/util/D;

    invoke-virtual {v0}, Lcom/dropbox/android/util/D;->b()V

    .line 118
    iput-object v1, p0, Lcom/dropbox/android/widget/GalleryItemView;->g:Lcom/dropbox/android/util/D;

    .line 120
    :cond_19
    return-void
.end method

.method private a(Lcom/dropbox/android/util/D;)V
    .registers 4
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/dropbox/android/widget/GalleryItemView;->g:Lcom/dropbox/android/util/D;

    .line 92
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->g:Lcom/dropbox/android/util/D;

    invoke-virtual {v0}, Lcom/dropbox/android/util/D;->a()V

    .line 94
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->g:Lcom/dropbox/android/util/D;

    invoke-virtual {v0}, Lcom/dropbox/android/util/D;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/aX;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 95
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 96
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->a:Landroid/widget/ImageView;

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 102
    :goto_22
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryItemView;->g:Lcom/dropbox/android/util/D;

    invoke-virtual {v1}, Lcom/dropbox/android/util/D;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    return-void

    .line 98
    :cond_34
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 99
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_22
.end method


# virtual methods
.method public final a(ILcom/dropbox/android/util/D;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 124
    iget v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->e:I

    if-ne p1, v0, :cond_c

    if-eqz p2, :cond_c

    .line 125
    invoke-direct {p0, p2}, Lcom/dropbox/android/widget/GalleryItemView;->a(Lcom/dropbox/android/util/D;)V

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->e:I

    .line 128
    :cond_c
    return-void
.end method

.method public final a(Landroid/database/Cursor;ZLcom/dropbox/android/filemanager/b;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0d0056

    const/4 v2, 0x4

    const/4 v1, -0x1

    .line 50
    iget v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->e:I

    if-eq v0, v1, :cond_e

    .line 51
    iget v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->e:I

    invoke-virtual {p3, v0, p0}, Lcom/dropbox/android/filemanager/b;->c(ILcom/dropbox/android/filemanager/f;)V

    .line 54
    :cond_e
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryItemView;->a()V

    .line 56
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->e:I

    .line 58
    iget v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->e:I

    invoke-virtual {p3, v0, p0}, Lcom/dropbox/android/filemanager/b;->a(ILcom/dropbox/android/filemanager/f;)Lcom/dropbox/android/util/D;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_77

    .line 60
    iput v1, p0, Lcom/dropbox/android/widget/GalleryItemView;->e:I

    .line 61
    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/GalleryItemView;->a(Lcom/dropbox/android/util/D;)V

    .line 62
    invoke-virtual {v0}, Lcom/dropbox/android/util/D;->b()V

    .line 68
    :goto_27
    const-string v0, "_cursor_type_tag"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_tag_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 69
    const-string v0, "vid_duration"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 70
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_7d

    .line 71
    iget-object v2, p0, Lcom/dropbox/android/widget/GalleryItemView;->d:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/dropbox/android/util/aX;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :goto_52
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->c:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 80
    :goto_58
    iget-object v1, p0, Lcom/dropbox/android/widget/GalleryItemView;->b:Landroid/widget/ImageView;

    if-eqz p2, :cond_8b

    const v0, 0x7f02005e

    :goto_5f
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    if-eqz p2, :cond_8f

    .line 83
    invoke-virtual {p0, v4}, Lcom/dropbox/android/widget/GalleryItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/android/widget/GalleryItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 87
    :goto_76
    return-void

    .line 64
    :cond_77
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_27

    .line 73
    :cond_7d
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->d:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_52

    .line 77
    :cond_85
    iget-object v0, p0, Lcom/dropbox/android/widget/GalleryItemView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_58

    .line 80
    :cond_8b
    const v0, 0x7f02005f

    goto :goto_5f

    .line 85
    :cond_8f
    invoke-virtual {p0, v4}, Lcom/dropbox/android/widget/GalleryItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020125

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_76
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 109
    invoke-direct {p0}, Lcom/dropbox/android/widget/GalleryItemView;->a()V

    .line 110
    return-void
.end method
