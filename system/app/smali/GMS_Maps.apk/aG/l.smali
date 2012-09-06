.class public Lag/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lag/a;


# instance fields
.field private final a:Landroid/widget/ListPopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lag/b;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/widget/ListPopupWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lag/l;->a:Landroid/widget/ListPopupWindow;

    .line 22
    iget-object v0, p0, Lag/l;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 23
    iget-object v0, p0, Lag/l;->a:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 24
    iget-object v0, p0, Lag/l;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 26
    iget-object v0, p0, Lag/l;->a:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 27
    iget-object v0, p0, Lag/l;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p3}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lag/l;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 33
    return-void
.end method

.method public a(Lag/d;)V
    .registers 3
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lag/l;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lag/l;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 48
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lag/l;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lag/l;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 43
    return-void
.end method
