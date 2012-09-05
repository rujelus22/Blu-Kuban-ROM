.class public final Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Webclient.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Webclient$ExternalEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Webclient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExternalEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private newContactsFetchedEvent_:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

.field private startFetchEvent_:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 396
    new-instance v0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;

    .line 397
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->initFields()V

    .line 398
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 27
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 65
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->memoizedIsInitialized:B

    .line 85
    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->memoizedSerializedSize:I

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;Lcom/google/wireless/contacts/proto/Webclient$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;-><init>(Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 65
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->memoizedIsInitialized:B

    .line 85
    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->memoizedSerializedSize:I

    .line 29
    return-void
.end method

.method static synthetic access$302(Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;)Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->newContactsFetchedEvent_:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;)Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->startFetchEvent_:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 62
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->newContactsFetchedEvent_:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    .line 63
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->startFetchEvent_:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    .line 64
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;
    .registers 2

    .prologue
    .line 37
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;

    return-object v0
.end method

.method public getNewContactsFetchedEvent()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->newContactsFetchedEvent_:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 87
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->memoizedSerializedSize:I

    .line 88
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 100
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 90
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 91
    iget v2, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 92
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->newContactsFetchedEvent_:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 95
    :cond_17
    iget v2, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 96
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->startFetchEvent_:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 99
    :cond_24
    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->memoizedSerializedSize:I

    move v1, v0

    .line 100
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStartFetchEvent()Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->startFetchEvent_:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    return-object v0
.end method

.method public hasNewContactsFetchedEvent()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 45
    iget v1, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasStartFetchEvent()Z
    .registers 3

    .prologue
    .line 55
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

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
    .line 107
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 76
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->getSerializedSize()I

    .line 77
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 78
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->newContactsFetchedEvent_:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 80
    :cond_10
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 81
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ExternalEvent;->startFetchEvent_:Lcom/google/wireless/contacts/proto/Webclient$StartFetchEvent;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 83
    :cond_1b
    return-void
.end method
