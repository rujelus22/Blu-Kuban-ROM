.class final Lcom/sec/android/app/voicerecorder/widget/VRDialog$3;
.super Ljava/lang/Object;
.source "VRDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/widget/VRDialog;->createStorageDialog(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$uiUpdateHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$3;->val$uiUpdateHandler:Landroid/os/Handler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    if-nez p2, :cond_19

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->setInternalStorageSelected(Z)V

    .line 123
    if-nez p2, :cond_b

    move v1, v2

    :cond_b
    invoke-static {v2, v1}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->notifySettingChanged(II)V

    .line 126
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$3;->val$uiUpdateHandler:Landroid/os/Handler;

    const/16 v1, 0xbea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 128
    return-void

    :cond_19
    move v0, v2

    .line 122
    goto :goto_5
.end method
