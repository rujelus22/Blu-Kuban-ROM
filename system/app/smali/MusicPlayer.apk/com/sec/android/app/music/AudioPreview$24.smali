.class Lcom/sec/android/app/music/AudioPreview$24;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/AudioPreview;->showLowBatteryMsg(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 4149
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$24;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter "arg0"

    .prologue
    .line 4154
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$24;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->batteryMessageBox:Landroid/app/AlertDialog;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$24;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->batteryMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4155
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$24;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->batteryMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4157
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$24;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/music/AudioPreview;->queueUpdate(IJ)V

    .line 4158
    return-void
.end method
