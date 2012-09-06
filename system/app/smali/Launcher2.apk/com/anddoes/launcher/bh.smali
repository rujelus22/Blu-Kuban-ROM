.class final Lcom/anddoes/launcher/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/anddoes/launcher/bg;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/bg;Ljava/lang/Runnable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/anddoes/launcher/bh;->b:Lcom/anddoes/launcher/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/anddoes/launcher/bh;->a:Ljava/lang/Runnable;

    .line 64
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/anddoes/launcher/bh;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 68
    return-void
.end method
