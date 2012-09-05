.class public Lcom/samsung/map/MessageFolder$GetMessageResponse;
.super Ljava/lang/Object;
.source "MessageFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/map/MessageFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetMessageResponse"
.end annotation


# instance fields
.field public FractionDeliver:I

.field public messageBuffer:Ljava/io/ByteArrayOutputStream;

.field public status:I

.field final synthetic this$0:Lcom/samsung/map/MessageFolder;


# direct methods
.method public constructor <init>(Lcom/samsung/map/MessageFolder;)V
    .registers 3
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/samsung/map/MessageFolder$GetMessageResponse;->this$0:Lcom/samsung/map/MessageFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 323
    const/16 v0, 0xd1

    iput v0, p0, Lcom/samsung/map/MessageFolder$GetMessageResponse;->status:I

    .line 324
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/map/MessageFolder$GetMessageResponse;->FractionDeliver:I

    .line 325
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/samsung/map/MessageFolder$GetMessageResponse;->messageBuffer:Ljava/io/ByteArrayOutputStream;

    .line 326
    return-void
.end method

.method public constructor <init>(Lcom/samsung/map/MessageFolder;I)V
    .registers 4
    .parameter
    .parameter "status"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/samsung/map/MessageFolder$GetMessageResponse;->this$0:Lcom/samsung/map/MessageFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput p2, p0, Lcom/samsung/map/MessageFolder$GetMessageResponse;->status:I

    .line 330
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/map/MessageFolder$GetMessageResponse;->FractionDeliver:I

    .line 331
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/samsung/map/MessageFolder$GetMessageResponse;->messageBuffer:Ljava/io/ByteArrayOutputStream;

    .line 332
    return-void
.end method


# virtual methods
.method public appendBytes([B)V
    .registers 5
    .parameter "buffer"

    .prologue
    .line 342
    array-length v0, p1

    if-lez v0, :cond_c

    .line 343
    iget-object v0, p0, Lcom/samsung/map/MessageFolder$GetMessageResponse;->messageBuffer:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 345
    :cond_c
    return-void
.end method
