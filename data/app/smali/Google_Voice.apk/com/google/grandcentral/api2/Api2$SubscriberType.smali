.class public final Lcom/google/grandcentral/api2/Api2$SubscriberType;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$SubscriberTypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubscriberType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$SubscriberType$Builder;,
        Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$SubscriberType;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$SubscriberType;


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1909
    new-instance v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$SubscriberType$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->PARSER:Lcom/google/protobuf/Parser;

    .line 2138
    new-instance v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$SubscriberType;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->defaultInstance:Lcom/google/grandcentral/api2/Api2$SubscriberType;

    .line 2139
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->defaultInstance:Lcom/google/grandcentral/api2/Api2$SubscriberType;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$SubscriberType;->initFields()V

    .line 2140
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 1881
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1976
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->memoizedIsInitialized:B

    .line 1990
    iput v3, p0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->memoizedSerializedSize:I

    .line 1882
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$SubscriberType;->initFields()V

    .line 1884
    const/4 v0, 0x0

    .line 1885
    .local v0, done:Z
    :cond_c
    :goto_c
    if-nez v0, :cond_1f

    .line 1886
    :try_start_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 1887
    .local v2, tag:I
    packed-switch v2, :pswitch_data_3e

    .line 1892
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/grandcentral/api2/Api2$SubscriberType;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_29
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_18} :catch_23
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_2e

    move-result v3

    if-nez v3, :cond_c

    .line 1894
    const/4 v0, 0x1

    goto :goto_c

    .line 1889
    :pswitch_1d
    const/4 v0, 0x1

    .line 1890
    goto :goto_c

    .line 1906
    .end local v2           #tag:I
    :cond_1f
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$SubscriberType;->makeExtensionsImmutable()V

    .line 1908
    return-void

    .line 1900
    :catch_23
    move-exception v1

    .line 1901
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_24
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_29

    .line 1906
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_29
    move-exception v3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$SubscriberType;->makeExtensionsImmutable()V

    throw v3

    .line 1902
    :catch_2e
    move-exception v1

    .line 1903
    .local v1, e:Ljava/io/IOException;
    :try_start_2f
    new-instance v3, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
    :try_end_3d
    .catchall {:try_start_2f .. :try_end_3d} :catchall_29

    .line 1887
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_1d
    .end packed-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1859
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$SubscriberType;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1864
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1976
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->memoizedIsInitialized:B

    .line 1990
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->memoizedSerializedSize:I

    .line 1866
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1859
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$SubscriberType;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1867
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1976
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->memoizedIsInitialized:B

    .line 1990
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->memoizedSerializedSize:I

    .line 1867
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$SubscriberType;
    .registers 1

    .prologue
    .line 1871
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->defaultInstance:Lcom/google/grandcentral/api2/Api2$SubscriberType;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 1975
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$SubscriberType$Builder;
    .registers 1

    .prologue
    .line 2059
    #calls: Lcom/google/grandcentral/api2/Api2$SubscriberType$Builder;->create()Lcom/google/grandcentral/api2/Api2$SubscriberType$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$SubscriberType$Builder;->access$2400()Lcom/google/grandcentral/api2/Api2$SubscriberType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$SubscriberType;)Lcom/google/grandcentral/api2/Api2$SubscriberType$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2062
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$SubscriberType;->newBuilder()Lcom/google/grandcentral/api2/Api2$SubscriberType$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$SubscriberType$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$SubscriberType;)Lcom/google/grandcentral/api2/Api2$SubscriberType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$SubscriberType;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2039
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$SubscriberType;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2045
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$SubscriberType;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2009
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$SubscriberType;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2015
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$SubscriberType;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2050
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$SubscriberType;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2056
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$SubscriberType;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2029
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$SubscriberType;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2035
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$SubscriberType;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2019
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$SubscriberType;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2025
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$SubscriberType;
    .registers 2

    .prologue
    .line 1875
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->defaultInstance:Lcom/google/grandcentral/api2/Api2$SubscriberType;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1859
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$SubscriberType;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$SubscriberType;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$SubscriberType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1921
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 1992
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->memoizedSerializedSize:I

    .line 1993
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 1997
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 1995
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 1996
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->memoizedSerializedSize:I

    move v1, v0

    .line 1997
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1978
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->memoizedIsInitialized:B

    .line 1979
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1982
    :goto_8
    return v1

    .line 1979
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1981
    :cond_b
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$SubscriberType;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Builder;
    .registers 2

    .prologue
    .line 2060
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$SubscriberType;->newBuilder()Lcom/google/grandcentral/api2/Api2$SubscriberType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1859
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$SubscriberType;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$SubscriberType$Builder;
    .registers 2

    .prologue
    .line 2064
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$SubscriberType;->newBuilder(Lcom/google/grandcentral/api2/Api2$SubscriberType;)Lcom/google/grandcentral/api2/Api2$SubscriberType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1859
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$SubscriberType;->toBuilder()Lcom/google/grandcentral/api2/Api2$SubscriberType$Builder;

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
    .line 2003
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1987
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$SubscriberType;->getSerializedSize()I

    .line 1988
    return-void
.end method
