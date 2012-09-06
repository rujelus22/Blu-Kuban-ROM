.class public Lcom/google/googlenav/ui/android/TemplateViewWithRightText;
.super Lcom/google/googlenav/ui/android/TemplateView;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ui/bd;)I
    .registers 5
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->i:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/googlenav/ui/bd;->x:Lcom/google/googlenav/ui/aW;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V

    .line 48
    iget-object v0, p1, Lcom/google/googlenav/ui/bd;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 49
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->a:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/google/googlenav/ui/bd;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aW;

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V

    .line 50
    iget-boolean v0, p1, Lcom/google/googlenav/ui/bd;->v:Z

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->a(ZLandroid/widget/TextView;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->a(Lcom/google/googlenav/ui/bd;I)I

    move-result v0

    .line 55
    :goto_29
    return v0

    :cond_2a
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bd;)I

    move-result v0

    goto :goto_29
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateView;->onFinishInflate()V

    .line 41
    const v0, 0x7f10001b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->a:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f10001c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRightText;->i:Landroid/widget/TextView;

    .line 43
    return-void
.end method
