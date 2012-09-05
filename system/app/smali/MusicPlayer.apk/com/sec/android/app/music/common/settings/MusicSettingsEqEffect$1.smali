.class Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$1;
.super Ljava/lang/Object;
.source "MusicSettingsEqEffect.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)V
    .registers 2
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$1;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 153
    invoke-static {}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$1;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    #setter for: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;
    invoke-static {v0, v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$102(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;Lcom/sec/android/app/music/ICorePlayerService;)Lcom/sec/android/app/music/ICorePlayerService;

    .line 155
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 159
    invoke-static {}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$1;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;
    invoke-static {v0, v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$102(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;Lcom/sec/android/app/music/ICorePlayerService;)Lcom/sec/android/app/music/ICorePlayerService;

    .line 161
    return-void
.end method
