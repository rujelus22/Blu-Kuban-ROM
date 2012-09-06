.class Lcom/google/googlenav/ui/wizard/he;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/jr;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ha;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ha;)V
    .registers 2
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/he;->a:Lcom/google/googlenav/ui/wizard/ha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 160
    return-void
.end method

.method public a(I)V
    .registers 5
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/he;->a:Lcom/google/googlenav/ui/wizard/ha;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/ha;->a(Lcom/google/googlenav/ui/wizard/ha;Lcom/google/googlenav/ui/wizard/jp;)Lcom/google/googlenav/ui/wizard/jp;

    .line 154
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/he;->a:Lcom/google/googlenav/ui/wizard/ha;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ha;->f(Lcom/google/googlenav/ui/wizard/ha;)Lcom/google/googlenav/ui/wizard/hf;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/he;->a:Lcom/google/googlenav/ui/wizard/ha;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ha;->a(Lcom/google/googlenav/ui/wizard/ha;)Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/he;->a:Lcom/google/googlenav/ui/wizard/ha;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ha;->b(Lcom/google/googlenav/ui/wizard/ha;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cy;

    invoke-interface {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/hf;->a(Ljava/lang/String;Lcom/google/googlenav/cy;)V

    .line 155
    return-void
.end method
