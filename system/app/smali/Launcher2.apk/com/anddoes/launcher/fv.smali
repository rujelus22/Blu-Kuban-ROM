.class final Lcom/anddoes/launcher/fv;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Launcher;

.field private final synthetic b:Lcom/anddoes/launcher/gb;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Launcher;Ljava/lang/String;Lcom/anddoes/launcher/gb;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/fv;->a:Lcom/anddoes/launcher/Launcher;

    iput-object p3, p0, Lcom/anddoes/launcher/fv;->b:Lcom/anddoes/launcher/gb;

    .line 1491
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/anddoes/launcher/fv;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v1, p0, Lcom/anddoes/launcher/fv;->b:Lcom/anddoes/launcher/gb;

    invoke-static {v0, v1}, Lcom/anddoes/launcher/Launcher;->b(Landroid/content/Context;Lcom/anddoes/launcher/gb;)V

    .line 1495
    return-void
.end method
