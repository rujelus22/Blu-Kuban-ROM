.class public final Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$UnreadCountsContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnreadCountsContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;,
        Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;,
        Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntryOrBuilder;
    }
.end annotation


# static fields
.field public static final DENIED_FIELD_NUMBER:I = 0x1

.field public static final MAX_FIELD_NUMBER:I = 0x2

.field public static final UNREADCOUNTS_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private denied_:Z

.field private max_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private unreadcounts_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10609
    new-instance v0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    .line 10610
    sget-object v0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->initFields()V

    .line 10611
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 9632
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 10199
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->memoizedIsInitialized:B

    .line 10228
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->memoizedSerializedSize:I

    .line 9633
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9627
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;-><init>(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 9634
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10199
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->memoizedIsInitialized:B

    .line 10228
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->memoizedSerializedSize:I

    .line 9634
    return-void
.end method

.method static synthetic access$12802(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9627
    iput-boolean p1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->denied_:Z

    return p1
.end method

.method static synthetic access$12902(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9627
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->max_:I

    return p1
.end method

.method static synthetic access$13000(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 9627
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->unreadcounts_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13002(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9627
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->unreadcounts_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$13102(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9627
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    .registers 1

    .prologue
    .line 9638
    sget-object v0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 10195
    iput-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->denied_:Z

    .line 10196
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->max_:I

    .line 10197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->unreadcounts_:Ljava/util/List;

    .line 10198
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    .registers 1

    .prologue
    .line 10324
    #calls: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->access$12600()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 10327
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10293
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    .line 10294
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 10295
    #calls: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->access$12500(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v1

    .line 10297
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10304
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    .line 10305
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 10306
    #calls: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->access$12500(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v1

    .line 10308
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10260
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->access$12500(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10266
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->access$12500(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10314
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->access$12500(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10320
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->access$12500(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10282
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->access$12500(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10288
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->access$12500(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10271
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->access$12500(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10277
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;->access$12500(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;
    .registers 2

    .prologue
    .line 9642
    sget-object v0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9627
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;

    move-result-object v0

    return-object v0
.end method

.method public getDenied()Z
    .registers 2

    .prologue
    .line 10160
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->denied_:Z

    return v0
.end method

.method public getMax()I
    .registers 2

    .prologue
    .line 10170
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->max_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 10230
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->memoizedSerializedSize:I

    .line 10231
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    move v2, v1

    .line 10247
    .end local v1           #size:I
    .local v2, size:I
    :goto_8
    return v2

    .line 10233
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_9
    const/4 v1, 0x0

    .line 10234
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_17

    .line 10235
    iget-boolean v3, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->denied_:Z

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 10238
    :cond_17
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_24

    .line 10239
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->max_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 10242
    :cond_24
    const/4 v0, 0x0

    .local v0, i:I
    :goto_25
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->unreadcounts_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3e

    .line 10243
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->unreadcounts_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 10242
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 10246
    :cond_3e
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->memoizedSerializedSize:I

    move v2, v1

    .line 10247
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_8
.end method

.method public getUnreadcounts(I)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    .registers 3
    .parameter "index"

    .prologue
    .line 10187
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->unreadcounts_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    return-object p0
.end method

.method public getUnreadcountsCount()I
    .registers 2

    .prologue
    .line 10184
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->unreadcounts_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUnreadcountsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10177
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->unreadcounts_:Ljava/util/List;

    return-object v0
.end method

.method public getUnreadcountsOrBuilder(I)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntryOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 10191
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->unreadcounts_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntryOrBuilder;

    return-object p0
.end method

.method public getUnreadcountsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntryOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10181
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->unreadcounts_:Ljava/util/List;

    return-object v0
.end method

.method public hasDenied()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 10157
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasMax()Z
    .registers 3

    .prologue
    .line 10167
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 10201
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->memoizedIsInitialized:B

    .line 10202
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v3, :cond_b

    move v2, v3

    .line 10211
    :goto_a
    return v2

    :cond_b
    move v2, v4

    .line 10202
    goto :goto_a

    .line 10204
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->getUnreadcountsCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 10205
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->getUnreadcounts(I)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_22

    .line 10206
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->memoizedIsInitialized:B

    move v2, v4

    .line 10207
    goto :goto_a

    .line 10204
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 10210
    :cond_25
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->memoizedIsInitialized:B

    move v2, v3

    .line 10211
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    .registers 2

    .prologue
    .line 10325
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9627
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;
    .registers 2

    .prologue
    .line 10329
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->newBuilder(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9627
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->toBuilder()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$Builder;

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
    .line 10254
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

    .line 10216
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->getSerializedSize()I

    .line 10217
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 10218
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->denied_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10220
    :cond_10
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 10221
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->max_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10223
    :cond_1b
    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->unreadcounts_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_35

    .line 10224
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent;->unreadcounts_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 10223
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    .line 10226
    :cond_35
    return-void
.end method
