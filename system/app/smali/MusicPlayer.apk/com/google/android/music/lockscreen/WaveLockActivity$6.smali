.class Lcom/google/android/music/lockscreen/WaveLockActivity$6;
.super Ljava/lang/Object;
.source "WaveLockActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/lockscreen/WaveLockActivity;->updateTrackInfoImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

.field final synthetic val$finalArtistName:Ljava/lang/String;

.field final synthetic val$finalTrackName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/music/lockscreen/WaveLockActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$6;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    iput-object p2, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$6;->val$finalArtistName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$6;->val$finalTrackName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$6;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    #getter for: Lcom/google/android/music/lockscreen/WaveLockActivity;->mArtistName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->access$900(Lcom/google/android/music/lockscreen/WaveLockActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$6;->val$finalArtistName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$6;->this$0:Lcom/google/android/music/lockscreen/WaveLockActivity;

    #getter for: Lcom/google/android/music/lockscreen/WaveLockActivity;->mTrackName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->access$1000(Lcom/google/android/music/lockscreen/WaveLockActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity$6;->val$finalTrackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    return-void
.end method
