.class final Lcom/sec/android/app/voicerecorder/util/VRIntent$3;
.super Ljava/lang/Object;
.source "VRIntent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/util/VRIntent;->popupLowBatteryDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent$3;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent$3;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->sendDestroyBroadcast(Landroid/content/Context;)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 188
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->access$102(Z)Z

    .line 189
    return-void
.end method
