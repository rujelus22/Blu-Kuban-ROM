.class Lcom/google/googlenav/ui/wizard/an;
.super Lag/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/am;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/am;)V
    .registers 2
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/an;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-direct {p0}, Lag/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lag/c;)V
    .registers 3
    .parameter

    .prologue
    .line 280
    sget-object v0, Lag/b;->i:Lag/c;

    if-eq p1, v0, :cond_d

    .line 281
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/an;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/am;->a(Lcom/google/googlenav/ui/wizard/am;)Lcom/google/googlenav/ui/wizard/aB;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/aB;->h()V

    .line 283
    :cond_d
    return-void
.end method
