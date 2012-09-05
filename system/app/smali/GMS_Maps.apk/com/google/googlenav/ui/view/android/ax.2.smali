.class Lcom/google/googlenav/ui/view/android/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ax;->a:Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;Lcom/google/googlenav/ui/view/android/av;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/ax;-><init>(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;)V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ax;->a:Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;

    if-ne p1, v0, :cond_13

    instance-of v0, p2, Lcom/google/googlenav/ui/view/android/DescriptiveRadioButton;

    if-eqz v0, :cond_13

    check-cast p2, Lcom/google/googlenav/ui/view/android/DescriptiveRadioButton;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ax;->a:Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;->a(Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;)Lcom/google/googlenav/ui/view/android/au;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioButton;->a(Lcom/google/googlenav/ui/view/android/au;)V

    :cond_13
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ax;->a:Lcom/google/googlenav/ui/view/android/DescriptiveRadioGroup;

    if-ne p1, v0, :cond_e

    instance-of v0, p2, Lcom/google/googlenav/ui/view/android/DescriptiveRadioButton;

    if-eqz v0, :cond_e

    check-cast p2, Lcom/google/googlenav/ui/view/android/DescriptiveRadioButton;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/googlenav/ui/view/android/DescriptiveRadioButton;->a(Lcom/google/googlenav/ui/view/android/au;)V

    :cond_e
    return-void
.end method
