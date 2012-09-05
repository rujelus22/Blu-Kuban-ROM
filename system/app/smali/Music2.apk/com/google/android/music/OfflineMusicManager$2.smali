.class Lcom/google/android/music/OfflineMusicManager$2;
.super Ljava/lang/Object;
.source "OfflineMusicManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/OfflineMusicManager;->commitChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/OfflineMusicManager;


# direct methods
.method constructor <init>(Lcom/google/android/music/OfflineMusicManager;)V
    .registers 2
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/google/android/music/OfflineMusicManager$2;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$2;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #getter for: Lcom/google/android/music/OfflineMusicManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/music/OfflineMusicManager;->access$1300(Lcom/google/android/music/OfflineMusicManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager$2;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #getter for: Lcom/google/android/music/OfflineMusicManager;->mDeselectedArtists:Ljava/util/TreeSet;
    invoke-static {v1}, Lcom/google/android/music/OfflineMusicManager;->access$1400(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager$2;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #getter for: Lcom/google/android/music/OfflineMusicManager;->mDeselectedAlbums:Ljava/util/TreeSet;
    invoke-static {v2}, Lcom/google/android/music/OfflineMusicManager;->access$1500(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/OfflineMusicManager$2;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #getter for: Lcom/google/android/music/OfflineMusicManager;->mDeselectedPlaylists:Ljava/util/TreeSet;
    invoke-static {v3}, Lcom/google/android/music/OfflineMusicManager;->access$1600(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/OfflineMusicManager$2;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #getter for: Lcom/google/android/music/OfflineMusicManager;->mSelectedArtists:Ljava/util/TreeSet;
    invoke-static {v4}, Lcom/google/android/music/OfflineMusicManager;->access$1700(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/OfflineMusicManager$2;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #getter for: Lcom/google/android/music/OfflineMusicManager;->mSelectedAlbums:Ljava/util/TreeSet;
    invoke-static {v5}, Lcom/google/android/music/OfflineMusicManager;->access$1800(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/OfflineMusicManager$2;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #getter for: Lcom/google/android/music/OfflineMusicManager;->mSelectedPlaylists:Ljava/util/TreeSet;
    invoke-static {v6}, Lcom/google/android/music/OfflineMusicManager;->access$1900(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/google/android/music/store/KeepOnUpdater;->startUpdateKeepon(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 547
    return-void
.end method
