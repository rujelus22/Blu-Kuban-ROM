.class public Lcom/google/googlenav/ui/ba;
.super Landroid/support/v4/view/x;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ai;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

.field private final c:Landroid/support/v4/view/ViewPager;

.field private final d:Landroid/view/LayoutInflater;

.field private final e:Lcom/google/googlenav/ui/bc;

.field private final f:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;Landroid/support/v4/view/ViewPager;Landroid/view/LayoutInflater;Lcom/google/googlenav/ui/bc;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/support/v4/view/x;-><init>()V

    .line 55
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/ba;->f:Ljava/util/List;

    .line 59
    iput-object p1, p0, Lcom/google/googlenav/ui/ba;->a:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/google/googlenav/ui/ba;->b:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    .line 61
    iput-object p3, p0, Lcom/google/googlenav/ui/ba;->c:Landroid/support/v4/view/ViewPager;

    .line 62
    invoke-virtual {p2, p0}, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 63
    iget-object v0, p0, Lcom/google/googlenav/ui/ba;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/x;)V

    .line 64
    iget-object v0, p0, Lcom/google/googlenav/ui/ba;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ai;)V

    .line 65
    iput-object p4, p0, Lcom/google/googlenav/ui/ba;->d:Landroid/view/LayoutInflater;

    .line 66
    iput-object p5, p0, Lcom/google/googlenav/ui/ba;->e:Lcom/google/googlenav/ui/bc;

    .line 67
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/view/View;
    .registers 5
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/googlenav/ui/ba;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f04019b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 122
    const v0, 0x7f100034

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    return-object v1
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/googlenav/ui/ba;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;I)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/googlenav/ui/ba;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 87
    check-cast p1, Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 88
    return-object v0
.end method

.method public a(IFI)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    return-void
.end method

.method public a(ILandroid/view/View;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-static {p1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/google/googlenav/ui/ba;->b:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 111
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/ba;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 112
    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 113
    new-instance v0, Lcom/google/googlenav/ui/bb;

    iget-object v2, p0, Lcom/google/googlenav/ui/ba;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/googlenav/ui/bb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 115
    iget-object v0, p0, Lcom/google/googlenav/ui/ba;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/google/googlenav/ui/ba;->b:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 117
    invoke-virtual {p0}, Lcom/google/googlenav/ui/ba;->c()V

    .line 118
    return-void
.end method

.method public a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 160
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 169
    return-void
.end method

.method public a(Landroid/view/View;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 98
    check-cast p2, Landroid/view/View;

    if-ne p1, p2, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    return-void
.end method

.method public d_(I)V
    .registers 3
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/googlenav/ui/ba;->b:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;->setCurrentTab(I)V

    .line 148
    return-void
.end method

.method public e_(I)V
    .registers 2
    .parameter

    .prologue
    .line 152
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/googlenav/ui/ba;->b:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;->getCurrentTab()I

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/google/googlenav/ui/ba;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 132
    iget-object v1, p0, Lcom/google/googlenav/ui/ba;->e:Lcom/google/googlenav/ui/bc;

    if-eqz v1, :cond_14

    .line 133
    iget-object v1, p0, Lcom/google/googlenav/ui/ba;->e:Lcom/google/googlenav/ui/bc;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/bc;->a(I)V

    .line 138
    :cond_14
    iget-object v1, p0, Lcom/google/googlenav/ui/ba;->b:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    iget-object v2, p0, Lcom/google/googlenav/ui/ba;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;->setCurrentTabContentView(Landroid/view/View;)V

    .line 139
    return-void
.end method
