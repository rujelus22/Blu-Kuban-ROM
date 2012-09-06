.class Lcom/google/android/music/widgets/VolumeWidget$1;
.super Landroid/content/BroadcastReceiver;
.source "VolumeWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/widgets/VolumeWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/widgets/VolumeWidget;


# direct methods
.method constructor <init>(Lcom/google/android/music/widgets/VolumeWidget;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/music/widgets/VolumeWidget$1;->this$0:Lcom/google/android/music/widgets/VolumeWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 64
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .local v0, extra:Landroid/os/Bundle;
    const/4 v1, 0x3

    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_24

    .line 67
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 68
    iget-object v1, p0, Lcom/google/android/music/widgets/VolumeWidget$1;->this$0:Lcom/google/android/music/widgets/VolumeWidget;

    #calls: Lcom/google/android/music/widgets/VolumeWidget;->requestUpdate()V
    invoke-static {v1}, Lcom/google/android/music/widgets/VolumeWidget;->access$000(Lcom/google/android/music/widgets/VolumeWidget;)V

    .line 71
    .end local v0           #extra:Landroid/os/Bundle;
    :cond_24
    return-void
.end method
