.class Lcom/google/googlenav/ui/wizard/iM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/iL;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/iL;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iM;->b:Lcom/google/googlenav/ui/wizard/iL;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/iM;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iM;->b:Lcom/google/googlenav/ui/wizard/iL;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/iL;->a:Lcom/google/googlenav/ui/wizard/iK;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/iK;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 146
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iM;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 147
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iM;->b:Lcom/google/googlenav/ui/wizard/iL;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/iL;->a:Lcom/google/googlenav/ui/wizard/iK;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/iK;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v0

    const/16 v1, 0x8c

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 152
    :goto_24
    return-void

    .line 150
    :cond_25
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iM;->b:Lcom/google/googlenav/ui/wizard/iL;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/iL;->a:Lcom/google/googlenav/ui/wizard/iK;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/iM;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/iK;->a(Lcom/google/googlenav/ui/wizard/iK;Ljava/util/List;)V

    goto :goto_24
.end method
