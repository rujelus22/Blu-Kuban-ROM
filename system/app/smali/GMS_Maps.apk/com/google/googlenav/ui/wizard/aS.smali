.class Lcom/google/googlenav/ui/wizard/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/actionbar/b;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/am;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/am;)V
    .registers 2
    .parameter

    .prologue
    .line 864
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/as;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/googlenav/bc;
    .registers 3
    .parameter

    .prologue
    .line 872
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 867
    const/4 v0, 0x0

    return v0
.end method

.method public a(LaI/w;)Z
    .registers 3
    .parameter

    .prologue
    .line 891
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 1

    .prologue
    .line 887
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 877
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/as;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/am;->a(Lcom/google/googlenav/ui/wizard/am;)Lcom/google/googlenav/ui/wizard/aB;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 878
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/as;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/am;->a(Lcom/google/googlenav/ui/wizard/am;)Lcom/google/googlenav/ui/wizard/aB;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/wizard/aB;->a(Ljava/lang/String;)V

    .line 880
    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/as;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/wizard/am;->a(Lcom/google/googlenav/ui/wizard/am;Ljava/lang/String;)Ljava/lang/String;

    .line 881
    const/4 v0, 0x1

    return v0
.end method
