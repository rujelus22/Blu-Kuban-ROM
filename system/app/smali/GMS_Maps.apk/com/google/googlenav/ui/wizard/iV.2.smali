.class Lcom/google/googlenav/ui/wizard/iV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/iU;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/iU;)V
    .registers 2
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iV;->a:Lcom/google/googlenav/ui/wizard/iU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iV;->a:Lcom/google/googlenav/ui/wizard/iU;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/iU;->b:Lcom/google/googlenav/ui/wizard/iT;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/iT;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 398
    return-void
.end method
