.class public Lcom/anddoes/launcher/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/view/View;

.field protected final b:Landroid/widget/PopupWindow;

.field protected final c:Landroid/view/WindowManager;

.field private d:Landroid/view/View;

.field private e:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/ui/b;->e:Landroid/graphics/drawable/Drawable;

    .line 35
    iput-object p1, p0, Lcom/anddoes/launcher/ui/b;->a:Landroid/view/View;

    .line 36
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/ui/b;->b:Landroid/widget/PopupWindow;

    .line 40
    iget-object v0, p0, Lcom/anddoes/launcher/ui/b;->b:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/anddoes/launcher/ui/c;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/ui/c;-><init>(Lcom/anddoes/launcher/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    const-string v1, "window"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/anddoes/launcher/ui/b;->c:Landroid/view/WindowManager;

    .line 56
    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 5

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x1

    .line 73
    iget-object v0, p0, Lcom/anddoes/launcher/ui/b;->d:Landroid/view/View;

    if-nez v0, :cond_e

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 75
    const-string v1, "setContentView was not called with a view to display."

    .line 74
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_e
    iget-object v0, p0, Lcom/anddoes/launcher/ui/b;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3d

    .line 81
    iget-object v0, p0, Lcom/anddoes/launcher/ui/b;->b:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    :goto_1c
    iget-object v0, p0, Lcom/anddoes/launcher/ui/b;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 92
    iget-object v0, p0, Lcom/anddoes/launcher/ui/b;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 93
    iget-object v0, p0, Lcom/anddoes/launcher/ui/b;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 94
    iget-object v0, p0, Lcom/anddoes/launcher/ui/b;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 95
    iget-object v0, p0, Lcom/anddoes/launcher/ui/b;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 97
    iget-object v0, p0, Lcom/anddoes/launcher/ui/b;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/anddoes/launcher/ui/b;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 98
    return-void

    .line 83
    :cond_3d
    iget-object v0, p0, Lcom/anddoes/launcher/ui/b;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/anddoes/launcher/ui/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1c
.end method

.method public final a(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/anddoes/launcher/ui/b;->d:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/anddoes/launcher/ui/b;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 114
    return-void
.end method

.method public final a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 3
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/anddoes/launcher/ui/b;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 135
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/anddoes/launcher/ui/b;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 212
    return-void
.end method
