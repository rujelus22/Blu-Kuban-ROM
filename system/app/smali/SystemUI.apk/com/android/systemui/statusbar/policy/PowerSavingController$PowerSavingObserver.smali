.class Lcom/android/systemui/statusbar/policy/PowerSavingController$PowerSavingObserver;
.super Landroid/database/ContentObserver;
.source "PowerSavingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/PowerSavingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerSavingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/PowerSavingController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/PowerSavingController;)V
    .registers 3
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController$PowerSavingObserver;->this$0:Lcom/android/systemui/statusbar/policy/PowerSavingController;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 82
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 86
    const-string v0, "STATUSBAR-PowerSavingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowerSavingObserver.onChange() - MAXIMUM_POWER_SAVING_MODE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController$PowerSavingObserver;->this$0:Lcom/android/systemui/statusbar/policy/PowerSavingController;

    #getter for: Lcom/android/systemui/statusbar/policy/PowerSavingController;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/PowerSavingController;->access$000(Lcom/android/systemui/statusbar/policy/PowerSavingController;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "maximum_power_saving"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController$PowerSavingObserver;->this$0:Lcom/android/systemui/statusbar/policy/PowerSavingController;

    #getter for: Lcom/android/systemui/statusbar/policy/PowerSavingController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/PowerSavingController;->access$100(Lcom/android/systemui/statusbar/policy/PowerSavingController;)Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController$PowerSavingObserver;->this$0:Lcom/android/systemui/statusbar/policy/PowerSavingController;

    #getter for: Lcom/android/systemui/statusbar/policy/PowerSavingController;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/PowerSavingController;->access$000(Lcom/android/systemui/statusbar/policy/PowerSavingController;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "maximum_power_saving"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4f

    move v0, v1

    :goto_3e
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController$PowerSavingObserver;->this$0:Lcom/android/systemui/statusbar/policy/PowerSavingController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/PowerSavingController$PowerSavingObserver;->this$0:Lcom/android/systemui/statusbar/policy/PowerSavingController;

    #calls: Lcom/android/systemui/statusbar/policy/PowerSavingController;->getMode()I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/PowerSavingController;->access$300(Lcom/android/systemui/statusbar/policy/PowerSavingController;)I

    move-result v3

    if-ne v3, v1, :cond_51

    :goto_4b
    #setter for: Lcom/android/systemui/statusbar/policy/PowerSavingController;->mState:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/PowerSavingController;->access$202(Lcom/android/systemui/statusbar/policy/PowerSavingController;Z)Z

    .line 91
    return-void

    .line 89
    :cond_4f
    const/4 v0, 0x2

    goto :goto_3e

    :cond_51
    move v1, v2

    .line 90
    goto :goto_4b
.end method
