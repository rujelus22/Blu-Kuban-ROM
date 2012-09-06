.class LEL;
.super Ljava/lang/Object;
.source "TrixJSVM.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LEK;

.field final synthetic a:LEM;


# direct methods
.method constructor <init>(LEK;LEM;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, LEL;->a:LEK;

    iput-object p2, p0, LEL;->a:LEM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, LEL;->a:LEM;

    invoke-interface {v0}, LEM;->a()V

    .line 260
    return-void
.end method
