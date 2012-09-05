.class Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$5;
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
    .line 274
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareMultiActivity;->finish()V

    .line 277
    return-void
.end method
