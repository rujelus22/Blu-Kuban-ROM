.class Lcom/wssnps/mmspdu/PduComposer$BufferStack;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssnps/mmspdu/PduComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferStack"
.end annotation


# instance fields
.field private stack:Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;

.field stackSize:I

.field final synthetic this$0:Lcom/wssnps/mmspdu/PduComposer;

.field private toCopy:Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;


# direct methods
.method private constructor <init>(Lcom/wssnps/mmspdu/PduComposer;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1251
    iput-object p1, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->this$0:Lcom/wssnps/mmspdu/PduComposer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1252
    iput-object v0, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->stack:Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;

    .line 1253
    iput-object v0, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->toCopy:Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;

    .line 1255
    const/4 v0, 0x0

    iput v0, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->stackSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/wssnps/mmspdu/PduComposer;Lcom/wssnps/mmspdu/PduComposer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1251
    invoke-direct {p0, p1}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;-><init>(Lcom/wssnps/mmspdu/PduComposer;)V

    return-void
.end method


# virtual methods
.method copy()V
    .registers 5

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->this$0:Lcom/wssnps/mmspdu/PduComposer;

    iget-object v1, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->toCopy:Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;

    iget-object v1, v1, Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->toCopy:Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;

    iget v3, v3, Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;->currentPosition:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/wssnps/mmspdu/PduComposer;->arraycopy([BII)V

    .line 1309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->toCopy:Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;

    .line 1310
    return-void
.end method

.method mark()Lcom/wssnps/mmspdu/PduComposer$PositionMarker;
    .registers 4

    .prologue
    .line 1316
    new-instance v0, Lcom/wssnps/mmspdu/PduComposer$PositionMarker;

    iget-object v1, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->this$0:Lcom/wssnps/mmspdu/PduComposer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/wssnps/mmspdu/PduComposer$PositionMarker;-><init>(Lcom/wssnps/mmspdu/PduComposer;Lcom/wssnps/mmspdu/PduComposer$1;)V

    .line 1318
    .local v0, m:Lcom/wssnps/mmspdu/PduComposer$PositionMarker;
    iget-object v1, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->this$0:Lcom/wssnps/mmspdu/PduComposer;

    iget v1, v1, Lcom/wssnps/mmspdu/PduComposer;->mPosition:I

    #setter for: Lcom/wssnps/mmspdu/PduComposer$PositionMarker;->c_pos:I
    invoke-static {v0, v1}, Lcom/wssnps/mmspdu/PduComposer$PositionMarker;->access$402(Lcom/wssnps/mmspdu/PduComposer$PositionMarker;I)I

    .line 1319
    iget v1, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->stackSize:I

    #setter for: Lcom/wssnps/mmspdu/PduComposer$PositionMarker;->currentStackSize:I
    invoke-static {v0, v1}, Lcom/wssnps/mmspdu/PduComposer$PositionMarker;->access$502(Lcom/wssnps/mmspdu/PduComposer$PositionMarker;I)I

    .line 1321
    return-object v0
.end method

.method newbuf()V
    .registers 4

    .prologue
    .line 1264
    iget-object v1, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->toCopy:Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;

    if-eqz v1, :cond_c

    .line 1265
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "BUG: Invalid newbuf() before copy()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1268
    :cond_c
    new-instance v0, Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;-><init>(Lcom/wssnps/mmspdu/PduComposer$1;)V

    .line 1270
    .local v0, temp:Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;
    iget-object v1, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->this$0:Lcom/wssnps/mmspdu/PduComposer;

    iget-object v1, v1, Lcom/wssnps/mmspdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    iput-object v1, v0, Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    .line 1271
    iget-object v1, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->this$0:Lcom/wssnps/mmspdu/PduComposer;

    iget v1, v1, Lcom/wssnps/mmspdu/PduComposer;->mPosition:I

    iput v1, v0, Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;->currentPosition:I

    .line 1273
    iget-object v1, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->stack:Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;

    iput-object v1, v0, Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;->next:Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;

    .line 1274
    iput-object v0, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->stack:Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;

    .line 1276
    iget v1, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->stackSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->stackSize:I

    .line 1278
    iget-object v1, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->this$0:Lcom/wssnps/mmspdu/PduComposer;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, v1, Lcom/wssnps/mmspdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 1279
    iget-object v1, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->this$0:Lcom/wssnps/mmspdu/PduComposer;

    const/4 v2, 0x0

    iput v2, v1, Lcom/wssnps/mmspdu/PduComposer;->mPosition:I

    .line 1280
    return-void
.end method

.method pop()V
    .registers 5

    .prologue
    .line 1286
    iget-object v2, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->this$0:Lcom/wssnps/mmspdu/PduComposer;

    iget-object v0, v2, Lcom/wssnps/mmspdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 1287
    .local v0, currentMessage:Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->this$0:Lcom/wssnps/mmspdu/PduComposer;

    iget v1, v2, Lcom/wssnps/mmspdu/PduComposer;->mPosition:I

    .line 1289
    .local v1, currentPosition:I
    iget-object v2, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->this$0:Lcom/wssnps/mmspdu/PduComposer;

    iget-object v3, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->stack:Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;

    iget-object v3, v3, Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    iput-object v3, v2, Lcom/wssnps/mmspdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 1290
    iget-object v2, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->this$0:Lcom/wssnps/mmspdu/PduComposer;

    iget-object v3, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->stack:Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;

    iget v3, v3, Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;->currentPosition:I

    iput v3, v2, Lcom/wssnps/mmspdu/PduComposer;->mPosition:I

    .line 1292
    iget-object v2, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->stack:Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;

    iput-object v2, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->toCopy:Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;

    .line 1295
    iget-object v2, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->stack:Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;

    iget-object v2, v2, Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;->next:Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;

    iput-object v2, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->stack:Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;

    .line 1296
    iget v2, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->stackSize:I

    .line 1298
    iget-object v2, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->toCopy:Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;

    iput-object v0, v2, Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;->currentMessage:Ljava/io/ByteArrayOutputStream;

    .line 1299
    iget-object v2, p0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->toCopy:Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;

    iput v1, v2, Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;->currentPosition:I

    .line 1300
    return-void
.end method
