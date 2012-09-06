.class public Lcom/anddoes/launcher/DeleteDropTarget;
.super Lcom/anddoes/launcher/ButtonDropTarget;
.source "SourceFile"


# static fields
.field private static f:I


# instance fields
.field private g:Landroid/content/res/ColorStateList;

.field private h:I

.field private i:Landroid/graphics/drawable/TransitionDrawable;

.field private j:Landroid/graphics/drawable/TransitionDrawable;

.field private k:Landroid/graphics/drawable/TransitionDrawable;

.field private l:Z

.field private m:Z

.field private final n:Landroid/os/Handler;

.field private final o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const/16 v0, 0xfa

    sput v0, Lcom/anddoes/launcher/DeleteDropTarget;->f:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anddoes/launcher/DeleteDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/anddoes/launcher/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/high16 v0, -0x1

    iput v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->h:I

    .line 46
    iput-boolean v1, p0, Lcom/anddoes/launcher/DeleteDropTarget;->l:Z

    .line 47
    iput-boolean v1, p0, Lcom/anddoes/launcher/DeleteDropTarget;->m:Z

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->n:Landroid/os/Handler;

    .line 51
    new-instance v0, Lcom/anddoes/launcher/bj;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/bj;-><init>(Lcom/anddoes/launcher/DeleteDropTarget;)V

    iput-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->o:Ljava/lang/Runnable;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/DeleteDropTarget;Lcom/anddoes/launcher/cc;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    instance-of v0, v0, Lcom/anddoes/launcher/jq;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    check-cast v0, Lcom/anddoes/launcher/jq;

    invoke-virtual {v0}, Lcom/anddoes/launcher/jq;->b()V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    check-cast v0, Lcom/anddoes/launcher/ec;

    iget-boolean v3, p0, Lcom/anddoes/launcher/DeleteDropTarget;->m:Z

    if-nez v3, :cond_20

    iget-object v3, p1, Lcom/anddoes/launcher/cc;->h:Lcom/anddoes/launcher/bw;

    invoke-static {v3, v0}, Lcom/anddoes/launcher/DeleteDropTarget;->b(Lcom/anddoes/launcher/bw;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    :cond_20
    instance-of v1, v0, Lcom/anddoes/launcher/kj;

    if-eqz v1, :cond_41

    move-object v1, v0

    check-cast v1, Lcom/anddoes/launcher/kj;

    iget-object v2, p0, Lcom/anddoes/launcher/DeleteDropTarget;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/anddoes/launcher/Launcher;->b(Landroid/content/ComponentName;)V

    iget-object v1, p0, Lcom/anddoes/launcher/DeleteDropTarget;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->k:Lcom/anddoes/launcher/preference/az;

    iget-wide v2, v0, Lcom/anddoes/launcher/ec;->h:J

    invoke-virtual {v1, v2, v3}, Lcom/anddoes/launcher/preference/az;->c(J)V

    iget-object v1, p0, Lcom/anddoes/launcher/DeleteDropTarget;->b:Lcom/anddoes/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/anddoes/launcher/LauncherModel;->b(Landroid/content/Context;Lcom/anddoes/launcher/ec;)V

    goto :goto_f

    :cond_41
    instance-of v1, v0, Lcom/anddoes/launcher/gn;

    if-eqz v1, :cond_63

    move-object v1, v0

    check-cast v1, Lcom/anddoes/launcher/gn;

    iget-object v2, p0, Lcom/anddoes/launcher/DeleteDropTarget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    iget v1, v1, Lcom/anddoes/launcher/gn;->a:I

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_5d

    iget-object v2, p0, Lcom/anddoes/launcher/DeleteDropTarget;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, v1}, Lcom/anddoes/launcher/Launcher;->b(Landroid/content/ComponentName;)V

    :cond_5d
    iget-object v1, p0, Lcom/anddoes/launcher/DeleteDropTarget;->b:Lcom/anddoes/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/anddoes/launcher/LauncherModel;->b(Landroid/content/Context;Lcom/anddoes/launcher/ec;)V

    goto :goto_f

    :cond_63
    instance-of v1, v0, Lcom/anddoes/launcher/y;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/anddoes/launcher/DeleteDropTarget;->b:Lcom/anddoes/launcher/Launcher;

    check-cast v0, Lcom/anddoes/launcher/y;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/y;)V

    goto :goto_f

    :cond_6f
    invoke-static {p1}, Lcom/anddoes/launcher/DeleteDropTarget;->f(Lcom/anddoes/launcher/cc;)Z

    move-result v3

    if-eqz v3, :cond_96

    iget-object v3, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    instance-of v3, v3, Lcom/anddoes/launcher/kj;

    if-eqz v3, :cond_96

    move v3, v1

    :goto_7c
    if-nez v3, :cond_82

    instance-of v3, v0, Lcom/anddoes/launcher/ki;

    if-eqz v3, :cond_98

    :cond_82
    instance-of v1, v0, Lcom/anddoes/launcher/kj;

    if-eqz v1, :cond_8f

    iget-object v1, p0, Lcom/anddoes/launcher/DeleteDropTarget;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->k:Lcom/anddoes/launcher/preference/az;

    iget-wide v2, v0, Lcom/anddoes/launcher/ec;->h:J

    invoke-virtual {v1, v2, v3}, Lcom/anddoes/launcher/preference/az;->c(J)V

    :cond_8f
    iget-object v1, p0, Lcom/anddoes/launcher/DeleteDropTarget;->b:Lcom/anddoes/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/anddoes/launcher/LauncherModel;->b(Landroid/content/Context;Lcom/anddoes/launcher/ec;)V

    goto/16 :goto_f

    :cond_96
    move v3, v2

    goto :goto_7c

    :cond_98
    iget-object v3, p1, Lcom/anddoes/launcher/cc;->h:Lcom/anddoes/launcher/bw;

    instance-of v3, v3, Lcom/anddoes/launcher/Workspace;

    if-eqz v3, :cond_b5

    iget-object v3, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    instance-of v3, v3, Lcom/anddoes/launcher/dd;

    if-eqz v3, :cond_b5

    move v3, v1

    :goto_a5
    if-eqz v3, :cond_b7

    check-cast v0, Lcom/anddoes/launcher/dd;

    iget-object v1, p0, Lcom/anddoes/launcher/DeleteDropTarget;->b:Lcom/anddoes/launcher/Launcher;

    invoke-static {v0}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/dd;)V

    iget-object v1, p0, Lcom/anddoes/launcher/DeleteDropTarget;->b:Lcom/anddoes/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Lcom/anddoes/launcher/dd;)V

    goto/16 :goto_f

    :cond_b5
    move v3, v2

    goto :goto_a5

    :cond_b7
    invoke-static {p1}, Lcom/anddoes/launcher/DeleteDropTarget;->f(Lcom/anddoes/launcher/cc;)Z

    move-result v3

    if-eqz v3, :cond_e8

    iget-object v3, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    instance-of v3, v3, Lcom/anddoes/launcher/gn;

    if-eqz v3, :cond_e8

    :goto_c3
    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/anddoes/launcher/DeleteDropTarget;->b:Lcom/anddoes/launcher/Launcher;

    move-object v1, v0

    check-cast v1, Lcom/anddoes/launcher/gn;

    invoke-virtual {v2, v1}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/gn;)V

    iget-object v1, p0, Lcom/anddoes/launcher/DeleteDropTarget;->b:Lcom/anddoes/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/anddoes/launcher/LauncherModel;->b(Landroid/content/Context;Lcom/anddoes/launcher/ec;)V

    check-cast v0, Lcom/anddoes/launcher/gn;

    iget-object v1, p0, Lcom/anddoes/launcher/DeleteDropTarget;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->v()Lcom/anddoes/launcher/gk;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v2, Lcom/anddoes/launcher/bl;

    const-string v3, "deleteAppWidgetId"

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/anddoes/launcher/bl;-><init>(Lcom/anddoes/launcher/DeleteDropTarget;Ljava/lang/String;Lcom/anddoes/launcher/gk;Lcom/anddoes/launcher/gn;)V

    invoke-virtual {v2}, Lcom/anddoes/launcher/bl;->start()V

    goto/16 :goto_f

    :cond_e8
    move v1, v2

    goto :goto_c3
