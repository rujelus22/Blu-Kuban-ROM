.class public final Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$CommentEditResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommentEditResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;
    }
.end annotation


# static fields
.field public static final COMMENTID_FIELD_NUMBER:I = 0x1

.field public static final HTMLCONTENT_FIELD_NUMBER:I = 0x3

.field public static final PLAINCONTENT_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private commentId_:Ljava/lang/Object;

.field private htmlContent_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private plainContent_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2166
    new-instance v0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->defaultInstance:Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    .line 2167
    sget-object v0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->defaultInstance:Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->initFields()V

    .line 2168
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1677
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1792
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->memoizedIsInitialized:B

    .line 1819
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->memoizedSerializedSize:I

    .line 1678
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1672
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;-><init>(Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1679
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1792
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->memoizedIsInitialized:B

    .line 1819
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->memoizedSerializedSize:I

    .line 1679
    return-void
.end method

.method static synthetic access$2302(Lcom/google/feedreader/extrpc/Client$CommentEditResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1672
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->commentId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/google/feedreader/extrpc/Client$CommentEditResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1672
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->plainContent_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/feedreader/extrpc/Client$CommentEditResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1672
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->htmlContent_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/google/feedreader/extrpc/Client$CommentEditResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1672
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->bitField0_:I

    return p1
.end method

.method private getCommentIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1712
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->commentId_:Ljava/lang/Object;

    .line 1713
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 1714
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1716
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->commentId_:Ljava/lang/Object;

    move-object v2, v0

    .line 1719
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

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    .registers 1

    .prologue
    .line 1683
    sget-object v0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->defaultInstance:Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    return-object v0
.end method

.method private getHtmlContentBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1776
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->htmlContent_:Ljava/lang/Object;

    .line 1777
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 1778
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1780
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->htmlContent_:Ljava/lang/Object;

    move-object v2, v0

    .line 1783
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

.method private getPlainContentBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1744
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->plainContent_:Ljava/lang/Object;

    .line 1745
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 1746
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1748
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->plainContent_:Ljava/lang/Object;

    move-object v2, v0

    .line 1751
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
    .line 1788
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->commentId_:Ljava/lang/Object;

    .line 1789
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->plainContent_:Ljava/lang/Object;

    .line 1790
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->htmlContent_:Ljava/lang/Object;

    .line 1791
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;
    .registers 1

    .prologue
    .line 1915
    #calls: Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->create()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->access$2100()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$CommentEditResponse;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1918
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->newBuilder()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$CommentEditResponse;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1884
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->newBuilder()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    .line 1885
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1886
    #calls: Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->access$2000(Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v1

    .line 1888
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1895
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->newBuilder()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    .line 1896
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1897
    #calls: Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->access$2000(Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v1

    .line 1899
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1851
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->newBuilder()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->access$2000(Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1857
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->newBuilder()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->access$2000(Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1905
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->newBuilder()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->access$2000(Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1911
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->newBuilder()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->access$2000(Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1873
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->newBuilder()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->access$2000(Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1879
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->newBuilder()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->access$2000(Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1862
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->newBuilder()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->access$2000(Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1868
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->newBuilder()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;->access$2000(Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1698
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->commentId_:Ljava/lang/Object;

    .line 1699
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 1700
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 1708
    :goto_9
    return-object v4

    .line 1702
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 1704
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 1705
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1706
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->commentId_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 1708
    goto :goto_9
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;
    .registers 2

    .prologue
    .line 1687
    sget-object v0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->defaultInstance:Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1672
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$CommentEditResponse;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlContent()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1762
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->htmlContent_:Ljava/lang/Object;

    .line 1763
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 1764
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 1772
    :goto_9
    return-object v4

    .line 1766
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 1768
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 1769
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1770
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->htmlContent_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 1772
    goto :goto_9
.end method

.method public getPlainContent()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1730
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->plainContent_:Ljava/lang/Object;

    .line 1731
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 1732
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 1740
    :goto_9
    return-object v4

    .line 1734
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 1736
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 1737
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1738
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->plainContent_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 1740
    goto :goto_9
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1821
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->memoizedSerializedSize:I

    .line 1822
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 1838
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 1824
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 1825
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 1826
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->getCommentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1829
    :cond_19
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 1830
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->getPlainContentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1833
    :cond_28
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 1834
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->getHtmlContentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1837
    :cond_39
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 1838
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasCommentId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1695
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasHtmlContent()Z
    .registers 3

    .prologue
    .line 1759
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->bitField0_:I

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

.method public hasPlainContent()Z
    .registers 3

    .prologue
    .line 1727
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->bitField0_:I

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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1794
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->memoizedIsInitialized:B

    .line 1795
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v2, :cond_b

    move v1, v2

    .line 1802
    :goto_a
    return v1

    :cond_b
    move v1, v3

    .line 1795
    goto :goto_a

    .line 1797
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->hasCommentId()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1798
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->memoizedIsInitialized:B

    move v1, v3

    .line 1799
    goto :goto_a

    .line 1801
    :cond_17
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 1802
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;
    .registers 2

    .prologue
    .line 1916
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->newBuilder()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1672
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;
    .registers 2

    .prologue
    .line 1920
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->newBuilder(Lcom/google/feedreader/extrpc/Client$CommentEditResponse;)Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1672
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->toBuilder()Lcom/google/feedreader/extrpc/Client$CommentEditResponse$Builder;

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
    .line 1845
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

    .line 1807
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->getSerializedSize()I

    .line 1808
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 1809
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->getCommentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1811
    :cond_12
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 1812
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->getPlainContentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1814
    :cond_1f
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 1815
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$CommentEditResponse;->getHtmlContentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1817
    :cond_2e
    return-void
.end method
