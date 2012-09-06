.class Lcom/google/googlenav/ui/wizard/aF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/bc;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aJ;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/aE;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aE;Lcom/google/googlenav/ui/wizard/aJ;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aF;->b:Lcom/google/googlenav/ui/wizard/aE;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/aF;->a:Lcom/google/googlenav/ui/wizard/aJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aF;->b:Lcom/google/googlenav/ui/wizard/aE;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/aE;->a(Lcom/google/googlenav/ui/wizard/aE;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->A()Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/aG;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/wizard/aG;-><init>(Lcom/google/googlenav/ui/wizard/aF;Z)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 86
    return-void
.end method
