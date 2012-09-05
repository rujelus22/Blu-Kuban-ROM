.class Lcom/google/android/music/activitymanagement/MusicStateController$2;
.super Ljava/lang/Object;
.source "MusicStateController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/activitymanagement/MusicStateController;->initialize(Landroid/content/Intent;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/activitymanagement/MusicStateController;

.field final synthetic val$songlist:Lcom/google/android/music/medialist/SongList;


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/medialist/SongList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicStateController$2;->this$0:Lcom/google/android/music/activitymanagement/MusicStateController;

    iput-object p2, p0, Lcom/google/android/music/activitymanagement/MusicStateController$2;->val$songlist:Lcom/google/android/music/medialist/SongList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController$2;->this$0:Lcom/google/android/music/activitymanagement/MusicStateController;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController$2;->val$songlist:Lcom/google/android/music/medialist/SongList;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/medialist/SongList;IZ)V

    .line 366
    return-void
.end method