.end method

.method static synthetic a(Lcom/anddoes/launcher/DeleteDropTarget;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/DeleteDropTarget;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 162
    if-eqz p1, :cond_26

    .line 163
    iget-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->i:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/anddoes/launcher/DeleteDropTarget;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 167
    :goto_8
    invoke-virtual {p0}, Lcom/anddoes/launcher/DeleteDropTarget;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->k:Landroid/graphics/drawable/TransitionDrawable;

    .line 168
    invoke-virtual {p0}, Lcom/anddoes/launcher/DeleteDropTarget;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_25

    .line 169
    if-eqz p1, :cond_2c

    const v0, 0x7f06026f

    :goto_22
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/DeleteDropTarget;->setText(I)V

    .line 172
    :cond_25
    return-void

    .line 165
    :cond_26
    iget-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->j:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/anddoes/launcher/DeleteDropTarget;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 170
    :cond_2c
    const v0, 0x7f06026e

    goto :goto_22
.end method

.method static synthetic a(Lcom/anddoes/launcher/DeleteDropTarget;)Z
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/anddoes/launcher/DeleteDropTarget;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->m:Z

    return-void
.end method

.method private static b(Lcom/anddoes/launcher/bw;Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 102
    instance-of v0, p0, Lcom/anddoes/launcher/AppsCustomizePagedView;

    if-eqz v0, :cond_a

    instance-of v0, p1, Lcom/anddoes/launcher/y;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic c(Lcom/anddoes/launcher/DeleteDropTarget;)Z
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->m:Z

    return v0
.end method

.method static synthetic d(Lcom/anddoes/launcher/DeleteDropTarget;)Landroid/graphics/drawable/TransitionDrawable;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->k:Landroid/graphics/drawable/TransitionDrawable;

    return-object v0
.end method

.method static synthetic e(Lcom/anddoes/launcher/DeleteDropTarget;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static f(Lcom/anddoes/launcher/cc;)Z
    .registers 2
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/anddoes/launcher/cc;->h:Lcom/anddoes/launcher/bw;

    instance-of v0, v0, Lcom/anddoes/launcher/Workspace;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/anddoes/launcher/cc;->h:Lcom/anddoes/launcher/bw;

    instance-of v0, v0, Lcom/anddoes/launcher/Folder;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method


# virtual methods
.method public final a(Lcom/anddoes/launcher/bw;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    .line 134
    iput-boolean v1, p0, Lcom/anddoes/launcher/DeleteDropTarget;->l:Z

    .line 137
    instance-of v0, p1, Lcom/anddoes/launcher/AppsCustomizePagedView;

    if-eqz v0, :cond_3e

    instance-of v0, p2, Lcom/anddoes/launcher/jo;

    if-eqz v0, :cond_3e

    move v0, v2

    :goto_d
    if-eqz v0, :cond_47

    move v0, v1

    .line 143
    :goto_10
    invoke-static {p1, p2}, Lcom/anddoes/launcher/DeleteDropTarget;->b(Lcom/anddoes/launcher/bw;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 144
    check-cast p2, Lcom/anddoes/launcher/y;

    .line 145
    iget v3, p2, Lcom/anddoes/launcher/y;->g:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_40

    .line 146
    iput-boolean v2, p0, Lcom/anddoes/launcher/DeleteDropTarget;->l:Z

    move v2, v0

    .line 152
    :goto_21
    iget-boolean v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->l:Z

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/DeleteDropTarget;->a(Z)V

    .line 154
    iput-boolean v2, p0, Lcom/anddoes/launcher/DeleteDropTarget;->d:Z

    .line 155
    iget-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->k:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 156
    iget-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/DeleteDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 157
    invoke-virtual {p0}, Lcom/anddoes/launcher/DeleteDropTarget;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_42

    :goto_3a
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 158
    return-void

    :cond_3e
    move v0, v1

    .line 137
    goto :goto_d

    :cond_40
    move v2, v1

    .line 148
    goto :goto_21

    .line 157
    :cond_42
    const/16 v1, 0x8

    goto :goto_3a

    :cond_45
    move v2, v0

    goto :goto_21

    :cond_47
    move v0, v2

    goto :goto_10
.end method

.method public final a(Lcom/anddoes/launcher/cc;)V
    .registers 13
    .parameter

    .prologue
    const v4, 0x3dcccccd

    .line 312
    iget-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->r()Lcom/anddoes/launcher/DragLayer;

    move-result-object v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p1, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/DragLayer;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v0, p0, v3}, Lcom/anddoes/launcher/DragLayer;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/anddoes/launcher/DeleteDropTarget;->k:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v5, p0, Lcom/anddoes/launcher/DeleteDropTarget;->k:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicHeight()I

    move-result v5

    iget v6, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/DeleteDropTarget;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/DeleteDropTarget;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/DeleteDropTarget;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v1

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, p1, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    invoke-virtual {v6}, Lcom/anddoes/launcher/bx;->getMeasuredWidth()I

    move-result v6

    sub-int v1, v6, v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v6, p1, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    invoke-virtual {v6}, Lcom/anddoes/launcher/bx;->getMeasuredHeight()I

    move-result v6

    sub-int v5, v6, v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v1, v5}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/anddoes/launcher/DeleteDropTarget;->c:Lcom/anddoes/launcher/SearchDropTargetBar;

    invoke-virtual {v1}, Lcom/anddoes/launcher/SearchDropTargetBar;->d()V

    new-instance v9, Lcom/anddoes/launcher/bk;

    invoke-direct {v9, p0, p1}, Lcom/anddoes/launcher/bk;-><init>(Lcom/anddoes/launcher/DeleteDropTarget;Lcom/anddoes/launcher/cc;)V

    iget-object v1, p1, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    sget v6, Lcom/anddoes/launcher/DeleteDropTarget;->f:I

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x4000

    invoke-direct {v7, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x3fc0

    invoke-direct {v8, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    const/4 v10, 0x0

    move v5, v4

    invoke-virtual/range {v0 .. v10}, Lcom/anddoes/launcher/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V

    .line 313
    return-void
.end method

.method public final b(Lcom/anddoes/launcher/cc;)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-super {p0, p1}, Lcom/anddoes/launcher/ButtonDropTarget;->b(Lcom/anddoes/launcher/cc;)V

    .line 182
    iget-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->h:Lcom/anddoes/launcher/ui/f;

    if-eqz v0, :cond_16

    .line 183
    iget-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->h:Lcom/anddoes/launcher/ui/f;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ui/f;->b()V

    .line 184
    iget-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->b:Lcom/anddoes/launcher/Launcher;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anddoes/launcher/Launcher;->h:Lcom/anddoes/launcher/ui/f;

    .line 186
    :cond_16
    const/4 v1, 0x1

    .line 187
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    instance-of v0, v0, Lcom/anddoes/launcher/kj;

    if-eqz v0, :cond_72

    .line 188
    iget-object v0, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    check-cast v0, Lcom/anddoes/launcher/kj;

    .line 189
    iget-object v3, v0, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    if-eqz v3, :cond_3d

    .line 190
    iget-object v0, v0, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_3d

    iget-object v3, p0, Lcom/anddoes/launcher/DeleteDropTarget;->b:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v3}, Lcom/anddoes/launcher/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    :cond_3d
    move v0, v2

    .line 198
    :goto_3e
    iget-object v1, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    instance-of v1, v1, Lcom/anddoes/launcher/dd;

    if-nez v1, :cond_50

    .line 199
    iget-object v1, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    instance-of v1, v1, Lcom/anddoes/launcher/ki;

    if-nez v1, :cond_50

    .line 200
    iget-object v1, p1, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    instance-of v1, v1, Lcom/anddoes/launcher/jq;

    if-eqz v1, :cond_51

    :cond_50
    move v0, v2

    .line 203
    :cond_51
    if-eqz v0, :cond_63

    .line 204
    iget-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anddoes/launcher/DeleteDropTarget;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 205
    iget-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anddoes/launcher/DeleteDropTarget;->o:Ljava/lang/Runnable;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 207
    :cond_63
    iput-boolean v2, p0, Lcom/anddoes/launcher/DeleteDropTarget;->m:Z

    .line 208
    iget-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->k:Landroid/graphics/drawable/TransitionDrawable;

    iget v1, p0, Lcom/anddoes/launcher/DeleteDropTarget;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 209
    iget v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->h:I

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/DeleteDropTarget;->setTextColor(I)V

    .line 210
    return-void

    :cond_72
    move v0, v1

    goto :goto_3e
.end method

.method public final d(Lcom/anddoes/launcher/cc;)V
    .registers 4
    .parameter

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/anddoes/launcher/ButtonDropTarget;->d(Lcom/anddoes/launcher/cc;)V

    .line 214
    iget-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anddoes/launcher/DeleteDropTarget;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    iget-boolean v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->l:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->m:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p1, Lcom/anddoes/launcher/cc;->e:Z

    if-nez v0, :cond_1b

    .line 216
    iget-boolean v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->l:Z

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/DeleteDropTarget;->a(Z)V

    .line 218
    :cond_1b
    iget-boolean v0, p1, Lcom/anddoes/launcher/cc;->e:Z

    if-nez v0, :cond_29

    .line 219
    iget-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->k:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 220
    iget-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/DeleteDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 222
    :cond_29
    return-void
.end method

.method public final d_()V
    .registers 2

    .prologue
    .line 176
    invoke-super {p0}, Lcom/anddoes/launcher/ButtonDropTarget;->d_()V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->d:Z

    .line 178
    return-void
.end method

.method public final e(Lcom/anddoes/launcher/cc;)Z
    .registers 3
    .parameter

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 73
    invoke-super {p0}, Lcom/anddoes/launcher/ButtonDropTarget;->onFinishInflate()V

    .line 76
    invoke-virtual {p0}, Lcom/anddoes/launcher/DeleteDropTarget;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->g:Landroid/content/res/ColorStateList;

    .line 79
    invoke-virtual {p0}, Lcom/anddoes/launcher/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 80
    const/high16 v0, 0x7f09

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->h:I

    .line 81
    iget-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->e:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lcom/anddoes/launcher/DeleteDropTarget;->h:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 82
    const v0, 0x7f02008b

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->i:Landroid/graphics/drawable/TransitionDrawable;

    .line 83
    const v0, 0x7f020079

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->j:Landroid/graphics/drawable/TransitionDrawable;

    .line 85
    iget-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->j:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->i:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/anddoes/launcher/DeleteDropTarget;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/anddoes/launcher/DeleteDropTarget;->k:Landroid/graphics/drawable/TransitionDrawable;

    .line 93
    invoke-virtual {p0}, Lcom/anddoes/launcher/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 94
    const/4 v1, 0x2

    if-ne v0, v1, :cond_67

    .line 95
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v0

    if-nez v0, :cond_67

    .line 96
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/DeleteDropTarget;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_67
    return-void
.end method
