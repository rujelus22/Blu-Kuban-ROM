.class public Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;
.super Lcom/google/googlenav/ui/android/TemplateView;
.source "SourceFile"


# instance fields
.field private a:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;)V

    .line 20
    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->a:Z

    .line 21
    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->i:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->a:Z

    .line 21
    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->i:Z

    .line 29
    return-void
.end method

.method private a(ILandroid/widget/ImageView;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 46
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_16

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    const/4 v0, 0x1

    .line 52
    :goto_15
    return v0

    .line 50
    :cond_16
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    move v0, v1

    .line 52
    goto :goto_15
.end method


# virtual methods
.method public e()Z
    .registers 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->a:Z

    return v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->i:Z

    return v0
.end method

.method public setTemplateContent(Lcom/google/googlenav/ui/bd;)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 33
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->setTemplateContent(Lcom/google/googlenav/ui/bd;)V

    .line 34
    if-nez p1, :cond_8

    .line 41
    :goto_7
    return-void

    .line 37
    :cond_8
    const v0, 0x7f10004b

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->c()Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->a(ILandroid/widget/ImageView;)Z

    move-result v0

    .line 38
    const v3, 0x7f10004e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->d()Landroid/widget/ImageView;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->a(ILandroid/widget/ImageView;)Z

    move-result v3

    .line 39
    if-nez v0, :cond_22

    if-eqz v3, :cond_2a

    :cond_22
    move v0, v2

    :goto_23
    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->a:Z

    .line 40
    if-nez v3, :cond_2c

    :goto_27
    iput-boolean v2, p0, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->i:Z

    goto :goto_7

    :cond_2a
    move v0, v1

    .line 39
    goto :goto_23

    :cond_2c
    move v2, v1

    .line 40
    goto :goto_27
.end method
