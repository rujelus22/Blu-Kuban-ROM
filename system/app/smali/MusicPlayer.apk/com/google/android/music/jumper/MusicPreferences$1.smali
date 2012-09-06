.class Lcom/google/android/music/jumper/MusicPreferences$1;
.super Lcom/google/android/music/utils/SafeServiceConnection;
.source "MusicPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/jumper/MusicPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/jumper/MusicPreferences;


# direct methods
.method constructor <init>(Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 2
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/android/music/jumper/MusicPreferences$1;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {p0}, Lcom/google/android/music/utils/SafeServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$1;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    #calls: Lcom/google/android/music/jumper/MusicPreferences;->onServiceConnectedImp(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    invoke-static {v0, p1, p2}, Lcom/google/android/music/jumper/MusicPreferences;->access$000(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 147
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$1;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    #calls: Lcom/google/android/music/jumper/MusicPreferences;->onServiceDisconnectedImp(Landroid/content/ComponentName;)V
    invoke-static {v0, p1}, Lcom/google/android/music/jumper/MusicPreferences;->access$100(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/ComponentName;)V

    .line 152
    return-void
.end method
