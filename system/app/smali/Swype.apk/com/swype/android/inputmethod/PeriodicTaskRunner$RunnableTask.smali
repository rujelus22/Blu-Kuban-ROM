.class public abstract Lcom/swype/android/inputmethod/PeriodicTaskRunner$RunnableTask;
.super Landroid/app/IntentService;
.source "PeriodicTaskRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/inputmethod/PeriodicTaskRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RunnableTask"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 51
    const-string v0, "PeriodicTaskRunner.RunnableTask"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public abstract getRunPeriodMsec()J
.end method

.method public abstract getTaskName()Ljava/lang/String;
.end method

.method protected final onHandleIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/PeriodicTaskRunner$RunnableTask;->run()V

    .line 65
    return-void
.end method
