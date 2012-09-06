.class LEO;
.super Lwr;
.source "TrixJSVM.java"


# instance fields
.field private final a:LEM;


# direct methods
.method public constructor <init>(LEM;)V
    .registers 2
    .parameter

    .prologue
    .line 275
    invoke-direct {p0}, Lwr;-><init>()V

    .line 276
    iput-object p1, p0, LEO;->a:LEM;

    .line 277
    return-void
.end method


# virtual methods
.method public onModelInitialized()V
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, LEO;->a:LEM;

    invoke-interface {v0}, LEM;->a()V

    .line 282
    return-void
.end method

.method public onModelLoadComplete()V
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, LEO;->a:LEM;

    invoke-interface {v0}, LEM;->c()V

    .line 287
    return-void
.end method

.method public onModelPartAvailable()V
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, LEO;->a:LEM;

    invoke-interface {v0}, LEM;->b()V

    .line 292
    return-void
.end method
