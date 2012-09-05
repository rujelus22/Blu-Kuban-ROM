.class public Lcom/google/googlenav/ui/android/LoadingFooterView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lbb/F;

.field private b:Lbb/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(Lbb/F;Lbb/a;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/android/LoadingFooterView;->a:Lbb/F;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/LoadingFooterView;->b:Lbb/a;

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/android/LoadingFooterView;->a:Lbb/F;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/ui/android/LoadingFooterView;->a:Lbb/F;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/LoadingFooterView;->b:Lbb/a;

    invoke-interface {v0, v1}, Lbb/F;->a(Lbb/E;)Z

    :cond_b
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
