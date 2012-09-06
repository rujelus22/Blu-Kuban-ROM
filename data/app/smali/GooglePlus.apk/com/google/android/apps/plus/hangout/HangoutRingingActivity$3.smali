.class Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;
.super Ljava/lang/Object;
.source "HangoutRingingActivity.java"

# interfaces
.implements Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGrabbed(Landroid/view/View;I)V
    .registers 3
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 618
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .registers 3
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 614
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .registers 5
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHasActed:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$200(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 606
    :goto_8
    return-void

    .line 593
    :cond_9
    packed-switch p2, :pswitch_data_30

    .line 603
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected trigger for MultiwaveView widget value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto :goto_8

    .line 595
    :pswitch_23
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->acceptHangout()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$1100(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    goto :goto_8

    .line 599
    :pswitch_29
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->ignoreHangout()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$1200(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    goto :goto_8

    .line 593
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_23
        :pswitch_c
        :pswitch_29
    .end packed-switch
.end method
