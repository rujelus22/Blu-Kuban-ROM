.class final Lcom/anddoes/launcher/ls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Workspace;

.field private final synthetic b:Lcom/anddoes/launcher/ec;

.field private final synthetic c:Lcom/anddoes/launcher/gl;

.field private final synthetic d:Lcom/anddoes/launcher/CellLayout;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Workspace;Lcom/anddoes/launcher/ec;Lcom/anddoes/launcher/gl;Lcom/anddoes/launcher/CellLayout;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ls;->a:Lcom/anddoes/launcher/Workspace;

    iput-object p2, p0, Lcom/anddoes/launcher/ls;->b:Lcom/anddoes/launcher/ec;

    iput-object p3, p0, Lcom/anddoes/launcher/ls;->c:Lcom/anddoes/launcher/gl;

    iput-object p4, p0, Lcom/anddoes/launcher/ls;->d:Lcom/anddoes/launcher/CellLayout;

    .line 3237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 3239
    iget-object v0, p0, Lcom/anddoes/launcher/ls;->a:Lcom/anddoes/launcher/Workspace;

    invoke-static {v0}, Lcom/anddoes/launcher/Workspace;->c(Lcom/anddoes/launcher/Workspace;)Lcom/anddoes/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->r()Lcom/anddoes/launcher/DragLayer;

    move-result-object v0

    .line 3240
    iget-object v1, p0, Lcom/anddoes/launcher/ls;->b:Lcom/anddoes/launcher/ec;

    iget-object v2, p0, Lcom/anddoes/launcher/ls;->c:Lcom/anddoes/launcher/gl;

    iget-object v3, p0, Lcom/anddoes/launcher/ls;->d:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0, v1, v2, v3}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/ec;Landroid/view/View;Lcom/anddoes/launcher/CellLayout;)V

    .line 3241
    return-void
.end method
