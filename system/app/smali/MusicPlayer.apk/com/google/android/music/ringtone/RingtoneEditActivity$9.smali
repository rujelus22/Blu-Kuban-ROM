.class Lcom/google/android/music/ringtone/RingtoneEditActivity$9;
.super Ljava/lang/Object;
.source "RingtoneEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/ringtone/RingtoneEditActivity;->saveRingtone(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

.field final synthetic val$duration:I

.field final synthetic val$endFrame:I

.field final synthetic val$outFile:Ljava/io/File;

.field final synthetic val$startFrame:I

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/music/ringtone/RingtoneEditActivity;Ljava/io/File;IILjava/lang/String;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$9;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    iput-object p2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$9;->val$outFile:Ljava/io/File;

    iput p3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$9;->val$startFrame:I

    iput p4, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$9;->val$endFrame:I

    iput-object p5, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$9;->val$title:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$9;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1094
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$9;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #getter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;
    invoke-static {v1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$700(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$9;->val$outFile:Ljava/io/File;

    iget v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$9;->val$startFrame:I

    iget v4, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$9;->val$endFrame:I

    iget v5, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$9;->val$startFrame:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->WriteFile(Ljava/io/File;II)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_27

    .line 1100
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$9;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #getter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$100(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1101
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$9;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    iget-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$9;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$9;->val$outFile:Ljava/io/File;

    iget v4, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$9;->val$duration:I

    #calls: Lcom/google/android/music/ringtone/RingtoneEditActivity;->afterSavingRingtone(Ljava/lang/String;Ljava/io/File;I)V
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$1700(Lcom/google/android/music/ringtone/RingtoneEditActivity;Ljava/lang/String;Ljava/io/File;I)V

    .line 1102
    :goto_26
    return-void

    .line 1095
    :catch_27
    move-exception v0

    .line 1096
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$9;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #getter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$100(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1097
    const-string v1, "MusicRingtones"

    const-string v2, "WriteError"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26
.end method
