.class Lcom/sec/android/app/voicerecorder/SettingsActivity$1;
.super Landroid/os/Handler;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/SettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/SettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/SettingsActivity;

    #calls: Lcom/sec/android/app/voicerecorder/SettingsActivity;->initList()V
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/SettingsActivity;->access$000(Lcom/sec/android/app/voicerecorder/SettingsActivity;)V

    .line 70
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 71
    return-void
.end method
