.class Lcom/google/android/music/MusicPlaybackService$2;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 150
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isLockScreenActivityEnabled()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/lockscreen/WaveLockActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 155
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 156
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 160
    :cond_3a
    return-void
.end method
