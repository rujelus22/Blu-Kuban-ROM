.class final Lcom/anddoes/launcher/iq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/PagedView;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/PagedView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/iq;->a:Lcom/anddoes/launcher/PagedView;

    .line 2335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/anddoes/launcher/iq;->a:Lcom/anddoes/launcher/PagedView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/PagedView;->d(Z)V

    .line 2339
    return-void
.end method
