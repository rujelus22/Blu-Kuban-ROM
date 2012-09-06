.class public Lcom/google/googlenav/ui/android/MultipleTextLineLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/MultipleTextLineLayout;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/MultipleTextLineLayout;->a()V

    .line 35
    return-void
.end method

.method private a()V
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/MultipleTextLineLayout;->setOrientation(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/android/aj;)V
    .registers 5
    .parameter

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/google/googlenav/ui/android/aj;->a()Ljava/util/List;

    move-result-object v2

    .line 43
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 44
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/MultipleTextLineLayout;->addView(Landroid/view/View;)V

    .line 43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 46
    :cond_19
    return-void
.end method
