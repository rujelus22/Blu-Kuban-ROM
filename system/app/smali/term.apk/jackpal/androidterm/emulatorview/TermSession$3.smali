.class Ljackpal/androidterm/emulatorview/TermSession$3;
.super Ljava/lang/Thread;
.source "TermSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljackpal/androidterm/emulatorview/TermSession;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBuffer:[B

.field final synthetic this$0:Ljackpal/androidterm/emulatorview/TermSession;


# direct methods
.method constructor <init>(Ljackpal/androidterm/emulatorview/TermSession;)V
    .registers 3
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermSession$3;->this$0:Ljackpal/androidterm/emulatorview/TermSession;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 152
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession$3;->mBuffer:[B

    return-void
.end method

.method static synthetic access$600(Ljackpal/androidterm/emulatorview/TermSession$3;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 151
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TermSession$3;->writeToOutput()V

    return-void
.end method

.method private writeToOutput()V
    .registers 7

    .prologue
    .line 176
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/TermSession$3;->this$0:Ljackpal/androidterm/emulatorview/TermSession;

    #getter for: Ljackpal/androidterm/emulatorview/TermSession;->mWriteQueue:Ljackpal/androidterm/emulatorview/ByteQueue;
    invoke-static {v5}, Ljackpal/androidterm/emulatorview/TermSession;->access$700(Ljackpal/androidterm/emulatorview/TermSession;)Ljackpal/androidterm/emulatorview/ByteQueue;

    move-result-object v4

    .line 177
    .local v4, writeQueue:Ljackpal/androidterm/emulatorview/ByteQueue;
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession$3;->mBuffer:[B

    .line 178
    .local v0, buffer:[B
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/TermSession$3;->this$0:Ljackpal/androidterm/emulatorview/TermSession;

    #getter for: Ljackpal/androidterm/emulatorview/TermSession;->mTermOut:Ljava/io/OutputStream;
    invoke-static {v5}, Ljackpal/androidterm/emulatorview/TermSession;->access$800(Ljackpal/androidterm/emulatorview/TermSession;)Ljava/io/OutputStream;

    move-result-object v3

    .line 180
    .local v3, termOut:Ljava/io/OutputStream;
    invoke-virtual {v4}, Ljackpal/androidterm/emulatorview/ByteQueue;->getBytesAvailable()I

    move-result v1

    .line 181
    .local v1, bytesAvailable:I
    array-length v5, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 183
    .local v2, bytesToWrite:I
    if-nez v2, :cond_1a

    .line 197
    :goto_19
    return-void

    .line 188
    :cond_1a
    const/4 v5, 0x0

    :try_start_1b
    invoke-virtual {v4, v0, v5, v2}, Ljackpal/androidterm/emulatorview/ByteQueue;->read([BII)I

    .line 189
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 190
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_25} :catch_28

    goto :goto_19

    .line 191
    :catch_26
    move-exception v5

    goto :goto_19

    .line 195
    :catch_28
    move-exception v5

    goto :goto_19
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 156
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 158
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession$3;->this$0:Ljackpal/androidterm/emulatorview/TermSession;

    new-instance v1, Ljackpal/androidterm/emulatorview/TermSession$3$1;

    invoke-direct {v1, p0}, Ljackpal/androidterm/emulatorview/TermSession$3$1;-><init>(Ljackpal/androidterm/emulatorview/TermSession$3;)V

    #setter for: Ljackpal/androidterm/emulatorview/TermSession;->mWriterHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Ljackpal/androidterm/emulatorview/TermSession;->access$502(Ljackpal/androidterm/emulatorview/TermSession;Landroid/os/Handler;)Landroid/os/Handler;

    .line 170
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TermSession$3;->writeToOutput()V

    .line 172
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 173
    return-void
.end method
