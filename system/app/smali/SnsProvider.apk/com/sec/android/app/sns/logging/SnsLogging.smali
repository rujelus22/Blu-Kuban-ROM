.class public final Lcom/sec/android/app/sns/logging/SnsLogging;
.super Ljava/lang/Object;
.source "SnsLogging.java"


# static fields
.field private static mPost:Ljava/lang/String;

.field private static mPre:Ljava/lang/String;

.field private static mReq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput-object v0, Lcom/sec/android/app/sns/logging/SnsLogging;->mPre:Ljava/lang/String;

    .line 48
    sput-object v0, Lcom/sec/android/app/sns/logging/SnsLogging;->mReq:Ljava/lang/String;

    .line 50
    sput-object v0, Lcom/sec/android/app/sns/logging/SnsLogging;->mPost:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkType(I)V
    .registers 5
    .parameter "type"

    .prologue
    .line 60
    const/4 v1, 0x1

    if-eq p0, v1, :cond_6

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1b

    .line 61
    :cond_6
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 62
    .local v0, date:Ljava/util/Date;
    const-string v1, "yyMMddhhmmss"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/sns/logging/SnsLogging;->mPost:Ljava/lang/String;

    .line 65
    .end local v0           #date:Ljava/util/Date;
    :cond_1b
    packed-switch p0, :pswitch_data_34

    .line 89
    :goto_1e
    return-void

    .line 67
    :pswitch_1f
    const-string v1, "Request"

    sput-object v1, Lcom/sec/android/app/sns/logging/SnsLogging;->mPre:Ljava/lang/String;

    goto :goto_1e

    .line 72
    :pswitch_24
    const-string v1, "Response"

    sput-object v1, Lcom/sec/android/app/sns/logging/SnsLogging;->mPre:Ljava/lang/String;

    goto :goto_1e

    .line 77
    :pswitch_29
    const-string v1, "Start"

    sput-object v1, Lcom/sec/android/app/sns/logging/SnsLogging;->mPre:Ljava/lang/String;

    goto :goto_1e

    .line 82
    :pswitch_2e
    const-string v1, "End"

    sput-object v1, Lcom/sec/android/app/sns/logging/SnsLogging;->mPre:Ljava/lang/String;

    goto :goto_1e

    .line 65
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_24
        :pswitch_29
        :pswitch_2e
    .end packed-switch
.end method

.method public static saveLog(Landroid/content/Context;ILjava/lang/Object;I)Z
    .registers 12
    .parameter "context"
    .parameter "reqtype"
    .parameter "body"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    const-string v5, "SNS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SnsLogging : Entered type : ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {p3}, Lcom/sec/android/app/sns/logging/SnsLogging;->checkType(I)V

    .line 105
    const/4 v5, -0x1

    if-ne p1, v5, :cond_77

    .line 106
    const-string v5, "ElapsedTime"

    sput-object v5, Lcom/sec/android/app/sns/logging/SnsLogging;->mReq:Ljava/lang/String;

    .line 110
    :goto_28
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sec/android/app/sns/logging/SnsLogging;->mPre:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/sns/logging/SnsLogging;->mReq:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/sns/logging/SnsLogging;->mPost:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    .local v4, logs:Ljava/io/File;
    const/4 v2, 0x0

    .line 112
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v0, 0x1

    .line 114
    .local v0, bResult:Z
    :try_start_60
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_97
    .catch Ljava/io/FileNotFoundException; {:try_start_60 .. :try_end_65} :catch_88

    .line 116
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_65
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_70
    .catchall {:try_start_65 .. :try_end_70} :catchall_9e
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_70} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_65 .. :try_end_70} :catch_a1

    .line 125
    :goto_70
    if-eqz v3, :cond_75

    .line 126
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_75
    move-object v2, v3

    .line 130
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :cond_76
    :goto_76
    return v0

    .line 108
    .end local v0           #bResult:Z
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v4           #logs:Ljava/io/File;
    :cond_77
    sget-object v5, Lcom/sec/android/app/sns/type/SnsReqType;->NAME:[Ljava/lang/String;

    aget-object v5, v5, p1

    sput-object v5, Lcom/sec/android/app/sns/logging/SnsLogging;->mReq:Ljava/lang/String;

    goto :goto_28

    .line 117
    .restart local v0       #bResult:Z
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #logs:Ljava/io/File;
    :catch_7e
    move-exception v1

    .line 118
    .local v1, e:Ljava/io/IOException;
    :try_start_7f
    const-string v5, "SNS"

    const-string v6, "SnsLogging : write() Error!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_9e
    .catch Ljava/io/FileNotFoundException; {:try_start_7f .. :try_end_86} :catch_a1

    .line 119
    const/4 v0, 0x0

    goto :goto_70

    .line 121
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_88
    move-exception v1

    .line 122
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_89
    :try_start_89
    const-string v5, "SNS"

    const-string v6, "SnsLogging : FileOutputStream() Error!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_89 .. :try_end_90} :catchall_97

    .line 123
    const/4 v0, 0x0

    .line 125
    if-eqz v2, :cond_76

    .line 126
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_76

    .line 125
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catchall_97
    move-exception v5

    :goto_98
    if-eqz v2, :cond_9d

    .line 126
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 125
    :cond_9d
    throw v5

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_9e
    move-exception v5

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_98

    .line 121
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_a1
    move-exception v1

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_89
.end method
