.class Lcom/google/googlenav/ui/V;
.super Lcom/google/googlenav/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/v;)V
    .registers 2
    .parameter

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/google/googlenav/ui/V;->a:Lcom/google/googlenav/ui/v;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/google/googlenav/ui/V;->a:Lcom/google/googlenav/ui/v;

    invoke-static {v0}, Lcom/google/googlenav/ui/v;->e(Lcom/google/googlenav/ui/v;)LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->O()V

    .line 1281
    return-void
.end method
