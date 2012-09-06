.class public final Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MoreLikeThisActionProtos.java"

# interfaces
.implements Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/MoreLikeThisActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MoreLikeThisAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;
    }
.end annotation


# static fields
.field public static final DOCID_FIELD_NUMBER:I = 0x2

.field public static final RESTRICTS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private docid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 407
    new-instance v0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->defaultInstance:Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    .line 408
    sget-object v0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->defaultInstance:Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    invoke-direct {v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->initFields()V

    .line 409
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 27
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 87
    iput-byte v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->memoizedIsInitialized:B

    .line 107
    iput v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->memoizedSerializedSize:I

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;Lcom/google/goggles/MoreLikeThisActionProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;-><init>(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 87
    iput-byte v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->memoizedIsInitialized:B

    .line 107
    iput v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->memoizedSerializedSize:I

    .line 29
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->docid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->defaultInstance:Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    return-object v0
.end method

.method private getDocidBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->docid_:Ljava/lang/Object;

    .line 73
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 74
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->docid_:Ljava/lang/Object;

    .line 79
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 84
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->getDefaultInstance()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->docid_:Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;
    .registers 1

    .prologue
    .line 199
    #calls: Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->create()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;
    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->access$100()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;
    .registers 2
    .parameter

    .prologue
    .line 202
    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->newBuilder()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->mergeFrom(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->newBuilder()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 170
    #calls: Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->buildParsed()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    invoke-static {v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->access$000(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    .line 172
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->newBuilder()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 181
    #calls: Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->buildParsed()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    invoke-static {v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->access$000(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    .line 183
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->newBuilder()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    #calls: Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->buildParsed()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    invoke-static {v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->access$000(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->newBuilder()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    #calls: Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->buildParsed()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    invoke-static {v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->access$000(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->newBuilder()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    #calls: Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->buildParsed()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    invoke-static {v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->access$000(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->newBuilder()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->buildParsed()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    invoke-static {v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->access$000(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->newBuilder()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    #calls: Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->buildParsed()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    invoke-static {v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->access$000(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->newBuilder()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    #calls: Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->buildParsed()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    invoke-static {v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->access$000(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->newBuilder()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    #calls: Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->buildParsed()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    invoke-static {v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->access$000(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->newBuilder()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    #calls: Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->buildParsed()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    invoke-static {v0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;->access$000(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;
    .registers 2

    .prologue
    .line 37
    sget-object v0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->defaultInstance:Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->getDefaultInstanceForType()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;

    move-result-object v0

    return-object v0
.end method

.method public getDocid()Ljava/lang/String;
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->docid_:Ljava/lang/Object;

    .line 59
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 60
    check-cast v0, Ljava/lang/String;

    .line 68
    :goto_8
    return-object v0

    .line 62
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 64
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 66
    iput-object v1, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->docid_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 68
    goto :goto_8
.end method

.method public getRestricts()Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 109
    iget v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->memoizedSerializedSize:I

    .line 110
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 122
    :goto_7
    return v0

    .line 112
    :cond_8
    const/4 v0, 0x0

    .line 113
    iget v1, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_16

    .line 114
    iget-object v1, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_16
    iget v1, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_25

    .line 118
    invoke-direct {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->getDocidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    :cond_25
    iput v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->memoizedSerializedSize:I

    goto :goto_7
.end method

.method public hasDocid()Z
    .registers 3

    .prologue
    .line 55
    iget v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->bitField0_:I

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

.method public hasRestricts()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 45
    iget v1, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->bitField0_:I

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
    const/4 v0, 0x1

    .line 89
    iget-byte v1, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->memoizedIsInitialized:B

    .line 90
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 93
    :goto_8
    return v0

    .line 90
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 92
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;
    .registers 2

    .prologue
    .line 200
    invoke-static {}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->newBuilder()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->newBuilderForType()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;
    .registers 2

    .prologue
    .line 204
    invoke-static {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->newBuilder(Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;)Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->toBuilder()Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 98
    invoke-virtual {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->getSerializedSize()I

    .line 99
    iget v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 100
    iget-object v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->restricts_:Lcom/google/goggles/RestrictsProtos$Restricts;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 102
    :cond_10
    iget v0, p0, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 103
    invoke-direct {p0}, Lcom/google/goggles/MoreLikeThisActionProtos$MoreLikeThisAction;->getDocidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 105
    :cond_1d
    return-void
.end method
