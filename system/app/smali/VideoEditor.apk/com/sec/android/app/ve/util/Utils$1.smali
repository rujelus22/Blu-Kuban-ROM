.class Lcom/sec/android/app/ve/util/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/util/Utils;->loadTransitions(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$aContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/util/Utils$1;->val$aContext:Landroid/content/Context;

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 934
    iget-object v8, p0, Lcom/sec/android/app/ve/util/Utils$1;->val$aContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    .line 936
    .local v7, workingDir:Ljava/io/File;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    invoke-static {}, Lcom/sec/android/app/ve/util/Utils;->access$0()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-lt v2, v8, :cond_f

    .line 967
    return-void

    .line 937
    :cond_f
    new-instance v6, Ljava/io/File;

    .line 938
    invoke-static {}, Lcom/sec/android/app/ve/util/Utils;->access$0()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v2

    .line 937
    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 939
    .local v6, transitionFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_8f

    .line 941
    :try_start_20
    iget-object v8, p0, Lcom/sec/android/app/ve/util/Utils$1;->val$aContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 942
    invoke-static {}, Lcom/sec/android/app/ve/util/Utils;->access$1()[I

    move-result-object v9

    aget v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 943
    .local v3, inputStream:Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 946
    .local v5, outputStream:Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 948
    .local v0, data:[B
    :goto_39
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, n:I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_93

    .line 953
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 954
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 955
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 956
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".mp4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 957
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "chmod 777 "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 960
    :cond_6f
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "---- Transition file written :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 936
    .end local v0           #data:[B
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v4           #n:I
    .end local v5           #outputStream:Ljava/io/FileOutputStream;
    :cond_8f
    :goto_8f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 949
    .restart local v0       #data:[B
    .restart local v3       #inputStream:Ljava/io/InputStream;
    .restart local v4       #n:I
    .restart local v5       #outputStream:Ljava/io/FileOutputStream;
    :cond_93
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_97} :catch_98

    goto :goto_39

    .line 961
    .end local v0           #data:[B
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v4           #n:I
    .end local v5           #outputStream:Ljava/io/FileOutputStream;
    :catch_98
    move-exception v1

    .line 962
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8f
.end method
