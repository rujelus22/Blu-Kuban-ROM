.class final Lcom/anddoes/launcher/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/bx;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/bx;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/bz;->a:Lcom/anddoes/launcher/bx;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/anddoes/launcher/bz;->a:Lcom/anddoes/launcher/bx;

    invoke-static {v0}, Lcom/anddoes/launcher/bx;->d(Lcom/anddoes/launcher/bx;)Lcom/anddoes/launcher/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/bz;->a:Lcom/anddoes/launcher/bx;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/DragLayer;->removeView(Landroid/view/View;)V

    .line 225
    return-void
.end method
