.class final Lcom/sec/android/app/voicerecorder/util/VRIntent$2;
.super Ljava/lang/Object;
.source "VRIntent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 176
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent$2;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->sendDestroyBroadcast(Landroid/content/Context;)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 180
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->access$102(Z)Z

    .line 181
    return-void
.end method
