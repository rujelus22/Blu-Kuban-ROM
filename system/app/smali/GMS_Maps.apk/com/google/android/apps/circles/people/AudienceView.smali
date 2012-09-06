.class public Lcom/google/android/apps/circles/people/AudienceView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const v0, 0x7f040124

    invoke-direct {p0, v0}, Lcom/google/android/apps/circles/people/AudienceView;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/circles/people/AudienceView;->addView(Landroid/view/View;)V

    .line 33
    const v0, 0x7f100311

    invoke-virtual {p0, v0}, Lcom/google/android/apps/circles/people/AudienceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/apps/circles/people/AudienceView;->a:Landroid/view/ViewGroup;

    .line 34
    return-void
.end method

.method private a(I)Landroid/view/View;
    .registers 4
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/android/apps/circles/people/AudienceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setAudience(Ljava/util/List;)V
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 37
    iget-object v0, p0, Lcom/google/android/apps/circles/people/AudienceView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    move v2, v3

    .line 38
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3b

    .line 39
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/aF;

    .line 40
    const v1, 0x7f040125

    invoke-direct {p0, v1}, Lcom/google/android/apps/circles/people/AudienceView;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 42
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aF;->d()Lcom/google/googlenav/friend/aI;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/friend/aI;->c:Lcom/google/googlenav/friend/aI;

    if-eq v4, v5, :cond_2b

    .line 43
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aF;->g()I

    move-result v4

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 45
    :cond_2b
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aF;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/google/android/apps/circles/people/AudienceView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 38
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 48
    :cond_3b
    return-void
.end method
