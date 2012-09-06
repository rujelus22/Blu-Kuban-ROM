.class Lcom/google/android/music/activitymanagement/TopLevelActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "TopLevelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/activitymanagement/TopLevelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$3;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    .line 639
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.android.music.playbackfailed"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 641
    const-string v4, "errorType"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 644
    .local v2, errorType:I
    const-string v4, "id"

    invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 645
    .local v3, extraSongId:Ljava/lang/Long;
    const/4 v1, 0x0

    .line 647
    .local v1, audioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3d

    .line 648
    new-instance v1, Lcom/google/android/music/dl/ContentIdentifier;

    .end local v1           #audioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/music/dl/ContentIdentifier$Domain;->values()[Lcom/google/android/music/dl/ContentIdentifier$Domain;

    move-result-object v6

    const-string v7, "domain"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    aget-object v6, v6, v7

    invoke-direct {v1, v4, v5, v6}, Lcom/google/android/music/dl/ContentIdentifier;-><init>(JLcom/google/android/music/dl/ContentIdentifier$Domain;)V

    .line 653
    .restart local v1       #audioId:Lcom/google/android/music/dl/ContentIdentifier;
    :cond_3d
    if-ne v2, v8, :cond_5e

    .line 654
    const-string v4, "TopLevelActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected extra: errorType for action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in mMediaPlayerBroadcastReceiver"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    .end local v1           #audioId:Lcom/google/android/music/dl/ContentIdentifier;
    .end local v2           #errorType:I
    .end local v3           #extraSongId:Ljava/lang/Long;
    :goto_5d
    return-void

    .line 659
    .restart local v1       #audioId:Lcom/google/android/music/dl/ContentIdentifier;
    .restart local v2       #errorType:I
    .restart local v3       #extraSongId:Ljava/lang/Long;
    :cond_5e
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$3;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v4, v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->alertFailureIfNecessary(Lcom/google/android/music/dl/ContentIdentifier;I)V

    goto :goto_5d

    .line 661
    .end local v1           #audioId:Lcom/google/android/music/dl/ContentIdentifier;
    .end local v2           #errorType:I
    .end local v3           #extraSongId:Ljava/lang/Long;
    :cond_64
    const-string v4, "TopLevelActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unkown action coming to mMediaPlayerBroadcastReceiver: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d
.end method
