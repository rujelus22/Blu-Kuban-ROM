.class Lcom/google/android/apps/plus/hangout/HangoutTabletTile$2;
.super Ljava/lang/Object;
.source "HangoutTabletTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 645
    const-class v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$2;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V
    .registers 2
    .parameter

    .prologue
    .line 645
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$2;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "button"

    .prologue
    const/4 v2, 0x0

    .line 648
    sget-boolean v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$2;->$assertionsDisabled:Z

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$2;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$200(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v1

    sget-object v3, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->READY_TO_LAUNCH_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-eq v1, v3, :cond_1b

    new-instance v1, Ljava/lang/AssertionError;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$2;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->state:Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$200(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 650
    :cond_1b
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$2;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    sget-object v3, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ENTERING_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->setState(Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V
    invoke-static {v1, v3}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$400(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Lcom/google/android/apps/plus/hangout/HangoutTile$State;)V

    .line 652
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$2;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iget-object v1, v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    if-nez v1, :cond_48

    .line 653
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$2;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 654
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$2;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    const-string v3, "hangout_ring_invitees"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->createHangout(Z)V

    .line 662
    .end local v0           #intent:Landroid/content/Intent;
    :goto_47
    return-void

    .line 657
    :cond_48
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$2;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$2;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iget-object v4, v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$2;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iget-object v1, v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/Hangout$Info;->getLaunchSource()Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    move-result-object v1

    sget-object v5, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->MissedCall:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    if-ne v1, v5, :cond_6f

    const/4 v1, 0x1

    :goto_63
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$2;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iget-object v2, v2, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->greenRoomParticipants:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$2;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iget-boolean v5, v5, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mHoaConsented:Z

    invoke-virtual {v3, v4, v1, v2, v5}, Lcom/google/android/apps/plus/hangout/GCommApp;->enterHangout(Lcom/google/android/apps/plus/service/Hangout$Info;ZLjava/util/List;Z)V

    goto :goto_47

    :cond_6f
    move v1, v2

    goto :goto_63
.end method
