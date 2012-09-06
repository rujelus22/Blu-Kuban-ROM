.class Lcom/google/googlenav/ui/U;
.super Lcom/google/googlenav/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/v;)V
    .registers 2
    .parameter

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/google/googlenav/ui/U;->a:Lcom/google/googlenav/ui/v;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/google/googlenav/ui/U;->a:Lcom/google/googlenav/ui/v;

    invoke-static {v0}, Lcom/google/googlenav/ui/v;->e(Lcom/google/googlenav/ui/v;)LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->N()V

    .line 1270
    return-void
.end method
