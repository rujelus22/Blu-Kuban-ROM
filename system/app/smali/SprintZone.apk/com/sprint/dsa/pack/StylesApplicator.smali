.class public Lcom/sprint/dsa/pack/StylesApplicator;
.super Ljava/lang/Object;
.source "StylesApplicator.java"


# instance fields
.field private allStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/pack/Style;",
            ">;"
        }
    .end annotation
.end field

.field private pack:Lcom/sprint/dsa/pack/Pack;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/pack/StylesApplicator;->pack:Lcom/sprint/dsa/pack/Pack;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/pack/StylesApplicator;->allStyles:Ljava/util/List;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/sprint/dsa/pack/Pack;)V
    .registers 3
    .parameter "pack"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/pack/StylesApplicator;->pack:Lcom/sprint/dsa/pack/Pack;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/pack/StylesApplicator;->allStyles:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/sprint/dsa/pack/StylesApplicator;->pack:Lcom/sprint/dsa/pack/Pack;

    .line 29
    iget-object v0, p0, Lcom/sprint/dsa/pack/StylesApplicator;->pack:Lcom/sprint/dsa/pack/Pack;

    iget-object v0, v0, Lcom/sprint/dsa/pack/Pack;->styles:Ljava/util/List;

    iput-object v0, p0, Lcom/sprint/dsa/pack/StylesApplicator;->allStyles:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public add(Lcom/sprint/dsa/pack/Style;)V
    .registers 3
    .parameter "style"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sprint/dsa/pack/StylesApplicator;->allStyles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public apply(Landroid/app/Activity;)V
    .registers 7
    .parameter "activity"

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 40
    .local v2, rootView:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/sprint/dsa/pack/StylesApplicator;->apply(Landroid/view/View;)V

    .line 46
    const v3, 0x7f0b0046

    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, listView:Landroid/view/View;
    if-eqz v1, :cond_32

    .line 48
    iget-object v3, p0, Lcom/sprint/dsa/pack/StylesApplicator;->pack:Lcom/sprint/dsa/pack/Pack;

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/sprint/dsa/pack/StylesApplicator;->pack:Lcom/sprint/dsa/pack/Pack;

    iget-object v3, v3, Lcom/sprint/dsa/pack/Pack;->backgroundImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_33

    .line 50
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 51
    iget-object v4, p0, Lcom/sprint/dsa/pack/StylesApplicator;->pack:Lcom/sprint/dsa/pack/Pack;

    iget-object v4, v4, Lcom/sprint/dsa/pack/Pack;->backgroundImage:Landroid/graphics/Bitmap;

    .line 50
    invoke-direct {v0, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 52
    .local v0, d:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    .end local v0           #d:Landroid/graphics/drawable/BitmapDrawable;
    :cond_32
    :goto_32
    return-void

    .line 54
    :cond_33
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_32
.end method

.method public apply(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 60
    if-nez p1, :cond_3

    .line 71
    .end local p1
    :goto_2
    return-void

    .line 62
    .restart local p1
    :cond_3
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    .line 63
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/pack/StylesApplicator;->apply(Landroid/view/ViewGroup;)V

    goto :goto_2

    .line 65
    .restart local p1
    :cond_d
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_17

    .line 66
    check-cast p1, Landroid/widget/ListView;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/pack/StylesApplicator;->apply(Landroid/widget/ListView;)V

    goto :goto_2

    .line 69
    .restart local p1
    :cond_17
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/pack/StylesApplicator;->applyStyles(Landroid/view/View;)V

    goto :goto_2
.end method

.method public apply(Landroid/view/ViewGroup;)V
    .registers 5
    .parameter "group"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/pack/StylesApplicator;->applyStyles(Landroid/view/View;)V

    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, view:Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_c

    .line 82
    return-void

    .line 79
    :cond_c
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 80
    invoke-virtual {p0, v1}, Lcom/sprint/dsa/pack/StylesApplicator;->apply(Landroid/view/View;)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public apply(Landroid/widget/ListView;)V
    .registers 5
    .parameter "listView"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/pack/StylesApplicator;->applyStyles(Landroid/view/View;)V

    .line 89
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_b

    .line 93
    return-void

    .line 90
    :cond_b
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/sprint/dsa/pack/StylesApplicator;->apply(Landroid/view/View;)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method protected applyStyle(Landroid/view/View;Lcom/sprint/dsa/pack/Style;)V
    .registers 3
    .parameter "view"
    .parameter "style"

    .prologue
    .line 104
    invoke-virtual {p2, p1}, Lcom/sprint/dsa/pack/Style;->apply(Landroid/view/View;)V

    .line 105
    return-void
.end method

.method protected applyStyles(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/sprint/dsa/pack/StylesApplicator;->allStyles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 101
    return-void

    .line 96
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/pack/Style;

    .line 97
    .local v0, style:Lcom/sprint/dsa/pack/Style;
    invoke-virtual {v0, p1}, Lcom/sprint/dsa/pack/Style;->forView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/sprint/dsa/pack/StylesApplicator;->applyStyle(Landroid/view/View;Lcom/sprint/dsa/pack/Style;)V

    goto :goto_6
.end method
