.class Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$3;
.super Ljava/lang/Object;
.source "VoiceListOptionShareMultiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->initView()V
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
    .line 256
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->getEnabledItemCount()I
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->access$500(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)I

    move-result v0

    if-eqz v0, :cond_d

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->selectAll()V
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->access$600(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;)V

    .line 260
    :cond_d
    return-void
.end method
