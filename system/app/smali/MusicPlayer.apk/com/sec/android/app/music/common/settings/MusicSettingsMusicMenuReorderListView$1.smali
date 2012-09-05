.class Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$1;
.super Landroid/os/Handler;
.source "MusicSettingsMusicMenuReorderListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;)V
    .registers 2
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$1;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 139
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    .line 141
    .local v0, corePlayer:Lcom/sec/android/app/music/ICorePlayerService;
    if-nez v0, :cond_5

    .line 151
    :goto_4
    return-void

    .line 146
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$1;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->access$000(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->dismissDialog(I)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_11} :catch_20

    .line 149
    :goto_11
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView$1;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->access$000(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 150
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_4

    .line 147
    :catch_20
    move-exception v1

    goto :goto_11
.end method
