.class final Lcom/anddoes/launcher/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Folder;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Folder;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/cm;->a:Lcom/anddoes/launcher/Folder;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 2
    .parameter

    .prologue
    .line 212
    return-void
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method
