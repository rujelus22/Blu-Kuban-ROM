.class final Lcom/anddoes/launcher/il;
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
    .line 390
    iput-object p1, p0, Lcom/anddoes/launcher/il;->a:Lcom/anddoes/launcher/ig;

    .line 391
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 392
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 3
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, Lcom/anddoes/launcher/il;->a:Lcom/anddoes/launcher/ig;

    invoke-static {v0}, Lcom/anddoes/launcher/ig;->a(Lcom/anddoes/launcher/ig;)V

    .line 396
    return-void
.end method
