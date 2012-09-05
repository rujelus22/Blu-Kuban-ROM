.class Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$7;
.super Ljava/lang/Object;
.source "VoiceListOptionRenameDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 312
    const/4 v0, 0x4

    if-ne p2, v0, :cond_8

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$7;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->finish()V

    .line 314
    :cond_8
    const/4 v0, 0x0

    return v0
.end method
