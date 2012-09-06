.class Lcom/google/googlenav/ui/wizard/iN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/iL;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/iL;)V
    .registers 2
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iN;->a:Lcom/google/googlenav/ui/wizard/iL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iN;->a:Lcom/google/googlenav/ui/wizard/iL;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/iL;->a:Lcom/google/googlenav/ui/wizard/iK;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/iK;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v0

    const/16 v1, 0x513

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 165
    return-void
.end method
