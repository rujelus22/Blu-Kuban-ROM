.class final Lcom/anddoes/launcher/fa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/ez;

.field private final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/ez;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/fa;->a:Lcom/anddoes/launcher/ez;

    iput-object p2, p0, Lcom/anddoes/launcher/fa;->b:Landroid/view/View;

    .line 2362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 2364
    iget-object v0, p0, Lcom/anddoes/launcher/fa;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/Advanceable;

    invoke-interface {v0}, Landroid/widget/Advanceable;->advance()V

    .line 2365
    return-void
.end method
