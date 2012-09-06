.class Lcom/google/android/music/lockscreen/WaveLockActivity$1;
.super Ljava/lang/Object;
.source "WaveLockActivity.java"

# interfaces
.implements Lcom/google/android/music/lockscreen/WaveScene$OnTriggerListener;


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
    .line 148
    iput-object p1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$1;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGrabbedStateChange(Lcom/google/android/music/lockscreen/WaveView;I)V
    .registers 3
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 163
    return-void
.end method

.method public onTrigger(Lcom/google/android/music/lockscreen/WaveView;I)V
    .registers 5
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    .line 151
    const/16 v0, 0xa

    if-ne p2, v0, :cond_15

    .line 152
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$1;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$1;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    invoke-virtual {v1}, Lcom/google/android/music/lockscreen/WaveLockActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    #calls: Lcom/google/android/music/lockscreen/WaveLockActivity;->restoreScreenTimeout(Landroid/content/ContentResolver;)V
    invoke-static {v0, v1}, Lcom/google/android/music/lockscreen/WaveLockActivity;->access$100(Lcom/google/android/music/lockscreen/WaveLockActivity;Landroid/content/ContentResolver;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$1;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    invoke-virtual {v0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->finish()V

    .line 159
    :cond_14
    :goto_14
    return-void

    .line 154
    :cond_15
    const/16 v0, 0x14

    if-ne p2, v0, :cond_20

    .line 155
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$1;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    const/4 v1, 0x1

    #calls: Lcom/google/android/music/lockscreen/WaveLockActivity;->updateLayout(Z)V
    invoke-static {v0, v1}, Lcom/google/android/music/lockscreen/WaveLockActivity;->access$200(Lcom/google/android/music/lockscreen/WaveLockActivity;Z)V

    goto :goto_14

    .line 156
    :cond_20
    const/16 v0, 0x1e

    if-ne p2, v0, :cond_14

    .line 157
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$1;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    const/4 v1, 0x0

    #calls: Lcom/google/android/music/lockscreen/WaveLockActivity;->updateLayout(Z)V
    invoke-static {v0, v1}, Lcom/google/android/music/lockscreen/WaveLockActivity;->access$200(Lcom/google/android/music/lockscreen/WaveLockActivity;Z)V

    goto :goto_14
.end method
