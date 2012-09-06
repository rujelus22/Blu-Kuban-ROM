.class Lcom/google/googlenav/ui/wizard/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/i;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/J;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/J;Lcom/google/googlenav/friend/i;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/K;->b:Lcom/google/googlenav/ui/wizard/J;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/K;->a:Lcom/google/googlenav/friend/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/K;->b:Lcom/google/googlenav/ui/wizard/J;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/J;->a:Lcom/google/googlenav/ui/wizard/H;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/H;->b(Lcom/google/googlenav/ui/wizard/H;)Lcom/google/googlenav/ui/wizard/L;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/K;->a:Lcom/google/googlenav/friend/i;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/L;->a(Lcom/google/googlenav/friend/i;)V

    .line 147
    return-void
.end method
