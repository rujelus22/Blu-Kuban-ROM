.class LjG;
.super Ljava/lang/Object;
.source "SelectionModeActionMenuImpl.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field final synthetic a:LjF;


# direct methods
.method constructor <init>(LjF;)V
    .registers 2
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, LjG;->a:LjF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, LjG;->a:LjF;

    invoke-static {v0}, LjF;->a(LjF;)LjD;

    move-result-object v0

    invoke-interface {v0}, LjD;->f()V

    .line 104
    iget-object v0, p0, LjG;->a:LjF;

    invoke-virtual {v0, p1, p2}, LjF;->a(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, LjG;->a:LjF;

    invoke-static {v0}, LjF;->a(LjF;)LjD;

    move-result-object v0

    invoke-interface {v0}, LjD;->f()V

    .line 110
    iget-object v0, p0, LjG;->a:LjF;

    invoke-static {v0, p1, p2}, LjF;->a(LjF;Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, LjG;->a:LjF;

    invoke-static {v0}, LjF;->a(LjF;)LjD;

    move-result-object v0

    invoke-interface {v0}, LjD;->f()V

    .line 116
    iget-object v0, p0, LjG;->a:LjF;

    invoke-static {v0, p1}, LjF;->a(LjF;Landroid/view/ActionMode;)V

    .line 117
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, LjG;->a:LjF;

    invoke-static {v0}, LjF;->a(LjF;)LjD;

    move-result-object v0

    invoke-interface {v0}, LjD;->f()V

    .line 122
    iget-object v0, p0, LjG;->a:LjF;

    invoke-static {v0, p1, p2}, LjF;->b(LjF;Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
