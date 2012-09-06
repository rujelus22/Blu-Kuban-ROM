.class LQy;
.super Ljava/lang/Object;
.source "SharingInfoManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LQw;


# direct methods
.method constructor <init>(LQw;)V
    .registers 2
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, LQy;->a:LQw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, LQy;->a:LQw;

    iget-object v0, v0, LQw;->a:LQn;

    invoke-interface {v0}, LQn;->a()V

    .line 199
    return-void
.end method
