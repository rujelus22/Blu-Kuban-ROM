.class Lcom/sec/android/app/voicerecorder/util/VRUtil$ServiceBinder;
.super Ljava/lang/Object;
.source "VRUtil.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/util/VRUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinder"
.end annotation


# instance fields
.field mCallback:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 609
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 610
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/util/VRUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    .line 611
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "className"
    .parameter "service"

    .prologue
    .line 614
    invoke-static {p2}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/voicerecorder/util/VRUtil;->sService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    .line 615
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_f

    .line 616
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 617
    :cond_f
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "className"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_9

    .line 621
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 622
    :cond_9
    return-void
.end method
