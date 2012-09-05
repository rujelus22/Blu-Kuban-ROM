.class Lcom/sec/android/app/music/common/manager/MusicDrmManager$2;
.super Ljava/lang/Object;
.source "MusicDrmManager.java"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/manager/MusicDrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/manager/MusicDrmManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/manager/MusicDrmManager;)V
    .registers 2
    .parameter

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$2;->this$0:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1189
    invoke-static {}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hitting event listener "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    invoke-virtual {p2}, Landroid/drm/DrmEvent;->getType()I

    move-result v0

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_2d

    .line 1192
    invoke-static {}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DrmEventListener TYPE_DRM_INFO_PROCESSED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    iget-object v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$2;->this$0:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    #getter for: Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->access$100(Lcom/sec/android/app/music/common/manager/MusicDrmManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1196
    iget-object v0, p0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$2;->this$0:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    #getter for: Lcom/sec/android/app/music/common/manager/MusicDrmManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->access$100(Lcom/sec/android/app/music/common/manager/MusicDrmManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1199
    :cond_2d
    return-void
.end method
