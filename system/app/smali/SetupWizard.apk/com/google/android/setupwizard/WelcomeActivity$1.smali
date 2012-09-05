.class Lcom/google/android/setupwizard/WelcomeActivity$1;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupwizard/WelcomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupwizard/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/google/android/setupwizard/WelcomeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/setupwizard/WelcomeActivity$1;->this$0:Lcom/google/android/setupwizard/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/setupwizard/WelcomeActivity$1;->this$0:Lcom/google/android/setupwizard/WelcomeActivity;

    #getter for: Lcom/google/android/setupwizard/WelcomeActivity;->mWaiting:Z
    invoke-static {v0}, Lcom/google/android/setupwizard/WelcomeActivity;->access$000(Lcom/google/android/setupwizard/WelcomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/setupwizard/WelcomeActivity$1;->this$0:Lcom/google/android/setupwizard/WelcomeActivity;

    #calls: Lcom/google/android/setupwizard/WelcomeActivity;->waitIsRequired()Z
    invoke-static {v0}, Lcom/google/android/setupwizard/WelcomeActivity;->access$100(Lcom/google/android/setupwizard/WelcomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/setupwizard/WelcomeActivity$1;->this$0:Lcom/google/android/setupwizard/WelcomeActivity;

    #getter for: Lcom/google/android/setupwizard/WelcomeActivity;->mWaitStartTime:J
    invoke-static {v2}, Lcom/google/android/setupwizard/WelcomeActivity;->access$200(Lcom/google/android/setupwizard/WelcomeActivity;)J

    move-result-wide v2

    const-wide v4, 0x4a817c800L

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2a

    .line 112
    :cond_24
    iget-object v0, p0, Lcom/google/android/setupwizard/WelcomeActivity$1;->this$0:Lcom/google/android/setupwizard/WelcomeActivity;

    #calls: Lcom/google/android/setupwizard/WelcomeActivity;->endWaitingMode()V
    invoke-static {v0}, Lcom/google/android/setupwizard/WelcomeActivity;->access$300(Lcom/google/android/setupwizard/WelcomeActivity;)V

    .line 119
    :cond_29
    :goto_29
    return-void

    .line 116
    :cond_2a
    iget-object v0, p0, Lcom/google/android/setupwizard/WelcomeActivity$1;->this$0:Lcom/google/android/setupwizard/WelcomeActivity;

    #getter for: Lcom/google/android/setupwizard/WelcomeActivity;->mWaiting:Z
    invoke-static {v0}, Lcom/google/android/setupwizard/WelcomeActivity;->access$000(Lcom/google/android/setupwizard/WelcomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 117
    iget-object v0, p0, Lcom/google/android/setupwizard/WelcomeActivity$1;->this$0:Lcom/google/android/setupwizard/WelcomeActivity;

    #getter for: Lcom/google/android/setupwizard/WelcomeActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/setupwizard/WelcomeActivity;->access$500(Lcom/google/android/setupwizard/WelcomeActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupwizard/WelcomeActivity$1;->this$0:Lcom/google/android/setupwizard/WelcomeActivity;

    #getter for: Lcom/google/android/setupwizard/WelcomeActivity;->mWaitingModePoll:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/setupwizard/WelcomeActivity;->access$400(Lcom/google/android/setupwizard/WelcomeActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_29
.end method
