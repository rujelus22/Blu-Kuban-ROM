.class public abstract Lcom/google/googlenav/ui/view/android/CheckableContainer;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private final a:Landroid/widget/CompoundButton;

.field private b:Lcom/google/googlenav/ui/view/android/ab;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    const v0, 0x7f10015b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a:Landroid/widget/CompoundButton;

    .line 66
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    const v0, 0x7f10015b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a:Landroid/widget/CompoundButton;

    .line 54
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 72
    const v0, 0x7f10015b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a:Landroid/widget/CompoundButton;

    .line 73
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/CheckableContainer;)Lcom/google/googlenav/ui/view/android/ab;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/CheckableContainer;->b:Lcom/google/googlenav/ui/view/android/ab;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/google/googlenav/ui/view/android/Z;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/Z;-><init>(Lcom/google/googlenav/ui/view/android/CheckableContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    const v0, 0x1080062

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->setBackgroundResource(I)V

    .line 95
    new-instance v0, Lcom/google/googlenav/ui/view/android/aa;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/aa;-><init>(Lcom/google/googlenav/ui/view/android/CheckableContainer;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/CheckableContainer;)Landroid/widget/CompoundButton;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a:Landroid/widget/CompoundButton;

    return-object v0
.end method


# virtual methods
.method abstract a()I
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 141
    return-void
.end method

.method public setCheckedWithoutListener(Z)V
    .registers 4
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/CheckableContainer;->b:Lcom/google/googlenav/ui/view/android/ab;

    .line 151
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/view/android/CheckableContainer;->b:Lcom/google/googlenav/ui/view/android/ab;

    .line 152
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/CheckableContainer;->setChecked(Z)V

    .line 153
    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/CheckableContainer;->b:Lcom/google/googlenav/ui/view/android/ab;

    .line 154
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/google/googlenav/ui/view/android/ab;)V
    .registers 2
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/CheckableContainer;->b:Lcom/google/googlenav/ui/view/android/ab;

    .line 131
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/CheckableContainer;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    .line 159
    return-void
.end method
