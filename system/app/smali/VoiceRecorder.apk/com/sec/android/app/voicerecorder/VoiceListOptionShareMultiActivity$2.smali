.class Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$2;
.super Landroid/database/DataSetObserver;
.source "VoiceListOptionShareMultiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->listBinding()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mListChange:Z
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->access$200(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->mCheckedIdArrayList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->access$300(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->setShareButtonEnabled(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->access$400(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;Z)V

    .line 240
    :cond_20
    return-void
.end method
