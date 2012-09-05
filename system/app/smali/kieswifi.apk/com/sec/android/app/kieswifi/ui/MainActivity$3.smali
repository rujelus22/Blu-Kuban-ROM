.class Lcom/sec/android/app/kieswifi/ui/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/ui/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/MainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$3;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .registers 5
    .parameter "motionEvent"

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 173
    :goto_8
    return-void

    .line 167
    :pswitch_9
    const/4 v0, 0x1

    const-string v1, "Shake Start"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$3;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->mRefreshButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    invoke-static {v0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$200(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setClickable(Z)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$3;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->mRefreshButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    invoke-static {v0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$200(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$3;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->refreshList()V

    goto :goto_8

    .line 165
    nop

    :pswitch_data_28
    .packed-switch 0x23
        :pswitch_9
    .end packed-switch
.end method
