.class Lcom/sec/android/app/voicerecorder/VoiceListActivity$12;
.super Ljava/lang/Object;
.source "VoiceListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/VoiceListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1734
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$12;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListActivity$12;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceListActivity;->setVolume()V
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceListActivity;)V

    .line 1737
    return-void
.end method
