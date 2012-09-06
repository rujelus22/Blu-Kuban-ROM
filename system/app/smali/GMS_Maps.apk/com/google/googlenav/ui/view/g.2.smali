.class Lcom/google/googlenav/ui/view/g;
.super Lcom/google/googlenav/ui/view/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/v;

.field final synthetic b:Lcom/google/googlenav/ui/view/e;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/e;Lcom/google/googlenav/ui/v;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/googlenav/ui/view/g;->b:Lcom/google/googlenav/ui/view/e;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/g;->a:Lcom/google/googlenav/ui/v;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 3
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/googlenav/ui/view/g;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->D()V

    .line 204
    const/4 v0, 0x1

    return v0
.end method
