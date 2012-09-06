.class Lcom/google/googlenav/ui/view/android/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ag;->a:Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;Lcom/google/googlenav/ui/view/android/ae;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/ag;-><init>(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;)V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ag;->a:Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;

    if-ne p1, v0, :cond_13

    instance-of v0, p2, Lcom/google/googlenav/ui/view/android/DescriptiveRadioButton;

    if-eqz v0, :cond_13

    .line 116
    check-cast p2, Lcom/google/googlenav/ui/view/android/DescriptiveRadioButton;

    .line 117
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ag;->a:Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;)Lcom/google/googlenav/ui/view/android/ab;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioButton;->setOnCheckedChangeListener(Lcom/google/googlenav/ui/view/android/ab;)V

    .line 119
    :cond_13
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ag;->a:Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;

    if-ne p1, v0, :cond_e

    instance-of v0, p2, Lcom/google/googlenav/ui/view/android/DescriptiveRadioButton;

    if-eqz v0, :cond_e

    .line 124
    check-cast p2, Lcom/google/googlenav/ui/view/android/DescriptiveRadioButton;

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioButton;->setOnCheckedChangeListener(Lcom/google/googlenav/ui/view/android/ab;)V

    .line 127
    :cond_e
    return-void
.end method
