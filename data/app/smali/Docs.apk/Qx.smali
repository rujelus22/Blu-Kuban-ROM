.class LQx;
.super Ljava/lang/Object;
.source "SharingInfoManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LQw;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(LQw;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, LQx;->a:LQw;

    iput-object p2, p0, LQx;->a:Ljava/lang/String;

    iput-object p3, p0, LQx;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 188
    iget-object v0, p0, LQx;->a:LQw;

    iget-object v0, v0, LQw;->a:LQn;

    iget-object v1, p0, LQx;->a:Ljava/lang/String;

    iget-object v2, p0, LQx;->a:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, LQn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    return-void
.end method
