.class public Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResultTablet;
.super Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;


# instance fields
.field private k:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/bl;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->a(Lcom/google/googlenav/ui/bl;)V

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->m:Lcom/google/googlenav/ui/bn;

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/google/googlenav/ui/bl;->m:Lcom/google/googlenav/ui/bn;

    iget-object v0, v0, Lcom/google/googlenav/ui/bn;->b:Lbb/E;

    :goto_b
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResultTablet;->k:Landroid/widget/LinearLayout;

    iget-object v2, p1, Lcom/google/googlenav/ui/bl;->y:Lbb/c;

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/ui/android/ao;->a(Landroid/view/View;Lbb/c;Lbb/E;)Lcom/google/googlenav/ui/android/ao;

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->onFinishInflate()V

    const v0, 0x7f0f0245

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResultTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResultTablet;->k:Landroid/widget/LinearLayout;

    return-void
.end method
