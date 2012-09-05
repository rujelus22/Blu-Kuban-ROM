.class public abstract Lcom/google/googlenav/ui/view/android/DescriptiveCheckable;
.super Lcom/google/googlenav/ui/view/android/CheckableContainer;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/CheckableContainer;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DescriptiveCheckable;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/CheckableContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DescriptiveCheckable;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/CheckableContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DescriptiveCheckable;->b()V

    return-void
.end method

.method private b()V
    .registers 2

    const v0, 0x7f0f0131

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/DescriptiveCheckable;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveCheckable;->a:Landroid/widget/TextView;

    const v0, 0x7f0f0132

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/DescriptiveCheckable;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveCheckable;->b:Landroid/widget/TextView;

    return-void
.end method
