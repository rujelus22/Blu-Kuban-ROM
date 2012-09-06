.class Lcom/google/googlenav/ui/wizard/eS;
.super Lag/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eQ;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eQ;)V
    .registers 2
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eS;->a:Lcom/google/googlenav/ui/wizard/eQ;

    invoke-direct {p0}, Lag/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lag/c;)V
    .registers 3
    .parameter

    .prologue
    .line 298
    sget-object v0, Lag/b;->g:Lag/c;

    if-eq p1, v0, :cond_b

    .line 299
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eS;->a:Lcom/google/googlenav/ui/wizard/eQ;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/eQ;->a:Lcom/google/googlenav/ui/wizard/eO;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eO;->a()V

    .line 301
    :cond_b
    return-void
.end method
