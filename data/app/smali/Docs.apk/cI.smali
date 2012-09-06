.class public abstract LcI;
.super Ljava/lang/Object;
.source "GuiceRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, LcI;->b:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lck;

    iput-object v0, p0, LcI;->a:Lck;

    .line 20
    sget-object v0, LcI;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, LcI;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final run()V
    .registers 3

    .prologue
    .line 24
    iget-object v0, p0, LcI;->a:Lck;

    iget-object v1, p0, LcI;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, LcI;->a()V

    .line 27
    return-void
.end method
