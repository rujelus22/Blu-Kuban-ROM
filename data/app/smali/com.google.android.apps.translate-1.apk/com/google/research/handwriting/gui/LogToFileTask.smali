.class public Lcom/google/research/handwriting/gui/LogToFileTask;
.super Landroid/os/AsyncTask;
.source "LogToFileTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static out:Ljava/io/BufferedWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/google/research/handwriting/gui/LogToFileTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/research/handwriting/gui/LogToFileTask;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/google/research/handwriting/gui/LogToFileTask;->out:Ljava/io/BufferedWriter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static closeFile()V
    .registers 4

    .prologue
    .line 62
    const/4 v1, 0x1

    :try_start_1
    sget-object v2, Lcom/google/research/handwriting/gui/LogToFileTask;->TAG:Ljava/lang/String;

    const-string v3, "Closing log file"

    invoke-static {v1, v2, v3}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v1, Lcom/google/research/handwriting/gui/LogToFileTask;->out:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_11

    .line 64
    sget-object v1, Lcom/google/research/handwriting/gui/LogToFileTask;->out:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 66
    :cond_11
    const/4 v1, 0x0

    sput-object v1, Lcom/google/research/handwriting/gui/LogToFileTask;->out:Ljava/io/BufferedWriter;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_15

    .line 70
    .local v0, e:Ljava/io/IOException;
    :goto_14
    return-void

    .line 67
    .end local v0           #e:Ljava/io/IOException;
    :catch_15
    move-exception v0

    .line 68
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v1, Lcom/google/research/handwriting/gui/LogToFileTask;->TAG:Ljava/lang/String;

    const-string v2, "Error closing the reco log file."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public static logging(ZLjava/lang/String;)V
    .registers 2
    .parameter "logRecognitionTraffic"
    .parameter "filename"

    .prologue
    .line 80
    if-eqz p0, :cond_6

    .line 81
    invoke-static {p1}, Lcom/google/research/handwriting/gui/LogToFileTask;->openFile(Ljava/lang/String;)V

    .line 85
    :goto_5
    return-void

    .line 83
    :cond_6
    invoke-static {}, Lcom/google/research/handwriting/gui/LogToFileTask;->closeFile()V

    goto :goto_5
.end method

.method private static openFile(Ljava/lang/String;)V
    .registers 7
    .parameter "filename"

    .prologue
    .line 47
    const/4 v2, 0x1

    :try_start_1
    sget-object v3, Lcom/google/research/handwriting/gui/LogToFileTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Openening file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for logging."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 49
    .local v1, fw:Ljava/io/FileWriter;
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    sput-object v2, Lcom/google/research/handwriting/gui/LogToFileTask;->out:Ljava/io/BufferedWriter;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2c} :catch_2d

    .line 54
    .end local v1           #fw:Ljava/io/FileWriter;
    :goto_2c
    return-void

    .line 50
    :catch_2d
    move-exception v0

    .line 51
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    sput-object v2, Lcom/google/research/handwriting/gui/LogToFileTask;->out:Ljava/io/BufferedWriter;

    .line 52
    sget-object v2, Lcom/google/research/handwriting/gui/LogToFileTask;->TAG:Ljava/lang/String;

    const-string v3, "Error opening log file."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/research/handwriting/gui/LogToFileTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .registers 5
    .parameter "params"

    .prologue
    .line 29
    :try_start_0
    sget-object v1, Lcom/google/research/handwriting/gui/LogToFileTask;->out:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_11

    .line 30
    sget-object v1, Lcom/google/research/handwriting/gui/LogToFileTask;->out:Ljava/io/BufferedWriter;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 31
    sget-object v1, Lcom/google/research/handwriting/gui/LogToFileTask;->out:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_13

    .line 37
    :cond_11
    :goto_11
    const/4 v1, 0x0

    return-object v1

    .line 33
    :catch_13
    move-exception v0

    .line 34
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/google/research/handwriting/gui/LogToFileTask;->TAG:Ljava/lang/String;

    const-string v2, "Error writing to log file."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method
