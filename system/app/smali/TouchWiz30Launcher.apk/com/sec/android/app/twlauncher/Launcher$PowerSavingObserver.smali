.class Lcom/sec/android/app/twlauncher/Launcher$PowerSavingObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerSavingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 3
    .parameter

    .prologue
    .line 6310
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$PowerSavingObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    .line 6311
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6312
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .parameter "selfChange"

    .prologue
    .line 6317
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$PowerSavingObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "maximum_power_saving"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 6318
    .local v0, maxPowerSavingState:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$PowerSavingObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$5300(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v2

    if-nez v0, :cond_1b

    const/16 v1, 0x10

    :goto_17
    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->setFrameDelay(I)V

    .line 6319
    return-void

    .line 6318
    :cond_1b
    const/16 v1, 0x21

    goto :goto_17
.end method
