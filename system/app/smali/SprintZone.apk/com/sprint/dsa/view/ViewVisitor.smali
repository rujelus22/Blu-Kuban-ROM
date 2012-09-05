.class public Lcom/sprint/dsa/view/ViewVisitor;
.super Ljava/lang/Object;
.source "ViewVisitor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public traverse(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/view/ViewVisitor;->traverse(Landroid/view/View;)V

    .line 12
    return-void
.end method

.method public traverse(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 15
    if-nez p1, :cond_3

    .line 26
    .end local p1
    :goto_2
    return-void

    .line 17
    .restart local p1
    :cond_3
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    .line 18
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/view/ViewVisitor;->traverse(Landroid/view/ViewGroup;)V

    goto :goto_2

    .line 20
    .restart local p1
    :cond_d
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_17

    .line 21
    check-cast p1, Landroid/widget/ListView;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/view/ViewVisitor;->traverse(Landroid/widget/ListView;)V

    goto :goto_2

    .line 24
    .restart local p1
    :cond_17
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/view/ViewVisitor;->visit(Landroid/view/View;)V

    goto :goto_2
.end method

.method public traverse(Landroid/view/ViewGroup;)V
    .registers 5
    .parameter "group"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/view/ViewVisitor;->visit(Landroid/view/View;)V

    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, view:Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_c

    .line 37
    return-void

    .line 34
    :cond_c
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 35
    invoke-virtual {p0, v1}, Lcom/sprint/dsa/view/ViewVisitor;->traverse(Landroid/view/View;)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public traverse(Landroid/widget/ListView;)V
    .registers 5
    .parameter "listView"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/view/ViewVisitor;->visit(Landroid/view/View;)V

    .line 44
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_b

    .line 48
    return-void

    .line 45
    :cond_b
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 46
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/sprint/dsa/view/ViewVisitor;->traverse(Landroid/view/View;)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public visit(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 53
    return-void
.end method
