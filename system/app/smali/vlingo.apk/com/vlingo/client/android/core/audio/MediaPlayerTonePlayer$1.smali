.class Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$1;
.super Ljava/lang/Object;
.source "MediaPlayerTonePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer;->playTone(ILcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer;

.field final synthetic val$listener:Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;

.field final synthetic val$startTime:J

.field final synthetic val$toneResourceId:I


# direct methods
.method constructor <init>(Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer;ILcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;J)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$1;->this$0:Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer;

    iput p2, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$1;->val$toneResourceId:I

    iput-object p3, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$1;->val$listener:Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;

    iput-wide p4, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$1;->val$startTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 40
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplication()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iget v3, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$1;->val$toneResourceId:I

    invoke-static {v1, v3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v2

    .line 42
    .local v2, mp:Landroid/media/MediaPlayer;
    if-eqz v2, :cond_22

    .line 45
    new-instance v0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;

    iget-object v1, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$1;->this$0:Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer;

    iget-object v3, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$1;->val$listener:Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;

    iget-wide v4, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$1;->val$startTime:J

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;-><init>(Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer;Landroid/media/MediaPlayer;Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;JLcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$1;)V

    .line 46
    .local v0, p:Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;
    #calls: Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;->play()V
    invoke-static {v0}, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;->access$100(Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;)V

    .line 54
    .end local v0           #p:Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;
    :cond_21
    :goto_21
    return-void

    .line 50
    :cond_22
    iget-object v1, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$1;->val$listener:Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;

    if-eqz v1, :cond_21

    .line 51
    iget-object v1, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$1;->val$listener:Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;

    invoke-interface {v1}, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;->onToneComplete()V

    goto :goto_21
.end method
