.class Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;
.super Ljava/lang/Object;
.source "GLFastScrollIndexView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateChanger"
.end annotation


# instance fields
.field private mRunning:Z

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;)V
    .registers 3
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;->this$0:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;->mRunning:Z

    return-void
.end method


# virtual methods
.method public abort()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 426
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;->mRunning:Z

    if-nez v1, :cond_6

    .line 431
    :goto_5
    return v0

    .line 429
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;->this$0:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 430
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;->mRunning:Z

    .line 431
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;->mRunning:Z

    return v0
.end method

.method public postToQueue(I)V
    .registers 5
    .parameter "aDelay"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;->this$0:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;->mRunning:Z

    .line 414
    :cond_c
    return-void
.end method

.method public run()V
    .registers 2

    .prologue
    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView$StateChanger;->mRunning:Z

    .line 423
    return-void
.end method
