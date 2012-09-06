.class public Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/rideabout/view/h;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

.field private d:Lcom/google/googlenav/ui/view/android/rideabout/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->a(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->a(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->a(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 49
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 51
    const v1, 0x7f0401d0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    const v0, 0x7f10044e

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->a:Landroid/widget/LinearLayout;

    .line 53
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 54
    const v0, 0x7f10044f

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->b:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f100450

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->c:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    .line 56
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/q;

    const v1, 0x7f0f00e7

    const v2, 0x7f0f00e8

    invoke-direct {v0, p1, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/q;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->d:Lcom/google/googlenav/ui/view/android/rideabout/q;

    .line 58
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->a(Lcom/google/android/maps/rideabout/app/a;)V

    .line 64
    return-void
.end method

.method public a(Lcom/google/android/maps/rideabout/app/a;)V
    .registers 10
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 75
    const-string v0, ""

    .line 76
    const-string v1, ""

    .line 77
    if-eqz p1, :cond_87

    .line 78
    sget-object v2, Lcom/google/android/maps/rideabout/view/m;->a:[I

    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/a;->l()Lcom/google/android/maps/rideabout/app/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/rideabout/app/c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_8c

    .line 95
    :goto_17
    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/a;->g()I

    move-result v2

    if-eqz v2, :cond_83

    .line 96
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/a;->g()I

    move-result v2

    invoke-static {v1, v2}, LF/n;->a(Landroid/content/Context;I)Landroid/text/Spannable;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 100
    :goto_2c
    iget-object v2, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 101
    iget-object v2, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->c:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->setGravity(I)V

    .line 103
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->c:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void

    .line 84
    :pswitch_43
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->d:Lcom/google/googlenav/ui/view/android/rideabout/q;

    const/16 v2, 0x48c

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Lcom/google/googlenav/ui/view/android/rideabout/n;

    iget-object v4, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->d:Lcom/google/googlenav/ui/view/android/rideabout/q;

    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/a;->k()LaP/h;

    move-result-object v5

    invoke-virtual {v5}, LaP/h;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/googlenav/ui/view/android/rideabout/q;->b(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/n;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/q;->b(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/n;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_17

    .line 90
    :pswitch_62
    iget-object v2, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->d:Lcom/google/googlenav/ui/view/android/rideabout/q;

    const/16 v0, 0x4c0

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Lcom/google/googlenav/ui/view/android/rideabout/n;

    iget-object v5, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->d:Lcom/google/googlenav/ui/view/android/rideabout/q;

    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/a;->k()LaP/h;

    move-result-object v0

    check-cast v0, LaP/s;

    invoke-virtual {v0}, LaP/s;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/googlenav/ui/view/android/rideabout/q;->b(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/n;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/ui/view/android/rideabout/q;->b(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/n;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_17

    :cond_83
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2c

    :cond_87
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2c

    .line 78
    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_62
        :pswitch_62
    .end packed-switch
.end method

.method public b()V
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->c:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->setGravity(I)V

    .line 70
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;->c:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    const/16 v1, 0x4c8

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method
