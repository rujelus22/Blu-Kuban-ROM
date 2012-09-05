.class Lcom/lifevibes/trimapp/Trim$1;
.super Landroid/content/BroadcastReceiver;
.source "Trim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/trimapp/Trim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lifevibes/trimapp/Trim;


# direct methods
.method constructor <init>(Lcom/lifevibes/trimapp/Trim;)V
    .registers 2
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/lifevibes/trimapp/Trim$1;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 247
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 248
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 249
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 251
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$1;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;
    invoke-static {v2}, Lcom/lifevibes/trimapp/Trim;->access$100(Lcom/lifevibes/trimapp/Trim;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim$1;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mFileCount:I
    invoke-static {v3}, Lcom/lifevibes/trimapp/Trim;->access$200(Lcom/lifevibes/trimapp/Trim;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 254
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$1;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-virtual {v0}, Lcom/lifevibes/trimapp/Trim;->onBackPressed()V

    .line 308
    :cond_3d
    :goto_3d
    return-void

    .line 257
    :cond_3e
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11d

    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim$1;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v3}, Lcom/lifevibes/trimapp/Trim;->access$300(Lcom/lifevibes/trimapp/Trim;)Landroid/widget/VideoView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_11d

    .line 260
    const-string v2, "state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_a9

    :goto_5a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 262
    :try_start_5e
    const-string v1, "android.widget.VideoView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 263
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 264
    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 265
    const-string v3, "adjustVolumeGain"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 267
    const-string v2, "android.media.AudioManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 268
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 269
    const-string v0, "HEADSET_VOLUME"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 271
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 272
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 273
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$1;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$300(Lcom/lifevibes/trimapp/Trim;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5e .. :try_end_9f} :catch_a0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5e .. :try_end_9f} :catch_eb
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5e .. :try_end_9f} :catch_f5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5e .. :try_end_9f} :catch_ff
    .catch Ljava/lang/IllegalAccessException; {:try_start_5e .. :try_end_9f} :catch_109
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5e .. :try_end_9f} :catch_113

    goto :goto_3d

    .line 284
    :catch_a0
    move-exception v0

    .line 285
    const-string v0, "TrimApp"

    const-string v1, "Class.forName() ClassNotFoundException"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :cond_a9
    move v0, v1

    .line 260
    goto :goto_5a

    .line 275
    :cond_ab
    :try_start_ab
    const-string v0, "SPEAKER_VOLUME"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 277
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 278
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 279
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$1;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$300(Lcom/lifevibes/trimapp/Trim;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$1;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$300(Lcom/lifevibes/trimapp/Trim;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    if-lez v0, :cond_3d

    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$1;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$300(Lcom/lifevibes/trimapp/Trim;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 281
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$1;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-virtual {v0}, Lcom/lifevibes/trimapp/Trim;->doPauseAction()Z
    :try_end_e9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ab .. :try_end_e9} :catch_a0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_ab .. :try_end_e9} :catch_eb
    .catch Ljava/lang/NoSuchFieldException; {:try_start_ab .. :try_end_e9} :catch_f5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ab .. :try_end_e9} :catch_ff
    .catch Ljava/lang/IllegalAccessException; {:try_start_ab .. :try_end_e9} :catch_109
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_ab .. :try_end_e9} :catch_113

    goto/16 :goto_3d

    .line 286
    :catch_eb
    move-exception v0

    .line 287
    const-string v0, "TrimApp"

    const-string v1, "Class.getDeclaredMethod() NoSuchMethodException"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    .line 288
    :catch_f5
    move-exception v0

    .line 289
    const-string v0, "TrimApp"

    const-string v1, "Class.getDeclaredField() NoSuchFieldException"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    .line 290
    :catch_ff
    move-exception v0

    .line 291
    const-string v0, "TrimApp"

    const-string v1, "Method.invoke() IllegalArgumentException"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    .line 292
    :catch_109
    move-exception v0

    .line 293
    const-string v0, "TrimApp"

    const-string v1, "Method.invoke() IllegalAccessException"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    .line 294
    :catch_113
    move-exception v0

    .line 295
    const-string v0, "TrimApp"

    const-string v1, "Method.invoke() InvocationTargetException"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    .line 297
    :cond_11d
    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$1;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$300(Lcom/lifevibes/trimapp/Trim;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 300
    const-string v0, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 301
    if-eqz v0, :cond_140

    .line 302
    const-string v0, "TrimApp"

    const-string v1, "Disconnect A2DP!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_140
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$1;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$300(Lcom/lifevibes/trimapp/Trim;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    if-lez v0, :cond_3d

    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$1;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$300(Lcom/lifevibes/trimapp/Trim;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 305
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$1;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-virtual {v0}, Lcom/lifevibes/trimapp/Trim;->doPauseAction()Z

    goto/16 :goto_3d
.end method
