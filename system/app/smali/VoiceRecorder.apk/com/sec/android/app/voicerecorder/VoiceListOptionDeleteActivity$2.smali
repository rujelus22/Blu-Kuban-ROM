.class Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$2;
.super Landroid/database/DataSetObserver;
.source "VoiceListOptionDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->listBinding()V
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
    .line 184
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mListChange:Z
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->access$200(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->access$300(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->setDeleteButtonEnabled(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->access$400(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;Z)V

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_32

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    iget-object v0, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    .line 197
    :cond_32
    return-void
.end method
