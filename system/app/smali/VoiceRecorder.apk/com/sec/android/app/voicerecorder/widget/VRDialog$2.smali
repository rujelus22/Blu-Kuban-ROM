.class final Lcom/sec/android/app/voicerecorder/widget/VRDialog$2;
.super Ljava/lang/Object;
.source "VRDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/widget/VRDialog;->createLimitForMmsDialog(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$uiUpdateHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$2;->val$uiUpdateHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$2;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "position"

    .prologue
    .line 88
    invoke-static {p2}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->setLimitForMms(I)V

    .line 89
    const/16 v0, 0x1388

    invoke-static {v0, p2}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->notifySettingChanged(II)V

    .line 91
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$2;->val$uiUpdateHandler:Landroid/os/Handler;

    const/16 v1, 0xbec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 102
    return-void
.end method
