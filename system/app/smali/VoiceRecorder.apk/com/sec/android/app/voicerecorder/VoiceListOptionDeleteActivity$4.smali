.class Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$4;
.super Ljava/lang/Object;
.source "VoiceListOptionDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 236
    :cond_10
    :goto_10
    return-void

    .line 233
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->createDeleteDialog()Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->access$600(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_10

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$4;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_10
.end method
