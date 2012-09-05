.class Lcom/sec/android/app/music/MusicPlayer$9;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/MusicPlayer;->initializeControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer$9;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "arg0"

    .prologue
    const/high16 v3, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1120
    :try_start_4
    sget-object v6, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    if-ne v6, v3, :cond_4a

    move v0, v4

    .line 1122
    .local v0, bSrsMode:Z
    :goto_c
    if-nez v0, :cond_a0

    .line 1123
    const/4 v2, -0x1

    .line 1124
    .local v2, strId:I
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$9;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v6}, Lcom/sec/android/app/music/framework/SecAudioManager;->isWiredHeadsetOn()Z

    move-result v6

    if-nez v6, :cond_4c

    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$9;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v6}, Lcom/sec/android/app/music/framework/SecAudioManager;->isBluetoothA2dpOn()Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 1125
    const v2, 0x7f0900f5

    .line 1136
    :cond_26
    :goto_26
    const/4 v6, -0x1

    if-eq v2, v6, :cond_a0

    .line 1137
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$9;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    if-nez v3, :cond_98

    .line 1138
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$9;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v4, p0, Lcom/sec/android/app/music/MusicPlayer$9;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v4, v4, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$9;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v5, v2}, Lcom/sec/android/app/music/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/app/music/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    .line 1143
    :goto_42
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$9;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1159
    .end local v0           #bSrsMode:Z
    .end local v2           #strId:I
    :goto_49
    return-void

    :cond_4a
    move v0, v5

    .line 1120
    goto :goto_c

    .line 1126
    .restart local v0       #bSrsMode:Z
    .restart local v2       #strId:I
    :cond_4c
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$9;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/MusicPlayer;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v6}, Lcom/sec/android/app/music/framework/SecAudioManager;->isExtraSpeakerDockOn()Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 1127
    const v2, 0x7f0900f5

    goto :goto_26

    .line 1128
    :cond_5a
    sget-boolean v6, Lcom/sec/android/app/music/MusicUtils;->sIsHeadsetPlugged:Z

    if-nez v6, :cond_62

    .line 1129
    const v2, 0x7f0900f5

    goto :goto_26

    .line 1130
    :cond_62
    sget-object v6, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    if-ne v6, v4, :cond_72

    sget-object v6, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    const/16 v7, 0x1000

    if-eq v6, v7, :cond_26

    .line 1133
    :cond_72
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$9;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #calls: Lcom/sec/android/app/music/MusicPlayer;->setEqEffectToNormal()V
    invoke-static {v6}, Lcom/sec/android/app/music/MusicPlayer;->access$500(Lcom/sec/android/app/music/MusicPlayer;)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_77} :catch_78

    goto :goto_26

    .line 1156
    .end local v0           #bSrsMode:Z
    .end local v2           #strId:I
    :catch_78
    move-exception v1

    .line 1157
    .local v1, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$9;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException occured 32 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 1141
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #bSrsMode:Z
    .restart local v2       #strId:I
    :cond_98
    :try_start_98
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$9;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v3, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_42

    .line 1148
    .end local v2           #strId:I
    :cond_a0
    if-nez v0, :cond_be

    move v0, v4

    .line 1149
    :goto_a3
    sget-object v4, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v5, 0x2

    if-eqz v0, :cond_c0

    :goto_a8
    aput v3, v4, v5

    .line 1151
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$9;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v3}, Lcom/sec/android/app/music/ICorePlayerService;->setR2VSMode()V

    .line 1153
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$9;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v4, v3, Lcom/sec/android/app/music/MusicPlayer;->mButtonSrs:Landroid/widget/ImageView;

    if-eqz v0, :cond_c3

    const v3, 0x7f02008a

    :goto_ba
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_bd} :catch_78

    goto :goto_49

    :cond_be
    move v0, v5

    .line 1148
    goto :goto_a3

    .line 1149
    :cond_c0
    const/high16 v3, 0x40

    goto :goto_a8

    .line 1153
    :cond_c3
    const v3, 0x7f020089

    goto :goto_ba
.end method
