.class Lcom/sec/android/app/voicerecorder/widget/VRPlayer$NotificationHandler;
.super Landroid/os/Handler;
.source "VRPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/widget/VRPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/voicerecorder/widget/VRPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer$NotificationHandler;->this$0:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/voicerecorder/widget/VRPlayer;Lcom/sec/android/app/voicerecorder/widget/VRPlayer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer$NotificationHandler;-><init>(Lcom/sec/android/app/voicerecorder/widget/VRPlayer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_b

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer$NotificationHandler;->this$0:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->handleNotification(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->access$000(Lcom/sec/android/app/voicerecorder/widget/VRPlayer;I)V

    .line 141
    :cond_b
    return-void
.end method
