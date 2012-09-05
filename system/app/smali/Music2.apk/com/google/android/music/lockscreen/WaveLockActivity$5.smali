.class Lcom/google/android/music/lockscreen/WaveLockActivity$5;
.super Landroid/os/Handler;
.source "WaveLockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/lockscreen/WaveLockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/lockscreen/WaveLockActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$5;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 251
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    .line 265
    :goto_5
    return-void

    .line 254
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$5;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    #calls: Lcom/google/android/music/lockscreen/WaveLockActivity;->updateTrackInfoImpl()V
    invoke-static {v0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->access$700(Lcom/google/android/music/lockscreen/WaveLockActivity;)V

    goto :goto_5

    .line 257
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$5;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    const/4 v1, 0x1

    #calls: Lcom/google/android/music/lockscreen/WaveLockActivity;->updateLayoutImpl(Z)V
    invoke-static {v0, v1}, Lcom/google/android/music/lockscreen/WaveLockActivity;->access$800(Lcom/google/android/music/lockscreen/WaveLockActivity;Z)V

    goto :goto_5

    .line 260
    :pswitch_13
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$5;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    const/4 v1, 0x0

    #calls: Lcom/google/android/music/lockscreen/WaveLockActivity;->updateLayoutImpl(Z)V
    invoke-static {v0, v1}, Lcom/google/android/music/lockscreen/WaveLockActivity;->access$800(Lcom/google/android/music/lockscreen/WaveLockActivity;Z)V

    goto :goto_5

    .line 251
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_13
    .end packed-switch
.end method
