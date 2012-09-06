.class public abstract Lcom/google/googlenav/ui/view/android/DescriptiveCheckable;
.super Lcom/google/googlenav/ui/view/android/CheckableContainer;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/CheckableContainer;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DescriptiveCheckable;->b()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/CheckableContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DescriptiveCheckable;->b()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/CheckableContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DescriptiveCheckable;->b()V

    .line 47
    return-void
.end method

.method private b()V
    .registers 2

    .prologue
    .line 50
    const v0, 0x7f10015c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/DescriptiveCheckable;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveCheckable;->a:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f10015d

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/DescriptiveCheckable;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveCheckable;->b:Landroid/widget/TextView;

    .line 52
    return-void
.end method


# virtual methods
.method public setPrimaryText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveCheckable;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public setSecondaryText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DescriptiveCheckable;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method
