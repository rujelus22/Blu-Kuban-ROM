.class Lcom/google/googlenav/ui/wizard/gr;
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
    .line 723
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gr;->a:Lcom/google/googlenav/ui/wizard/gj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ai;)V
    .registers 4
    .parameter

    .prologue
    .line 726
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gr;->a:Lcom/google/googlenav/ui/wizard/gj;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    const-string v1, "pl"

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ai;Ljava/lang/String;)V

    .line 728
    return-void
.end method
