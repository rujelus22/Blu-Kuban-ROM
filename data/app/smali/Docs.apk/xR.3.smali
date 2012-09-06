.class LxR;
.super Ljava/lang/Object;
.source "KixJSVM.java"

# interfaces
.implements Lvh;


# instance fields
.field final synthetic a:J

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:LxQ;

.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(LxQ;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, LxR;->a:LxQ;

    iput-boolean p2, p0, LxR;->a:Z

    iput-wide p3, p0, LxR;->a:J

    iput-object p5, p0, LxR;->a:Ljava/lang/String;

    iput-object p6, p0, LxR;->b:Ljava/lang/String;

    iput-object p7, p0, LxR;->c:Ljava/lang/String;

    iput-boolean p8, p0, LxR;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 286
    iget-object v0, p0, LxR;->a:LxQ;

    #getter for: LxQ;->a:Landroid/os/Handler;
    invoke-static {v0}, LxQ;->access$1100(LxQ;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LxT;

    invoke-direct {v1, p0}, LxT;-><init>(LxR;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    return-void
.end method

.method public a([BLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, LxR;->a:LxQ;

    #getter for: LxQ;->a:Landroid/os/Handler;
    invoke-static {v0}, LxQ;->access$1100(LxQ;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LxS;

    invoke-direct {v1, p0, p1, p2}, LxS;-><init>(LxR;[BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    return-void
.end method
