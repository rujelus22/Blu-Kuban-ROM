.class Lcom/google/googlenav/ui/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/layer/l;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/v;)V
    .registers 2
    .parameter

    .prologue
    .line 1347
    iput-object p1, p0, Lcom/google/googlenav/ui/z;->a:Lcom/google/googlenav/ui/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/google/googlenav/ui/z;->a:Lcom/google/googlenav/ui/v;

    invoke-static {v0}, Lcom/google/googlenav/ui/v;->e(Lcom/google/googlenav/ui/v;)LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->s()V

    .line 1351
    iget-object v0, p0, Lcom/google/googlenav/ui/z;->a:Lcom/google/googlenav/ui/v;

    invoke-static {v0}, Lcom/google/googlenav/ui/v;->e(Lcom/google/googlenav/ui/v;)LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->a()V

    .line 1352
    return-void
.end method
