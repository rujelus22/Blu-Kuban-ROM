.class Lcom/google/googlenav/ui/view/dialog/cJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/cI;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/cI;)V
    .registers 2
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cJ;->a:Lcom/google/googlenav/ui/view/dialog/cI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cJ;->a:Lcom/google/googlenav/ui/view/dialog/cI;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/cI;->a:Lcom/google/googlenav/ui/view/dialog/cF;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/cF;->n()Z

    .line 350
    return-void
.end method
