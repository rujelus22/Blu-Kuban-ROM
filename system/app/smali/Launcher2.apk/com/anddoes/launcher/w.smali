.class final Lcom/anddoes/launcher/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/v;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/v;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/w;->a:Lcom/anddoes/launcher/v;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/anddoes/launcher/w;->a:Lcom/anddoes/launcher/v;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/v;->a(Z)V

    .line 327
    return-void
.end method
