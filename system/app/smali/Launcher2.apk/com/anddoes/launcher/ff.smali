.class final Lcom/anddoes/launcher/ff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ff;->a:Lcom/anddoes/launcher/Launcher;

    .line 5314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 5316
    iget-object v0, p0, Lcom/anddoes/launcher/ff;->a:Lcom/anddoes/launcher/Launcher;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->setRequestedOrientation(I)V

    .line 5317
    return-void
.end method
