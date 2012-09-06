.class Lcom/google/android/music/ringtone/RingtoneEditActivity$3;
.super Ljava/lang/Thread;
.source "RingtoneEditActivity.java"


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
    .line 196
    iput-object p1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$3;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 199
    :try_start_0
    iget-object v5, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$3;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    iget-object v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$3;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #getter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFile:Ljava/io/File;
    invoke-static {v6}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$500(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$3;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #getter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mLoadListener:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;
    invoke-static {v7}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$800(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->create(Ljava/lang/String;Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;)Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    move-result-object v6

    #setter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;
    invoke-static {v5, v6}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$702(Lcom/google/android/music/ringtone/RingtoneEditActivity;Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;)Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    .line 202
    iget-object v5, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$3;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #getter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;
    invoke-static {v5}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$700(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    move-result-object v5

    if-nez v5, :cond_b1

    .line 203
    iget-object v5, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$3;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #getter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$100(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 204
    iget-object v5, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$3;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #getter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFile:Ljava/io/File;
    invoke-static {v5}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$500(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, name:Ljava/lang/String;
    const-string v5, "\\."

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, components:[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x2

    if-ge v5, v6, :cond_68

    .line 208
    iget-object v5, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$3;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    invoke-virtual {v5}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d018b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, err:Ljava/lang/String;
    :goto_4f
    const-string v5, "MusicRingtones"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnsupportedExtension: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local v0           #components:[Ljava/lang/String;
    .end local v2           #err:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    :goto_67
    return-void

    .line 211
    .restart local v0       #components:[Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    :cond_68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$3;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    invoke-virtual {v6}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d018a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_90} :catch_92

    move-result-object v2

    .restart local v2       #err:Ljava/lang/String;
    goto :goto_4f

    .line 218
    .end local v0           #components:[Ljava/lang/String;
    .end local v2           #err:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    :catch_92
    move-exception v1

    .line 219
    .local v1, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$3;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #getter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$100(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 220
    iget-object v5, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$3;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #getter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mInfo:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$900(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    const-string v5, "MusicRingtones"

    const-string v6, "ReadError"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67

    .line 224
    .end local v1           #e:Ljava/lang/Exception;
    :cond_b1
    iget-object v5, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$3;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #getter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$100(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 225
    iget-object v5, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$3;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #getter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mLoadingKeepGoing:Z
    invoke-static {v5}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$200(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 226
    new-instance v4, Lcom/google/android/music/ringtone/RingtoneEditActivity$3$1;

    invoke-direct {v4, p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity$3$1;-><init>(Lcom/google/android/music/ringtone/RingtoneEditActivity$3;)V

    .line 231
    .local v4, runnable:Ljava/lang/Runnable;
    iget-object v5, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$3;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    #getter for: Lcom/google/android/music/ringtone/RingtoneEditActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->access$1100(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_67

    .line 233
    .end local v4           #runnable:Ljava/lang/Runnable;
    :cond_d1
    iget-object v5, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity$3;->this$0:Lcom/google/android/music/ringtone/RingtoneEditActivity;

    invoke-virtual {v5}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->finish()V

    goto :goto_67
.end method
