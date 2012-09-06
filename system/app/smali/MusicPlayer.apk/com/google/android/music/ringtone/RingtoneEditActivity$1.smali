.class Lcom/google/android/music/ringtone/RingtoneEditActivity$1;
.super Ljava/lang/Object;
.source "RingtoneEditActivity.java"

# interfaces
.implements Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/ringtone/RingtoneEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/ringtone/RingtoneEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$1;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportProgress(D)Z
    .registers 9
    .parameter "fractionComplete"

    .prologue
    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 166
    .local v0, now:J
    iget-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$1;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #getter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mLoadingLastUpdateTime:J
    invoke-static {v2}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$000(Lcom/google/android/music/ringtone/RingtoneEditActivity;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_2d

    .line 167
    iget-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$1;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #getter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$100(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$1;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #getter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$100(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getMax()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, p1

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 170
    iget-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$1;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #setter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mLoadingLastUpdateTime:J
    invoke-static {v2, v0, v1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$002(Lcom/google/android/music/ringtone/RingtoneEditActivity;J)J

    .line 172
    :cond_2d
    iget-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$1;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #getter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mLoadingKeepGoing:Z
    invoke-static {v2}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$200(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Z

    move-result v2

    return v2
.end method
