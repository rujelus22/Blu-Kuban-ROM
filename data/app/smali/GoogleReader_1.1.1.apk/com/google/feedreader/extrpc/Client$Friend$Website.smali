.class public final Lcom/google/feedreader/extrpc/Client$Friend$Website;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$Friend$WebsiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$Friend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Website"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;
    }
.end annotation


# static fields
.field public static final TITLE_FIELD_NUMBER:I = 0x1

.field public static final URL_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$Friend$Website;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private title_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 11135
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Friend$Website;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$Friend$Website;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Friend$Website;

    .line 11136
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Friend$Website;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->initFields()V

    .line 11137
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10728
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 10810
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->memoizedIsInitialized:B

    .line 10838
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->memoizedSerializedSize:I

    .line 10729
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10723
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$Friend$Website;-><init>(Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 10730
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10810
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->memoizedIsInitialized:B

    .line 10838
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->memoizedSerializedSize:I

    .line 10730
    return-void
.end method

.method static synthetic access$13502(Lcom/google/feedreader/extrpc/Client$Friend$Website;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10723
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13602(Lcom/google/feedreader/extrpc/Client$Friend$Website;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10723
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13702(Lcom/google/feedreader/extrpc/Client$Friend$Website;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10723
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Friend$Website;
    .registers 1

    .prologue
    .line 10734
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Friend$Website;

    return-object v0
.end method

.method private getTitleBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 10763
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->title_:Ljava/lang/Object;

    .line 10764
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 10765
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10767
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->title_:Ljava/lang/Object;

    move-object v2, v0

    .line 10770
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

.method private getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 10795
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->url_:Ljava/lang/Object;

    .line 10796
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 10797
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10799
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->url_:Ljava/lang/Object;

    move-object v2, v0

    .line 10802
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
    .registers 2

    .prologue
    .line 10807
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->title_:Ljava/lang/Object;

    .line 10808
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->url_:Ljava/lang/Object;

    .line 10809
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;
    .registers 1

    .prologue
    .line 10930
    #calls: Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->create()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->access$13300()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$Friend$Website;)Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 10933
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Friend$Website;)Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$Friend$Website;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10899
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    .line 10900
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 10901
    #calls: Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Friend$Website;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->access$13200(Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;)Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v1

    .line 10903
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Friend$Website;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10910
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    .line 10911
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 10912
    #calls: Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Friend$Website;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->access$13200(Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;)Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v1

    .line 10914
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$Friend$Website;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10866
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Friend$Website;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->access$13200(Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;)Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Friend$Website;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10872
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Friend$Website;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->access$13200(Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;)Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$Friend$Website;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10920
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Friend$Website;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->access$13200(Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;)Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Friend$Website;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10926
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Friend$Website;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->access$13200(Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;)Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$Friend$Website;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10888
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Friend$Website;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->access$13200(Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;)Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Friend$Website;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10894
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Friend$Website;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->access$13200(Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;)Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$Friend$Website;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10877
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Friend$Website;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->access$13200(Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;)Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Friend$Website;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10883
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Friend$Website;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;->access$13200(Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;)Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Friend$Website;
    .registers 2

    .prologue
    .line 10738
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Friend$Website;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10723
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Friend$Website;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 10840
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->memoizedSerializedSize:I

    .line 10841
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 10853
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 10843
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 10844
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 10845
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10848
    :cond_19
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 10849
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10852
    :cond_28
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->memoizedSerializedSize:I

    move v1, v0

    .line 10853
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getTitle()Ljava/lang/String;
    .registers 6

    .prologue
    .line 10749
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->title_:Ljava/lang/Object;

    .line 10750
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 10751
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 10759
    :goto_9
    return-object v4

    .line 10753
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 10755
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 10756
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 10757
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->title_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 10759
    goto :goto_9
.end method

.method public getUrl()Ljava/lang/String;
    .registers 6

    .prologue
    .line 10781
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->url_:Ljava/lang/Object;

    .line 10782
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 10783
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 10791
    :goto_9
    return-object v4

    .line 10785
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 10787
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 10788
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 10789
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->url_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 10791
    goto :goto_9
.end method

.method public hasTitle()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 10746
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasUrl()Z
    .registers 3

    .prologue
    .line 10778
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10812
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->memoizedIsInitialized:B

    .line 10813
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v3, :cond_b

    move v1, v3

    .line 10824
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 10813
    goto :goto_a

    .line 10815
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->hasTitle()Z

    move-result v1

    if-nez v1, :cond_17

    .line 10816
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->memoizedIsInitialized:B

    move v1, v2

    .line 10817
    goto :goto_a

    .line 10819
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->hasUrl()Z

    move-result v1

    if-nez v1, :cond_21

    .line 10820
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->memoizedIsInitialized:B

    move v1, v2

    .line 10821
    goto :goto_a

    .line 10823
    :cond_21
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->memoizedIsInitialized:B

    move v1, v3

    .line 10824
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;
    .registers 2

    .prologue
    .line 10931
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->newBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10723
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;
    .registers 2

    .prologue
    .line 10935
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->newBuilder(Lcom/google/feedreader/extrpc/Client$Friend$Website;)Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10723
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->toBuilder()Lcom/google/feedreader/extrpc/Client$Friend$Website$Builder;

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
    .line 10860
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

    .line 10829
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->getSerializedSize()I

    .line 10830
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 10831
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10833
    :cond_12
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Friend$Website;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 10834
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Friend$Website;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10836
    :cond_1f
    return-void
.end method
