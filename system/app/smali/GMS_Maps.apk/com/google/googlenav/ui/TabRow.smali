.class public Lcom/google/googlenav/ui/TabRow;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/LinearLayout;

.field private c:Lcom/google/googlenav/ui/aY;

.field private d:Lcom/google/googlenav/ui/aZ;

.field private e:I

.field private f:Z

.field private final g:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/google/googlenav/ui/TabRow;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/TabRow;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput v2, p0, Lcom/google/googlenav/ui/TabRow;->e:I

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/TabRow;->f:Z

    .line 55
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/TabRow;->b:Landroid/widget/LinearLayout;

    .line 56
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    iget-object v1, p0, Lcom/google/googlenav/ui/TabRow;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/ui/TabRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/TabRow;->setHorizontalScrollBarEnabled(Z)V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/TabRow;->g:Ljava/util/Map;

    .line 61
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/TabRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 125
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 126
    iget-object v0, p0, Lcom/google/googlenav/ui/TabRow;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 127
    return-void
.end method

.method public a(IZ)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 141
    iget-boolean v0, p0, Lcom/google/googlenav/ui/TabRow;->f:Z

    if-eqz v0, :cond_8

    .line 143
    iput p1, p0, Lcom/google/googlenav/ui/TabRow;->e:I

    .line 160
    :cond_7
    :goto_7
    return-void

    .line 146
    :cond_8
    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/TabRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 147
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    move v3, v2

    .line 148
    :goto_13
    if-ge v3, v4, :cond_25

    .line 149
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v3, p1, :cond_23

    const/4 v1, 0x1

    :goto_1c
    invoke-virtual {v5, v1}, Landroid/view/View;->setSelected(Z)V

    .line 148
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_13

    :cond_23
    move v1, v2

    .line 149
    goto :goto_1c

    .line 151
    :cond_25
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_7

    .line 153
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/TabRow;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 154
    if-eqz p2, :cond_41

    .line 155
    invoke-virtual {p0, v0, v2}, Lcom/google/googlenav/ui/TabRow;->smoothScrollTo(II)V

    goto :goto_7

    .line 157
    :cond_41
    invoke-virtual {p0, v0, v2}, Lcom/google/googlenav/ui/TabRow;->scrollTo(II)V

    goto :goto_7
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 69
    if-eqz p2, :cond_5

    if-nez p1, :cond_6

    .line 89
    :cond_5
    :goto_5
    return-void

    .line 73
    :cond_6
    invoke-virtual {p0}, Lcom/google/googlenav/ui/TabRow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 74
    const v1, 0x7f04019a

    iget-object v2, p0, Lcom/google/googlenav/ui/TabRow;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/google/googlenav/ui/TabRow;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 79
    iget-object v1, p0, Lcom/google/googlenav/ui/TabRow;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 80
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 83
    const v1, 0x7f100424

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 84
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lcom/google/googlenav/ui/TabRow;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iput-boolean v3, p0, Lcom/google/googlenav/ui/TabRow;->f:Z

    goto :goto_5
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/googlenav/ui/TabRow;->c:Lcom/google/googlenav/ui/aY;

    if-eqz v0, :cond_11

    .line 95
    iget-object v0, p0, Lcom/google/googlenav/ui/TabRow;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 96
    if-ltz v0, :cond_11

    .line 97
    iget-object v1, p0, Lcom/google/googlenav/ui/TabRow;->c:Lcom/google/googlenav/ui/aY;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/aY;->a(I)V

    .line 100
    :cond_11
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/TabRow;->f:Z

    .line 133
    iget v0, p0, Lcom/google/googlenav/ui/TabRow;->e:I

    .line 134
    if-ltz v0, :cond_11

    .line 135
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/googlenav/ui/TabRow;->e:I

    .line 136
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/TabRow;->a(IZ)V

    .line 138
    :cond_11
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/googlenav/ui/TabRow;->d:Lcom/google/googlenav/ui/aZ;

    if-eqz v0, :cond_11

    .line 105
    iget-object v0, p0, Lcom/google/googlenav/ui/TabRow;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 106
    if-ltz v0, :cond_11

    .line 107
    iget-object v1, p0, Lcom/google/googlenav/ui/TabRow;->d:Lcom/google/googlenav/ui/aZ;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/aZ;->a(I)V

    .line 110
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public setOnTabClickListener(Lcom/google/googlenav/ui/aY;)V
    .registers 2
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/googlenav/ui/TabRow;->c:Lcom/google/googlenav/ui/aY;

    .line 164
    return-void
.end method

.method public setOnTabClickListener(Lcom/google/googlenav/ui/aZ;)V
    .registers 2
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/googlenav/ui/TabRow;->d:Lcom/google/googlenav/ui/aZ;

    .line 168
    return-void
.end method
