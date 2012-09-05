.class Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BadgeChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 3
    .parameter

    .prologue
    .line 6291
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    .line 6292
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6293
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 6297
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$600(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3400()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->isApplicationsLoaded()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 6298
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$5700(Lcom/sec/android/app/twlauncher/Launcher;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$5600(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6299
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$5700(Lcom/sec/android/app/twlauncher/Launcher;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$5600(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6303
    :goto_30
    return-void

    .line 6301
    :cond_31
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$5802(Z)Z

    goto :goto_30
.end method
