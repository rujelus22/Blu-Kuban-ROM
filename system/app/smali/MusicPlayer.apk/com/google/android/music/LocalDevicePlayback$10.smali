.class Lcom/google/android/music/LocalDevicePlayback$10;
.super Ljava/lang/Object;
.source "LocalDevicePlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/LocalDevicePlayback;->saveQueue(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/LocalDevicePlayback;

.field final synthetic val$curAlbum:Ljava/lang/String;

.field final synthetic val$curAlbumId:J

.field final synthetic val$curArtist:Ljava/lang/String;

.field final synthetic val$curTitle:Ljava/lang/String;

.field final synthetic val$full:Z

.field final synthetic val$groupId:J

.field final synthetic val$groupPosition:I

.field final synthetic val$lastUserInteractionTime:J

.field final synthetic val$mediaList:Lcom/google/android/music/medialist/SongList;

.field final synthetic val$playPos:I

.field final synthetic val$playerPosition:J

.field final synthetic val$repeatMode:I

.field final synthetic val$shuffleMode:I


# direct methods
.method constructor <init>(Lcom/google/android/music/LocalDevicePlayback;ZLcom/google/android/music/medialist/SongList;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIIJI)V
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$10;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iput-boolean p2, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$full:Z

    iput-object p3, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$mediaList:Lcom/google/android/music/medialist/SongList;

    iput p4, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$playPos:I

    iput-wide p5, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$curAlbumId:J

    iput-object p7, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$curArtist:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$curAlbum:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$curTitle:Ljava/lang/String;

    iput-wide p10, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$playerPosition:J

    iput-wide p12, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$lastUserInteractionTime:J

    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$repeatMode:I

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$shuffleMode:I

    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$groupId:J

    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$groupPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1196
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$10;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->getPreferences()Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$3700(Lcom/google/android/music/LocalDevicePlayback;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1197
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    iget-boolean v2, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$full:Z

    if-eqz v2, :cond_19

    .line 1198
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$mediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v2}, Lcom/google/android/music/medialist/SongList;->freeze()Ljava/lang/String;

    move-result-object v1

    .line 1199
    .local v1, embryo:Ljava/lang/String;
    const-string v2, "medialist"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1201
    .end local v1           #embryo:Ljava/lang/String;
    :cond_19
    const-string v2, "curpos"

    iget v3, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$playPos:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1202
    const-string v2, "curalbumid"

    iget-wide v3, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$curAlbumId:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1203
    const-string v2, "curartist"

    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$curArtist:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1204
    const-string v2, "curalbum"

    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$curAlbum:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1205
    const-string v2, "curtitle"

    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$curTitle:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1206
    const-string v2, "seekpos"

    iget-wide v3, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$playerPosition:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1207
    const-string v2, "lastUserInteract"

    iget-wide v3, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$lastUserInteractionTime:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1209
    const-string v2, "repeatMode"

    iget v3, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$repeatMode:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1210
    const-string v2, "shufflemode"

    iget v3, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$shuffleMode:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1212
    const-string v2, "playQGroupId"

    iget-wide v3, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$groupId:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1213
    const-string v2, "playQGroupPos"

    iget v3, p0, Lcom/google/android/music/LocalDevicePlayback$10;->val$groupPosition:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1217
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_69
    .catchall {:try_start_0 .. :try_end_69} :catchall_73

    .line 1219
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$10;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1221
    return-void

    .line 1219
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :catchall_73
    move-exception v2

    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$10;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method
