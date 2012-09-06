.class public Lcom/google/googlenav/ui/view/android/TransitLineView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/TransitLineView;->a()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/TransitLineView;->a()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/TransitLineView;->a()V

    .line 38
    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 41
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/view/android/TransitLineView;->setOrientation(I)V

    .line 42
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/TransitLineView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 44
    const v1, 0x7f0401cb

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    return-void
.end method

.method private a([[Lcom/google/googlenav/bP;Lcom/google/googlenav/ui/view/android/bf;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitLineView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 72
    const/4 v0, 0x0

    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_36

    .line 73
    new-instance v1, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/TransitLineView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;-><init>(Landroid/content/Context;)V

    .line 74
    rem-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    .line 75
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/TransitLineView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->setBackgroundColor(I)V

    .line 77
    :cond_29
    aget-object v2, p1, v0

    invoke-virtual {v1, v2, p2}, Lcom/google/googlenav/ui/view/android/TransitTimeTableRowView;->setTimeTableRow([Lcom/google/googlenav/bP;Lcom/google/googlenav/ui/view/android/bf;)V

    .line 78
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/TransitLineView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 80
    :cond_36
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/android/bi;[Lcom/google/googlenav/ui/view/android/bj;I[[Lcom/google/googlenav/bP;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    const v0, 0x7f100444

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/TransitLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitLineView;->b:Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;

    .line 59
    const v0, 0x7f100446

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/TransitLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitLineView;->a:Landroid/widget/LinearLayout;

    .line 61
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitLineView;->b:Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;

    invoke-virtual {v0, p5}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->setDrawLineAfterLastStation(Z)V

    .line 62
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitLineView;->b:Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->setDirectionSelectionListener(Lcom/google/googlenav/ui/view/android/bi;)V

    .line 63
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitLineView;->b:Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->setStations([Lcom/google/googlenav/ui/view/android/bj;)V

    .line 64
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitLineView;->b:Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->setLineColor(I)V

    .line 65
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitLineView;->b:Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a()Lcom/google/googlenav/ui/view/android/bf;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/google/googlenav/ui/view/android/TransitLineView;->a([[Lcom/google/googlenav/bP;Lcom/google/googlenav/ui/view/android/bf;)V

    .line 66
    return-void
.end method

.method public a([Lcom/google/googlenav/ui/view/android/bj;[[Lcom/google/googlenav/bP;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitLineView;->b:Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->setStations([Lcom/google/googlenav/ui/view/android/bj;)V

    .line 84
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitLineView;->b:Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/LineDialogSchematicView;->a()Lcom/google/googlenav/ui/view/android/bf;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/googlenav/ui/view/android/TransitLineView;->a([[Lcom/google/googlenav/bP;Lcom/google/googlenav/ui/view/android/bf;)V

    .line 85
    return-void
.end method
