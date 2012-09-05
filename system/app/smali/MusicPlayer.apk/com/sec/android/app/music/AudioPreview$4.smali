.class Lcom/sec/android/app/music/AudioPreview$4;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


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
    .line 894
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$4;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    .line 897
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$4;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "menuDetailsOnClickListener:onMenuItemClick() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$4;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 900
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$4;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v1, :cond_44

    .line 901
    const-string v1, "playing_uri"

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$4;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 902
    const-string v1, "launch_from"

    const-string v2, "audio_preview"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 903
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$4;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/music/AudioPreview;->bLaunchedRichInfo:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/music/AudioPreview;->access$902(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 904
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$4;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/AudioPreview;->startActivity(Landroid/content/Intent;)V

    .line 905
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$4;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const v1, 0x7f040009

    const v2, 0x7f04000a

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/music/AudioPreview;->overridePendingTransition(II)V

    .line 907
    :cond_44
    const/4 v0, 0x0

    return v0
.end method
