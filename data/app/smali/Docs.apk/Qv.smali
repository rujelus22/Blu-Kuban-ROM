.class LQv;
.super Ljava/lang/Object;
.source "SharingInfoManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LQt;


# direct methods
.method constructor <init>(LQt;)V
    .registers 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, LQv;->a:LQt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, LQv;->a:LQt;

    iget-object v0, v0, LQt;->a:LQn;

    invoke-interface {v0}, LQn;->a()V

    .line 116
    return-void
.end method
