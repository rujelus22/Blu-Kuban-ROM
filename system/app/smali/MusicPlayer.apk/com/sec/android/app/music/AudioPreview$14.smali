.class Lcom/sec/android/app/music/AudioPreview$14;
.super Landroid/content/BroadcastReceiver;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 1919
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$14;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 1923
    if-nez p2, :cond_4

    .line 1938
    :cond_3
    :goto_3
    return-void

    .line 1927
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1928
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1930
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_2c

    .line 1931
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$14;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mButtonVolume:Landroid/widget/ImageView;

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 1933
    :cond_2c
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$14;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mButtonVolume:Landroid/widget/ImageView;

    const v1, 0x7f020113

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method
