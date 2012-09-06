.class public abstract Lcom/google/android/apps/docs/GuiceService;
.super Landroid/app/Service;
.source "GuiceService.java"

# interfaces
.implements LcK;


# instance fields
.field protected a:Lck;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lans;
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/android/apps/docs/GuiceService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, LcK;

    invoke-interface {v0}, LcK;->a()Lans;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/google/android/apps/docs/GuiceService;->a()Lans;

    move-result-object v1

    .line 25
    const-class v0, Lck;

    invoke-interface {v1, v0}, Lans;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lck;

    iput-object v0, p0, Lcom/google/android/apps/docs/GuiceService;->a:Lck;

    .line 26
    iget-object v0, p0, Lcom/google/android/apps/docs/GuiceService;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 27
    invoke-interface {v1, p0}, Lans;->a(Ljava/lang/Object;)V

    .line 28
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 29
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/docs/GuiceService;->a:Lck;

    invoke-interface {v0, p0}, Lck;->b(Landroid/content/Context;)V

    .line 40
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 41
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/docs/GuiceService;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 34
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
