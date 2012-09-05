.class Lorg/columba/ristretto/io/CloseChannelTimerTask;
.super Ljava/util/TimerTask;
.source "FileSourceModel.java"


# instance fields
.field model:Lorg/columba/ristretto/io/FileSourceModel;


# direct methods
.method public constructor <init>(Lorg/columba/ristretto/io/FileSourceModel;)V
    .registers 2
    .parameter "model"

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 212
    iput-object p1, p0, Lorg/columba/ristretto/io/CloseChannelTimerTask;->model:Lorg/columba/ristretto/io/FileSourceModel;

    .line 213
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 219
    :try_start_0
    iget-object v0, p0, Lorg/columba/ristretto/io/CloseChannelTimerTask;->model:Lorg/columba/ristretto/io/FileSourceModel;

    invoke-virtual {v0}, Lorg/columba/ristretto/io/FileSourceModel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 222
    :goto_5
    return-void

    .line 220
    :catch_6
    move-exception v0

    goto :goto_5
.end method
