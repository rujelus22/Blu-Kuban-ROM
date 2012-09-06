.class public LMA;
.super Ljava/lang/Object;
.source "BasePunchModelListener.java"

# interfaces
.implements LNo;


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
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, LMA;->b:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lck;

    iput-object v0, p0, LMA;->a:Lck;

    .line 22
    sget-object v0, LMA;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, LMA;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 26
    iget-object v0, p0, LMA;->a:Lck;

    iget-object v1, p0, LMA;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0}, LMA;->b()V

    .line 29
    return-void
.end method

.method public final a(I)V
    .registers 4
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, LMA;->a:Lck;

    iget-object v1, p0, LMA;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0, p1}, LMA;->b(I)V

    .line 59
    return-void
.end method

.method protected b()V
    .registers 1

    .prologue
    .line 32
    return-void
.end method

.method protected b(I)V
    .registers 2
    .parameter

    .prologue
    .line 62
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 36
    iget-object v0, p0, LMA;->a:Lck;

    iget-object v1, p0, LMA;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0}, LMA;->d()V

    .line 39
    return-void
.end method

.method protected d()V
    .registers 1

    .prologue
    .line 42
    return-void
.end method

.method public final e()V
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, LMA;->a:Lck;

    iget-object v1, p0, LMA;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0}, LMA;->f()V

    .line 49
    return-void
.end method

.method protected f()V
    .registers 1

    .prologue
    .line 52
    return-void
.end method

.method public final g()V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, LMA;->a:Lck;

    iget-object v1, p0, LMA;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 68
    invoke-virtual {p0}, LMA;->h()V

    .line 69
    return-void
.end method

.method protected h()V
    .registers 1

    .prologue
    .line 72
    return-void
.end method
