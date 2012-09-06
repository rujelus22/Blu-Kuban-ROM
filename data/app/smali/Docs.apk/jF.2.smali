.class public LjF;
.super Ljava/lang/Object;
.source "SelectionModeActionMenuImpl.java"

# interfaces
.implements LjC;


# instance fields
.field private final a:Landroid/app/Activity;

.field a:Landroid/view/ActionMode;

.field private final a:LjD;

.field private final a:LjE;


# direct methods
.method public constructor <init>(LjD;LjE;Landroid/app/Activity;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, LjF;->a:LjD;

    .line 48
    iput-object p2, p0, LjF;->a:LjE;

    .line 49
    iput-object p3, p0, LjF;->a:Landroid/app/Activity;

    .line 50
    return-void
.end method

.method static synthetic a(LjF;)LjD;
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, LjF;->a:LjD;

    return-object v0
.end method

.method private a(Landroid/view/ActionMode;)V
    .registers 3
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, LjF;->a:LjE;

    if-eqz v0, :cond_9

    .line 88
    iget-object v0, p0, LjF;->a:LjE;

    invoke-interface {v0}, LjE;->g()V

    .line 90
    :cond_9
    return-void
.end method

.method static synthetic a(LjF;Landroid/view/ActionMode;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, LjF;->a(Landroid/view/ActionMode;)V

    return-void
.end method

.method private a(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, LjF;->a:Landroid/view/ActionMode;

    .line 58
    iget-object v0, p0, LjF;->a:LjD;

    invoke-interface {v0}, LjD;->f()V

    .line 59
    iget-object v0, p0, LjF;->a:LjD;

    invoke-interface {v0, p2}, LjD;->a(Landroid/view/Menu;)V

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic a(LjF;Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, LjF;->a(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, LjF;->a:LjD;

    invoke-interface {v0}, LjD;->f()V

    .line 68
    iget-object v0, p0, LjF;->a:LjD;

    invoke-interface {v0, p2}, LjD;->b(Landroid/view/Menu;)V

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(LjF;Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, LjF;->b(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, LjF;->a:Landroid/app/Activity;

    new-instance v1, LjG;

    invoke-direct {v1, p0}, LjG;-><init>(LjF;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, LjF;->a:Landroid/view/ActionMode;

    .line 125
    return-void
.end method

.method a(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, LjF;->a:LjE;

    if-nez v0, :cond_6

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, LjF;->a:LjE;

    invoke-interface {v0, p2}, LjE;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_5
.end method

.method public b()V
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, LjF;->a:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 130
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, LjF;->a:Landroid/view/ActionMode;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_5
    const-string v1, "Open() should be called before invalidate()."

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 136
    iget-object v0, p0, LjF;->a:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 137
    return-void

    .line 134
    :cond_10
    const/4 v0, 0x0

    goto :goto_5
.end method
