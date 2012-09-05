.class Lcom/vlingo/client/android/core/audio/TonePlayer$1;
.super Ljava/lang/Object;
.source "TonePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/android/core/audio/TonePlayer;->play(ILcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/android/core/audio/TonePlayer;

.field final synthetic val$listener:Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;


# direct methods
.method constructor <init>(Lcom/vlingo/client/android/core/audio/TonePlayer;Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/vlingo/client/android/core/audio/TonePlayer$1;->this$0:Lcom/vlingo/client/android/core/audio/TonePlayer;

    iput-object p2, p0, Lcom/vlingo/client/android/core/audio/TonePlayer$1;->val$listener:Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vlingo/client/android/core/audio/TonePlayer$1;->val$listener:Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;

    invoke-interface {v0}, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;->onToneComplete()V

    .line 155
    return-void
.end method
