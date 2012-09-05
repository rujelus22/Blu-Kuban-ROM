.class public final Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    .registers 1

    .prologue
    .line 183
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    .registers 3

    .prologue
    .line 192
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;-><init>()V

    .line 193
    .local v0, builder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    new-instance v1, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;-><init>(Lcom/google/ocean/frontend/javascript/proto/PageInfo$1;)V

    iput-object v1, v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 194
    return-object v0
.end method


# virtual methods
.method public buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    .registers 4

    .prologue
    .line 238
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    if-nez v1, :cond_c

    .line 239
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_c
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 243
    .local v0, returnMe:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 244
    return-object v0
.end method

.method public clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    .registers 3

    .prologue
    .line 211
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    invoke-virtual {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 248
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 261
    :cond_6
    :goto_6
    return-object p0

    .line 249
    :cond_7
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasX()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 250
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->setX(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    .line 252
    :cond_14
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasY()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 253
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->setY(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    .line 255
    :cond_21
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasW()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 256
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getW()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->setW(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    .line 258
    :cond_2e
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasH()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 259
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getH()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->setH(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 270
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2e

    .line 274
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    :sswitch_d
    return-object p0

    .line 280
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->setX(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    goto :goto_0

    .line 284
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->setY(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    goto :goto_0

    .line 288
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->setW(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    goto :goto_0

    .line 292
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->setH(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    goto :goto_0

    .line 270
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1e
        0x20 -> :sswitch_26
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setH(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasH:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->access$902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;Z)Z

    .line 363
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->h_:I
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->access$1002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;I)I

    .line 364
    return-object p0
.end method

.method public setW(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasW:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->access$702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;Z)Z

    .line 345
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->w_:I
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->access$802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;I)I

    .line 346
    return-object p0
.end method

.method public setX(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasX:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->access$302(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;Z)Z

    .line 309
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->x_:I
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->access$402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;I)I

    .line 310
    return-object p0
.end method

.method public setY(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasY:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->access$502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;Z)Z

    .line 327
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->y_:I
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->access$602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;I)I

    .line 328
    return-object p0
.end method
