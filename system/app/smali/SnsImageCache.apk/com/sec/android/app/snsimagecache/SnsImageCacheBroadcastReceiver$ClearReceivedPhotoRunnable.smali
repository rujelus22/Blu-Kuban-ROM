.class Lcom/sec/android/app/snsimagecache/SnsImageCacheBroadcastReceiver$ClearReceivedPhotoRunnable;
.super Ljava/lang/Object;
.source "SnsImageCacheBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsimagecache/SnsImageCacheBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearReceivedPhotoRunnable"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsimagecache/SnsImageCacheBroadcastReceiver;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheBroadcastReceiver$ClearReceivedPhotoRunnable;->this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheBroadcastReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheBroadcastReceiver$ClearReceivedPhotoRunnable;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 91
    const-string v9, "SNS_IMAGE_CACHE"

    const-string v10, "ClearReceivedPhotoRunnable start..."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheBroadcastReceiver$ClearReceivedPhotoRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ReceivedFiles"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, receivedFileDir:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v8, sourceDir:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_ff

    .line 100
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "To_Be_Deleted_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, destPathName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, destDir:Ljava/io/File;
    invoke-virtual {v8, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_95

    .line 105
    invoke-static {}, Lcom/sec/android/app/snsimagecache/util/SnsImageCacheUtil;->isLoggable()Z

    move-result v9

    if-eqz v9, :cond_f7

    .line 106
    const-string v9, "SNS_IMAGE_CACHE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "clearReceivedPhotoFiles : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " renameTo "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_95
    :goto_95
    new-instance v6, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v6, parentDir:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 120
    .local v0, childDir:[Ljava/io/File;
    if-eqz v0, :cond_129

    .line 121
    const/4 v4, 0x0

    .local v4, i:I
    :goto_a5
    array-length v9, v0

    if-ge v4, v9, :cond_129

    .line 122
    aget-object v9, v0, v4

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "To_Be_Deleted_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_125

    .line 123
    aget-object v9, v0, v4

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 124
    .local v3, fileToDelete:[Ljava/io/File;
    if-eqz v3, :cond_120

    .line 125
    const/4 v5, 0x0

    .local v5, index:I
    :goto_c0
    array-length v9, v3

    if-ge v5, v9, :cond_120

    .line 127
    invoke-static {}, Lcom/sec/android/app/snsimagecache/util/SnsImageCacheUtil;->isLoggable()Z

    move-result v9

    if-eqz v9, :cond_107

    .line 128
    const-string v9, "SNS_IMAGE_CACHE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "delete "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v5

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_e7
    aget-object v9, v3, v5

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_f4

    .line 134
    aget-object v9, v3, v5

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 125
    :cond_f4
    add-int/lit8 v5, v5, 0x1

    goto :goto_c0

    .line 109
    .end local v0           #childDir:[Ljava/io/File;
    .end local v3           #fileToDelete:[Ljava/io/File;
    .end local v4           #i:I
    .end local v5           #index:I
    .end local v6           #parentDir:Ljava/io/File;
    :cond_f7
    const-string v9, "SNS_IMAGE_CACHE"

    const-string v10, "clearReceivedPhotoFiles"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 114
    .end local v1           #destDir:Ljava/io/File;
    .end local v2           #destPathName:Ljava/lang/String;
    :cond_ff
    const-string v9, "SNS_IMAGE_CACHE"

    const-string v10, "ClearReceivedPhotoRunnable : source directory does not exist."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_106
    return-void

    .line 130
    .restart local v0       #childDir:[Ljava/io/File;
    .restart local v1       #destDir:Ljava/io/File;
    .restart local v2       #destPathName:Ljava/lang/String;
    .restart local v3       #fileToDelete:[Ljava/io/File;
    .restart local v4       #i:I
    .restart local v5       #index:I
    .restart local v6       #parentDir:Ljava/io/File;
    :cond_107
    const-string v9, "SNS_IMAGE_CACHE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "delete - index : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e7

    .line 136
    .end local v5           #index:I
    :cond_120
    aget-object v9, v0, v4

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 121
    .end local v3           #fileToDelete:[Ljava/io/File;
    :cond_125
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a5

    .line 141
    .end local v4           #i:I
    :cond_129
    const-string v9, "SNS_IMAGE_CACHE"

    const-string v10, "ClearReceivedPhotoRunnable completed."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_106
.end method
