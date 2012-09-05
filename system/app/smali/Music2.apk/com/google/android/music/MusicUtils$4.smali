.class final Lcom/google/android/music/MusicUtils$4;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicUtils;->setRingtone(Landroid/content/Context;Lcom/google/android/music/store/IStoreService;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field mStatus:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$musicId:J

.field final synthetic val$storeService:Lcom/google/android/music/store/IStoreService;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/music/store/IStoreService;JLjava/lang/String;Landroid/content/Context;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/google/android/music/MusicUtils$4;->val$storeService:Lcom/google/android/music/store/IStoreService;

    iput-wide p2, p0, Lcom/google/android/music/MusicUtils$4;->val$musicId:J

    iput-object p4, p0, Lcom/google/android/music/MusicUtils$4;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/music/MusicUtils$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1192
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/music/MusicUtils$4;->mStatus:I

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 6

    .prologue
    .line 1196
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/MusicUtils$4;->val$storeService:Lcom/google/android/music/store/IStoreService;

    iget-wide v2, p0, Lcom/google/android/music/MusicUtils$4;->val$musicId:J

    iget-object v4, p0, Lcom/google/android/music/MusicUtils$4;->val$title:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/music/store/IStoreService;->setRingtone(JLjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/MusicUtils$4;->mStatus:I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 1200
    :goto_c
    return-void

    .line 1197
    :catch_d
    move-exception v0

    .line 1198
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MusicUtils"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public taskCompleted()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1203
    const/4 v0, 0x0

    .line 1204
    .local v0, message:Ljava/lang/String;
    iget v1, p0, Lcom/google/android/music/MusicUtils$4;->mStatus:I

    packed-switch v1, :pswitch_data_5a

    .line 1223
    const-string v1, "MusicUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected RingtoneStatus value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/music/MusicUtils$4;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :goto_21
    if-eqz v0, :cond_2c

    .line 1227
    iget-object v1, p0, Lcom/google/android/music/MusicUtils$4;->val$context:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1229
    :cond_2c
    return-void

    .line 1206
    :pswitch_2d
    iget-object v1, p0, Lcom/google/android/music/MusicUtils$4;->val$context:Landroid/content/Context;

    const v2, 0x7f0d006d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/music/MusicUtils$4;->val$title:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1207
    goto :goto_21

    .line 1210
    :pswitch_3e
    iget-object v1, p0, Lcom/google/android/music/MusicUtils$4;->val$context:Landroid/content/Context;

    const v2, 0x7f0d006e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1211
    goto :goto_21

    .line 1213
    :pswitch_48
    iget-object v1, p0, Lcom/google/android/music/MusicUtils$4;->val$context:Landroid/content/Context;

    const v2, 0x7f0d006f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1214
    goto :goto_21

    .line 1217
    :pswitch_52
    const-string v1, "MusicUtils"

    const-string v2, "Refused to overwrite?"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 1204
    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_3e
        :pswitch_3e
        :pswitch_52
        :pswitch_48
    .end packed-switch
.end method
