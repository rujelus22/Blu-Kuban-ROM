.class Lcom/google/googlenav/ui/wizard/aQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aP;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aP;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aQ;->a:Lcom/google/googlenav/ui/wizard/aP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aQ;->a:Lcom/google/googlenav/ui/wizard/aP;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aP;->b:Lcom/google/googlenav/ui/wizard/aV;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aQ;->a:Lcom/google/googlenav/ui/wizard/aP;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aP;->a:Lcom/google/googlenav/h;

    invoke-virtual {v1}, Lcom/google/googlenav/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/aV;->a(Ljava/lang/String;)V

    .line 92
    return-void
.end method
