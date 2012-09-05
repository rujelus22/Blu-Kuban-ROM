.class Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;
.super Landroid/database/ContentObserver;
.source "MobileDataController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileDataController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MobileDataController;)V
    .registers 3
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 98
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7
    .parameter "selfChange"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 101
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    #getter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$100(Lcom/android/systemui/statusbar/policy/MobileDataController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->isAirPlaneMode:I
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$002(Lcom/android/systemui/statusbar/policy/MobileDataController;I)I

    .line 103
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    #getter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$100(Lcom/android/systemui/statusbar/policy/MobileDataController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_7f

    :goto_2b
    #setter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$202(Lcom/android/systemui/statusbar/policy/MobileDataController;Z)Z

    .line 105
    const-string v0, "STATUSBAR-MobileDataController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange: mMobileData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    #getter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$200(Lcom/android/systemui/statusbar/policy/MobileDataController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAirPlaneMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    #getter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->isAirPlaneMode:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$000(Lcom/android/systemui/statusbar/policy/MobileDataController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    #getter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->mCheckBox:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$300(Lcom/android/systemui/statusbar/policy/MobileDataController;)Landroid/widget/CompoundButton;

    move-result-object v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    #getter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->mCheckBox:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$300(Lcom/android/systemui/statusbar/policy/MobileDataController;)Landroid/widget/CompoundButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    #getter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$200(Lcom/android/systemui/statusbar/policy/MobileDataController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 108
    :cond_73
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/MobileDataController;

    #getter for: Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$200(Lcom/android/systemui/statusbar/policy/MobileDataController;)Z

    move-result v1

    #calls: Lcom/android/systemui/statusbar/policy/MobileDataController;->updateActivateStatus(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileDataController;->access$400(Lcom/android/systemui/statusbar/policy/MobileDataController;Z)V

    .line 109
    return-void

    :cond_7f
    move v0, v1

    .line 103
    goto :goto_2b
.end method
