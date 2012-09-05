.class Lcom/sec/android/app/twlauncher/Launcher$12;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 6759
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$12;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 6761
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$12;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->checkSamsungAppWidgetExternal()Z
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$6300(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 6762
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$12;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 6763
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$12;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$5700(Lcom/sec/android/app/twlauncher/Launcher;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6768
    :cond_1b
    :goto_1b
    return-void

    .line 6766
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$12;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->bindSamsungAppWidgetExternal()V
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$6400(Lcom/sec/android/app/twlauncher/Launcher;)V

    goto :goto_1b
.end method
