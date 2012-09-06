.class LaC/j;
.super Lag/g;
.source "SourceFile"


# instance fields
.field final synthetic a:LaC/g;


# direct methods
.method constructor <init>(LaC/g;)V
    .registers 2
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, LaC/j;->a:LaC/g;

    invoke-direct {p0}, Lag/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lag/c;)V
    .registers 3
    .parameter

    .prologue
    .line 378
    sget-object v0, Lag/b;->b:Lag/c;

    if-eq p1, v0, :cond_11

    sget-object v0, Lag/b;->d:Lag/c;

    if-eq p1, v0, :cond_11

    .line 379
    iget-object v0, p0, LaC/j;->a:LaC/g;

    invoke-static {v0}, LaC/g;->c(LaC/g;)Lcom/google/googlenav/ui/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/g;->h()V

    .line 381
    :cond_11
    return-void
.end method
