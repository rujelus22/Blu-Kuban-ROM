.class Lcom/google/googlenav/ui/bo;
.super Lcom/google/googlenav/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/bn;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/bn;)V
    .registers 2
    .parameter

    .prologue
    .line 780
    iput-object p1, p0, Lcom/google/googlenav/ui/bo;->a:Lcom/google/googlenav/ui/bn;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 783
    iget-object v0, p0, Lcom/google/googlenav/ui/bo;->a:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->p()LS/g;

    move-result-object v0

    .line 784
    invoke-interface {v0}, LS/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-interface {v0, v1}, LS/g;->e(C)LS/f;

    .line 786
    iget-object v0, p0, Lcom/google/googlenav/ui/bo;->a:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->f()LS/g;

    move-result-object v0

    .line 787
    invoke-interface {v0}, LS/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-interface {v0, v1}, LS/g;->e(C)LS/f;

    .line 789
    iget-object v0, p0, Lcom/google/googlenav/ui/bo;->a:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->i()LS/g;

    move-result-object v0

    .line 790
    invoke-interface {v0}, LS/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-interface {v0, v1}, LS/g;->e(C)LS/f;

    .line 791
    return-void
.end method
