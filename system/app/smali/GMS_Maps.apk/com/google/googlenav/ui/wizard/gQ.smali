.class Lcom/google/googlenav/ui/wizard/gq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/gy;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gj;)V
    .registers 2
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gq;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ai;)V
    .registers 6
    .parameter

    .prologue
    .line 698
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gq;->a:Lcom/google/googlenav/ui/wizard/gj;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gq;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gj;->a(Lcom/google/googlenav/ui/wizard/gj;)LaM/am;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "pl"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ai;LaM/am;ZLjava/lang/String;)V

    .line 700
    return-void
.end method
