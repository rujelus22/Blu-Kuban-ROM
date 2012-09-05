.class public final Lcom/google/wireless/contacts/proto/Client$PersonRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$PersonRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PersonRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$PersonRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12413
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$PersonRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    .line 12414
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->initFields()V

    .line 12415
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 12123
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 12150
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->memoizedIsInitialized:B

    .line 12167
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->memoizedSerializedSize:I

    .line 12124
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12118
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$PersonRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12125
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12150
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->memoizedIsInitialized:B

    .line 12167
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->memoizedSerializedSize:I

    .line 12125
    return-void
.end method

.method static synthetic access$16602(Lcom/google/wireless/contacts/proto/Client$PersonRequest;Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;)Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12118
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    return-object p1
.end method

.method static synthetic access$16702(Lcom/google/wireless/contacts/proto/Client$PersonRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12118
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PersonRequest;
    .registers 1

    .prologue
    .line 12129
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 12148
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    .line 12149
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;
    .registers 1

    .prologue
    .line 12255
    #calls: Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->access$16400()Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Client$PersonRequest;)Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 12258
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$PersonRequest;)Lcom/google/wireless/contacts/proto/Client$PersonRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12118
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$PersonRequest;
    .registers 2

    .prologue
    .line 12133
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$PersonRequest;

    return-object v0
.end method

.method public getId()Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;
    .registers 2

    .prologue
    .line 12144
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 12169
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->memoizedSerializedSize:I

    .line 12170
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 12178
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 12172
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 12173
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 12174
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12177
    :cond_16
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 12178
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 12141
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 12152
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->memoizedIsInitialized:B

    .line 12153
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 12156
    :goto_8
    return v1

    .line 12153
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 12155
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 12185
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 12161
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->getSerializedSize()I

    .line 12162
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 12163
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PersonRequest;->id_:Lcom/google/wireless/contacts/proto/Contact$ClientPersonId;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 12165
    :cond_f
    return-void
.end method
