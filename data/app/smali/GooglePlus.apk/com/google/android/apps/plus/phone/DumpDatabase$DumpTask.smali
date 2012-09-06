.class Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;
.super Landroid/os/AsyncTask;
.source "DumpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/DumpDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DumpTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mFromDbName:[Ljava/lang/String;

.field private mOriginalSize:[J

.field private mToDbName:[Ljava/lang/String;

.field private mTotalBytes:J

.field final synthetic this$0:Lcom/google/android/apps/plus/phone/DumpDatabase;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/DumpDatabase;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 74
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->this$0:Lcom/google/android/apps/plus/phone/DumpDatabase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 76
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->mFromDbName:[Ljava/lang/String;

    .line 77
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->mToDbName:[Ljava/lang/String;

    .line 78
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->mOriginalSize:[J

    return-void
.end method

.method private doDump(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 18
    .parameter "fromDbName"
    .parameter "toDbName"

    .prologue
    .line 130
    const/4 v3, 0x0

    .line 131
    .local v3, bos:Ljava/io/BufferedOutputStream;
    const/4 v1, 0x0

    .line 133
    .local v1, bis:Ljava/io/BufferedInputStream;
    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-direct {v10, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    .local v10, outFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 135
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 138
    :cond_16
    iget-object v11, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->this$0:Lcom/google/android/apps/plus/phone/DumpDatabase;

    #getter for: Lcom/google/android/apps/plus/phone/DumpDatabase;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/google/android/apps/plus/phone/DumpDatabase;->access$100(Lcom/google/android/apps/plus/phone/DumpDatabase;)Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 141
    .local v8, inFile:Ljava/io/File;
    :try_start_22
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 143
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_8c
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2f} :catch_a9

    .line 144
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .local v4, bos:Ljava/io/BufferedOutputStream;
    :try_start_2f
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_a2
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_39} :catch_ab

    .line 146
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .local v2, bis:Ljava/io/BufferedInputStream;
    const/16 v11, 0x4000

    :try_start_3b
    new-array v5, v11, [B

    .line 148
    .local v5, buffer:[B
    :goto_3d
    invoke-virtual {v2, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    .local v6, bytesRead:I
    if-lez v6, :cond_7b

    .line 149
    const/4 v11, 0x0

    invoke-virtual {v4, v5, v11, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 150
    iget-wide v11, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->mTotalBytes:J

    int-to-long v13, v6

    add-long/2addr v11, v13

    iput-wide v11, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->mTotalBytes:J

    .line 153
    iget-object v11, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->this$0:Lcom/google/android/apps/plus/phone/DumpDatabase;

    #getter for: Lcom/google/android/apps/plus/phone/DumpDatabase;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/google/android/apps/plus/phone/DumpDatabase;->access$200(Lcom/google/android/apps/plus/phone/DumpDatabase;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    .line 154
    .local v9, msg:Landroid/os/Message;
    iget-wide v11, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->mTotalBytes:J

    long-to-int v11, v11

    iput v11, v9, Landroid/os/Message;->arg1:I

    .line 155
    iget-object v11, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->this$0:Lcom/google/android/apps/plus/phone/DumpDatabase;

    #getter for: Lcom/google/android/apps/plus/phone/DumpDatabase;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/google/android/apps/plus/phone/DumpDatabase;->access$200(Lcom/google/android/apps/plus/phone/DumpDatabase;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_65
    .catchall {:try_start_3b .. :try_end_65} :catchall_a5
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_65} :catch_66

    goto :goto_3d

    .line 157
    .end local v5           #buffer:[B
    .end local v6           #bytesRead:I
    .end local v9           #msg:Landroid/os/Message;
    :catch_66
    move-exception v7

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v3, v4

    .line 158
    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    .local v7, e:Ljava/io/IOException;
    :goto_69
    :try_start_69
    const-string v11, "DumpDatabase"

    const-string v12, "Exception copying database; destination may not be complete."

    invoke-static {v11, v12, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_8c

    .line 160
    if-eqz v3, :cond_75

    .line 162
    :try_start_72
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_9a

    .line 168
    :cond_75
    :goto_75
    if-eqz v1, :cond_7a

    .line 170
    :try_start_77
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_9c

    .line 176
    .end local v7           #e:Ljava/io/IOException;
    :cond_7a
    :goto_7a
    return-object v10

    .line 160
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #buffer:[B
    .restart local v6       #bytesRead:I
    :cond_7b
    if-eqz v4, :cond_80

    .line 162
    :try_start_7d
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_98

    .line 168
    :cond_80
    :goto_80
    if-eqz v2, :cond_ae

    .line 170
    :try_start_82
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_88

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v3, v4

    .line 173
    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_7a

    .line 171
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    :catch_88
    move-exception v11

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v3, v4

    .line 173
    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_7a

    .line 160
    .end local v5           #buffer:[B
    .end local v6           #bytesRead:I
    :catchall_8c
    move-exception v11

    :goto_8d
    if-eqz v3, :cond_92

    .line 162
    :try_start_8f
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_9e

    .line 168
    :cond_92
    :goto_92
    if-eqz v1, :cond_97

    .line 170
    :try_start_94
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_a0

    .line 173
    :cond_97
    :goto_97
    throw v11

    .line 163
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #buffer:[B
    .restart local v6       #bytesRead:I
    :catch_98
    move-exception v11

    goto :goto_80

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #buffer:[B
    .end local v6           #bytesRead:I
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    .restart local v7       #e:Ljava/io/IOException;
    :catch_9a
    move-exception v11

    goto :goto_75

    .line 171
    :catch_9c
    move-exception v11

    goto :goto_7a

    .line 163
    .end local v7           #e:Ljava/io/IOException;
    :catch_9e
    move-exception v12

    goto :goto_92

    .line 171
    :catch_a0
    move-exception v12

    goto :goto_97

    .line 160
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    :catchall_a2
    move-exception v11

    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_8d

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    :catchall_a5
    move-exception v11

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_8d

    .line 157
    :catch_a9
    move-exception v7

    goto :goto_69

    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    :catch_ab
    move-exception v7

    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_69

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #buffer:[B
    .restart local v6       #bytesRead:I
    :cond_ae
    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_7a
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 74
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 12
    .parameter "params"

    .prologue
    .line 108
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v6, 0x3

    if-ge v1, v6, :cond_5c

    .line 109
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->mOriginalSize:[J

    aget-wide v2, v6, v1

    .line 110
    .local v2, originalSize:J
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->mFromDbName:[Ljava/lang/String;

    aget-object v0, v6, v1

    .line 111
    .local v0, fromDbName:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->mToDbName:[Ljava/lang/String;

    aget-object v5, v6, v1

    .line 113
    .local v5, toDbName:Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_31

    .line 114
    const-string v6, "DumpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find database: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 118
    :cond_31
    invoke-direct {p0, v0, v5}, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->doDump(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 120
    .local v4, outFile:Ljava/io/File;
    const-string v6, "DumpDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dump complete; orig size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", copy size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 124
    .end local v0           #fromDbName:Ljava/lang/String;
    .end local v2           #originalSize:J
    .end local v4           #outFile:Ljava/io/File;
    .end local v5           #toDbName:Ljava/lang/String;
    :cond_5c
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->this$0:Lcom/google/android/apps/plus/phone/DumpDatabase;

    #getter for: Lcom/google/android/apps/plus/phone/DumpDatabase;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/google/android/apps/plus/phone/DumpDatabase;->access$000(Lcom/google/android/apps/plus/phone/DumpDatabase;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 125
    const/4 v6, 0x0

    return-object v6
.end method

.method protected onPreExecute()V
    .registers 14

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 83
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->this$0:Lcom/google/android/apps/plus/phone/DumpDatabase;

    #getter for: Lcom/google/android/apps/plus/phone/DumpDatabase;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/google/android/apps/plus/phone/DumpDatabase;->access$100(Lcom/google/android/apps/plus/phone/DumpDatabase;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 84
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v4

    .line 85
    .local v4, index:I
    const-wide/16 v5, 0x0

    .line 87
    .local v5, totalSize:J
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->mFromDbName:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "es"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".db"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 88
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->mFromDbName:[Ljava/lang/String;

    const-string v8, "picasa.db"

    aput-object v8, v7, v11

    .line 89
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->mFromDbName:[Ljava/lang/String;

    const-string v8, "picasa.upload.db"

    aput-object v8, v7, v12

    .line 91
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->mToDbName:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "es"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_dump.bin"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 92
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->mToDbName:[Ljava/lang/String;

    const-string v8, "picasa_dump.bin"

    aput-object v8, v7, v11

    .line 93
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->mToDbName:[Ljava/lang/String;

    const-string v8, "picasa.upload_dump.bin"

    aput-object v8, v7, v12

    .line 95
    const/4 v2, 0x0

    .local v2, i:I
    :goto_66
    const/4 v7, 0x3

    if-ge v2, v7, :cond_93

    .line 96
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->mFromDbName:[Ljava/lang/String;

    aget-object v1, v7, v2

    .line 97
    .local v1, dbName:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->this$0:Lcom/google/android/apps/plus/phone/DumpDatabase;

    #getter for: Lcom/google/android/apps/plus/phone/DumpDatabase;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/google/android/apps/plus/phone/DumpDatabase;->access$100(Lcom/google/android/apps/plus/phone/DumpDatabase;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 98
    .local v3, inFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_90

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_90

    .line 99
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->mOriginalSize:[J

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    aput-wide v8, v7, v2

    .line 100
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->mOriginalSize:[J

    aget-wide v7, v7, v2

    add-long/2addr v5, v7

    .line 95
    :cond_90
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 103
    .end local v1           #dbName:Ljava/lang/String;
    .end local v3           #inFile:Ljava/io/File;
    :cond_93
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->this$0:Lcom/google/android/apps/plus/phone/DumpDatabase;

    #getter for: Lcom/google/android/apps/plus/phone/DumpDatabase;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/google/android/apps/plus/phone/DumpDatabase;->access$000(Lcom/google/android/apps/plus/phone/DumpDatabase;)Landroid/app/ProgressDialog;

    move-result-object v7

    long-to-int v8, v5

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 104
    return-void
.end method
