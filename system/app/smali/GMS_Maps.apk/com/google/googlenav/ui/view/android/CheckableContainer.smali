.class public abstract Lcom/google/googlenav/ui/view/android/CheckableContainer;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private final a:Landroid/widget/CompoundButton;

.field private b:Lcom/google/googlenav/ui/view/android/au;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0f0130

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a:Landroid/widget/CompoundButton;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0f0130

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a:Landroid/widget/CompoundButton;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0f0130

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a:Landroid/widget/CompoundButton;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/CheckableContainer;)Lcom/google/googlenav/ui/view/android/au;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/CheckableContainer;->b:Lcom/google/googlenav/ui/view/android/au;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/google/googlenav/ui/view/android/as;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/as;-><init>(Lcom/google/googlenav/ui/view/android/CheckableContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x1080062

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->setBackgroundResource(I)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/at;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/at;-><init>(Lcom/google/googlenav/ui/view/android/CheckableContainer;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/CheckableContainer;)Landroid/widget/CompoundButton;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a:Landroid/widget/CompoundButton;

    return-object v0
.end method


# virtual methods
.method abstract a()I
.end method

.method public a(Lcom/google/googlenav/ui/view/android/au;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/CheckableContainer;->b:Lcom/google/googlenav/ui/view/android/au;

    return-void
.end method

.method public isChecked()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public toggle()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    return-void
.end method
