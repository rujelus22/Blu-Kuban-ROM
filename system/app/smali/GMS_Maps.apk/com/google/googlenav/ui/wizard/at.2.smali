.class Lcom/google/googlenav/ui/wizard/aT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aS;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aS;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aS;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aS;->a:Lcom/google/googlenav/ui/wizard/aR;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aR;->d:Lcom/google/googlenav/ui/wizard/aP;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aP;->b:Lcom/google/googlenav/ui/wizard/aV;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aS;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aS;->a:Lcom/google/googlenav/ui/wizard/aR;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aR;->c:Lcom/google/googlenav/a;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/aV;->a(Lcom/google/googlenav/a;)V

    .line 138
    return-void
.end method
