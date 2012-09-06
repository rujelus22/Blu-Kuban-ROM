.class final Lcom/anddoes/launcher/in;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/ig;


# direct methods
.method public constructor <init>(Lcom/anddoes/launcher/ig;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/anddoes/launcher/in;->a:Lcom/anddoes/launcher/ig;

    .line 402
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 403
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 3
    .parameter

    .prologue
    .line 406
    iget-object v0, p0, Lcom/anddoes/launcher/in;->a:Lcom/anddoes/launcher/ig;

    invoke-static {v0}, Lcom/anddoes/launcher/ig;->b(Lcom/anddoes/launcher/ig;)V

    .line 407
    return-void
.end method
