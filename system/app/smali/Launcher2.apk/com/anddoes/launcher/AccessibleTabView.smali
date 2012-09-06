.class public Lcom/anddoes/launcher/AccessibleTabView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private a:Landroid/widget/ListPopupWindow;

.field private b:Landroid/view/View$OnClickListener;

.field private c:Lcom/anddoes/launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/AccessibleTabView;->a:Landroid/widget/ListPopupWindow;

    .line 36
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/AccessibleTabView;->a(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/AccessibleTabView;->a:Landroid/widget/ListPopupWindow;

    .line 41
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/AccessibleTabView;->a(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/AccessibleTabView;->a:Landroid/widget/ListPopupWindow;

    .line 46
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/AccessibleTabView;->a(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method private a()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/anddoes/launcher/AccessibleTabView;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 95
    iget-object v0, p0, Lcom/anddoes/launcher/AccessibleTabView;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 99
    :goto_d
    return-void

    .line 97
    :cond_e
    iget-object v0, p0, Lcom/anddoes/launcher/AccessibleTabView;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_d
.end method

.method private a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {p0, p0}, Lcom/anddoes/launcher/AccessibleTabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 52
    check-cast p1, Lcom/anddoes/launcher/Launcher;

    iput-object p1, p0, Lcom/anddoes/launcher/AccessibleTabView;->c:Lcom/anddoes/launcher/Launcher;

    .line 53
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ListPopupWindow;)V
    .registers 3
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/anddoes/launcher/AccessibleTabView;->a:Landroid/widget/ListPopupWindow;

    .line 103
    iget-object v0, p0, Lcom/anddoes/launcher/AccessibleTabView;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 104
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/anddoes/launcher/AccessibleTabView;->c:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->p()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/anddoes/launcher/AccessibleTabView;->a:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_16

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 71
    invoke-direct {p0}, Lcom/anddoes/launcher/AccessibleTabView;->a()V

    .line 78
    :goto_15
    return-void

    .line 76
    :cond_16
    iget-object v0, p0, Lcom/anddoes/launcher/AccessibleTabView;->b:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_15
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Lcom/anddoes/launcher/ck;->a(Lcom/anddoes/launcher/AccessibleTabView;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 58
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    .line 57
    goto :goto_d
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-static {p0, p1, p2}, Lcom/anddoes/launcher/ck;->a(Lcom/anddoes/launcher/AccessibleTabView;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 64
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    .line 63
    goto :goto_d
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/anddoes/launcher/AccessibleTabView;->c:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->p()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/anddoes/launcher/AccessibleTabView;->a:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_1d

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_19

    .line 84
    iget-object v0, p0, Lcom/anddoes/launcher/AccessibleTabView;->b:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 88
    :goto_17
    const/4 v0, 0x1

    .line 90
    :goto_18
    return v0

    .line 86
    :cond_19
    invoke-direct {p0}, Lcom/anddoes/launcher/AccessibleTabView;->a()V

    goto :goto_17

    .line 90
    :cond_1d
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/anddoes/launcher/AccessibleTabView;->b:Landroid/view/View$OnClickListener;

    .line 109
    return-void
.end method
