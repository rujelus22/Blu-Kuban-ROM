.class Lcom/google/googlenav/ui/view/dialog/ax;
.super Lag/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/at;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/at;)V
    .registers 2
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/ax;->a:Lcom/google/googlenav/ui/view/dialog/at;

    invoke-direct {p0}, Lag/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lag/c;)V
    .registers 3
    .parameter

    .prologue
    .line 329
    sget-object v0, Lag/b;->j:Lag/c;

    if-eq p1, v0, :cond_d

    .line 330
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ax;->a:Lcom/google/googlenav/ui/view/dialog/at;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/at;->a(Lcom/google/googlenav/ui/view/dialog/at;)Lcom/google/googlenav/ui/wizard/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cw;->a()V

    .line 332
    :cond_d
    return-void
.end method
