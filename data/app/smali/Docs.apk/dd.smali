.class public abstract Ldd;
.super Ljava/lang/Thread;
.source "RoboThread.java"


# static fields
.field protected static a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected static b:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lck;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Landroid/content/Context;

.field final a:Lck;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 21
    sget-object v0, Ldd;->b:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lck;

    iput-object v0, p0, Ldd;->a:Lck;

    .line 22
    sget-object v0, Ldd;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Ldd;->a:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 21
    sget-object v0, Ldd;->b:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lck;

    iput-object v0, p0, Ldd;->a:Lck;

    .line 22
    sget-object v0, Ldd;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Ldd;->a:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method protected abstract c()V
.end method

.method public final run()V
    .registers 4

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Ldd;->a:Lck;

    iget-object v1, p0, Ldd;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p0}, Ldd;->c()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_12

    .line 37
    iget-object v0, p0, Ldd;->a:Lck;

    iget-object v1, p0, Ldd;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lck;->b(Landroid/content/Context;)V

    .line 39
    return-void

    .line 37
    :catchall_12
    move-exception v0

    iget-object v1, p0, Ldd;->a:Lck;

    iget-object v2, p0, Ldd;->a:Landroid/content/Context;

    invoke-interface {v1, v2}, Lck;->b(Landroid/content/Context;)V

    throw v0
.end method
