.class final Lcom/anddoes/launcher/im;
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
    .line 412
    iput-object p1, p0, Lcom/anddoes/launcher/im;->a:Lcom/anddoes/launcher/ig;

    .line 413
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 414
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 3
    .parameter

    .prologue
    .line 417
    iget-object v0, p0, Lcom/anddoes/launcher/im;->a:Lcom/anddoes/launcher/ig;

    invoke-static {v0}, Lcom/anddoes/launcher/ig;->c(Lcom/anddoes/launcher/ig;)V

    .line 418
    return-void
.end method
