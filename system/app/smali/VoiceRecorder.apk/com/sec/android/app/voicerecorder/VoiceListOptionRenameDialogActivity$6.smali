.class Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$6;
.super Ljava/lang/Object;
.source "VoiceListOptionRenameDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->init()V
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
    .line 293
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->setResult(I)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->finish()V

    .line 297
    return-void
.end method
