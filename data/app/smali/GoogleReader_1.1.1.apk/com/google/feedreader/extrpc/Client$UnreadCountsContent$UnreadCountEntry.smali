.class public final Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnreadCountEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;
    }
.end annotation


# static fields
.field public static final COUNT_FIELD_NUMBER:I = 0x2

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final LASTREADITEMTIMESTAMPUSEC_FIELD_NUMBER:I = 0x4

.field public static final NEWESTITEMTIMESTAMPUSEC_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private count_:I

.field private id_:Ljava/lang/Object;

.field private lastReadItemTimestampUsec_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private newestItemTimestampUsec_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10145
    new-instance v0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    .line 10146
    sget-object v0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->initFields()V

    .line 10147
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 9669
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9751
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->memoizedIsInitialized:B

    .line 9785
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->memoizedSerializedSize:I

    .line 9670
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9664
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;-><init>(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 9671
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9751
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->memoizedIsInitialized:B

    .line 9785
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->memoizedSerializedSize:I

    .line 9671
    return-void
.end method

.method static synthetic access$12002(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9664
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12102(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9664
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->count_:I

    return p1
.end method

.method static synthetic access$12202(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9664
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->newestItemTimestampUsec_:J

    return-wide p1
.end method

.method static synthetic access$12302(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9664
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->lastReadItemTimestampUsec_:J

    return-wide p1
.end method

.method static synthetic access$12402(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9664
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    .registers 1

    .prologue
    .line 9675
    sget-object v0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 9704
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->id_:Ljava/lang/Object;

    .line 9705
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 9706
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9708
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->id_:Ljava/lang/Object;

    move-object v2, v0

    .line 9711
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_f
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_f
.end method

.method private initFields()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 9746
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->id_:Ljava/lang/Object;

    .line 9747
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->count_:I

    .line 9748
    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->newestItemTimestampUsec_:J

    .line 9749
    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->lastReadItemTimestampUsec_:J

    .line 9750
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;
    .registers 1

    .prologue
    .line 9885
    #calls: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->create()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->access$11800()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 9888
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9854
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    .line 9855
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 9856
    #calls: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->access$11700(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v1

    .line 9858
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9865
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    .line 9866
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 9867
    #calls: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->access$11700(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v1

    .line 9869
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9821
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->access$11700(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9827
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->access$11700(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9875
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->access$11700(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9881
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->access$11700(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9843
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->access$11700(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9849
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->access$11700(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9832
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->access$11700(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9838
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->access$11700(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 9722
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->count_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    .registers 2

    .prologue
    .line 9679
    sget-object v0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9664
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 9690
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->id_:Ljava/lang/Object;

    .line 9691
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 9692
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 9700
    :goto_9
    return-object v4

    .line 9694
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 9696
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 9697
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 9698
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->id_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 9700
    goto :goto_9
.end method

.method public getLastReadItemTimestampUsec()J
    .registers 3

    .prologue
    .line 9742
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->lastReadItemTimestampUsec_:J

    return-wide v0
.end method

.method public getNewestItemTimestampUsec()J
    .registers 3

    .prologue
    .line 9732
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->newestItemTimestampUsec_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 9787
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->memoizedSerializedSize:I

    .line 9788
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 9808
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 9790
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 9791
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 9792
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9795
    :cond_1a
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 9796
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->count_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9799
    :cond_27
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 9800
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->newestItemTimestampUsec_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 9803
    :cond_35
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_44

    .line 9804
    iget-wide v2, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->lastReadItemTimestampUsec_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 9807
    :cond_44
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->memoizedSerializedSize:I

    move v1, v0

    .line 9808
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasCount()Z
    .registers 3

    .prologue
    .line 9719
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 9687
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasLastReadItemTimestampUsec()Z
    .registers 3

    .prologue
    .line 9739
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasNewestItemTimestampUsec()Z
    .registers 3

    .prologue
    .line 9729
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9753
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->memoizedIsInitialized:B

    .line 9754
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v3, :cond_b

    move v1, v3

    .line 9765
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 9754
    goto :goto_a

    .line 9756
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->hasId()Z

    move-result v1

    if-nez v1, :cond_17

    .line 9757
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->memoizedIsInitialized:B

    move v1, v2

    .line 9758
    goto :goto_a

    .line 9760
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->hasCount()Z

    move-result v1

    if-nez v1, :cond_21

    .line 9761
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->memoizedIsInitialized:B

    move v1, v2

    .line 9762
    goto :goto_a

    .line 9764
    :cond_21
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->memoizedIsInitialized:B

    move v1, v3

    .line 9765
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;
    .registers 2

    .prologue
    .line 9886
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9664
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;
    .registers 2

    .prologue
    .line 9890
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->newBuilder(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9664
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->toBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

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
    .line 9815
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 9770
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->getSerializedSize()I

    .line 9771
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 9772
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9774
    :cond_13
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 9775
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->count_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9777
    :cond_1e
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 9778
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->newestItemTimestampUsec_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 9780
    :cond_2a
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_37

    .line 9781
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->lastReadItemTimestampUsec_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 9783
    :cond_37
    return-void
.end method
