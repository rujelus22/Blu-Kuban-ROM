.class Lcom/sec/android/app/music/MusicBrowserTabActivity$1;
.super Ljava/lang/Object;
.source "MusicBrowserTabActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicBrowserTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$1;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "className"
    .parameter "iservice"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$1;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-static {p2}, Lcom/sec/android/app/music/ICorePlayerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/music/ICorePlayerService;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mCorePlayerService:Lcom/sec/android/app/music/ICorePlayerService;

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$1;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #calls: Lcom/sec/android/app/music/MusicBrowserTabActivity;->registerNowPlayingButtons()V
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$000(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$1;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    #calls: Lcom/sec/android/app/music/MusicBrowserTabActivity;->updateNowPlayingView()V
    invoke-static {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$100(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    .line 171
    invoke-static {}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, " onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$1;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mCorePlayerService:Lcom/sec/android/app/music/ICorePlayerService;

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$1;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->finish()V

    .line 178
    invoke-static {}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, " onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method
