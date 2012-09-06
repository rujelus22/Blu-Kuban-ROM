.class Lcom/google/googlenav/ui/wizard/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/dialog/W;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/S;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/S;)V
    .registers 2
    .parameter

    .prologue
    .line 904
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ae;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/S;Lcom/google/googlenav/ui/wizard/T;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 904
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/ae;-><init>(Lcom/google/googlenav/ui/wizard/S;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 907
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ae;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->l(Lcom/google/googlenav/ui/wizard/S;)V

    .line 908
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 912
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ae;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->b(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ae;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/S;->a(Lcom/google/googlenav/ui/wizard/S;)Lam/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ju;->a(Lam/i;)V

    .line 913
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 917
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ae;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->g(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/ac;->b()V

    .line 918
    return-void
.end method
