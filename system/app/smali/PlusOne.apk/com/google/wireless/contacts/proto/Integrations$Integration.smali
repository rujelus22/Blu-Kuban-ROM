.class public final Lcom/google/wireless/contacts/proto/Integrations$Integration;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Integrations.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Integrations$IntegrationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Integrations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Integration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;,
        Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Integrations$Integration;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 356
    new-instance v0, Lcom/google/wireless/contacts/proto/Integrations$Integration;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Integrations$Integration;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Integrations$Integration;->defaultInstance:Lcom/google/wireless/contacts/proto/Integrations$Integration;

    .line 357
    sget-object v0, Lcom/google/wireless/contacts/proto/Integrations$Integration;->defaultInstance:Lcom/google/wireless/contacts/proto/Integrations$Integration;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Integrations$Integration;->initFields()V

    .line 358
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 112
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration;->memoizedIsInitialized:B

    .line 129
    iput v0, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration;->memoizedSerializedSize:I

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;Lcom/google/wireless/contacts/proto/Integrations$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Integrations$Integration;-><init>(Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 112
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration;->memoizedIsInitialized:B

    .line 129
    iput v0, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration;->memoizedSerializedSize:I

    .line 25
    return-void
.end method

.method static synthetic access$302(Lcom/google/wireless/contacts/proto/Integrations$Integration;Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;)Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration;->type_:Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/wireless/contacts/proto/Integrations$Integration;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Integrations$Integration;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/wireless/contacts/proto/Integrations$Integration;->defaultInstance:Lcom/google/wireless/contacts/proto/Integrations$Integration;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 110
    sget-object v0, Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;->LEGACY:Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration;->type_:Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;

    .line 111
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;
    .registers 1

    .prologue
    .line 217
    #calls: Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->create()Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->access$100()Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Integrations$Integration;)Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 220
    invoke-static {}, Lcom/google/wireless/contacts/proto/Integrations$Integration;->newBuilder()Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Integrations$Integration;)Lcom/google/wireless/contacts/proto/Integrations$Integration$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Integrations$Integration;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Integrations$Integration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Integrations$Integration;
    .registers 2

    .prologue
    .line 33
    sget-object v0, Lcom/google/wireless/contacts/proto/Integrations$Integration;->defaultInstance:Lcom/google/wireless/contacts/proto/Integrations$Integration;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 131
    iget v0, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration;->memoizedSerializedSize:I

    .line 132
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 140
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 134
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 135
    iget v2, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 136
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration;->type_:Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 139
    :cond_1a
    iput v0, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration;->memoizedSerializedSize:I

    move v1, v0

    .line 140
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public getType()Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration;->type_:Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;

    return-object v0
.end method

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 103
    iget v1, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration;->bitField0_:I

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

    .line 114
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration;->memoizedIsInitialized:B

    .line 115
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 118
    :goto_8
    return v1

    .line 115
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 117
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration;->memoizedIsInitialized:B

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
    .line 147
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

    .line 123
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Integrations$Integration;->getSerializedSize()I

    .line 124
    iget v0, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 125
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Integrations$Integration;->type_:Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Integrations$Integration$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 127
    :cond_13
    return-void
.end method
