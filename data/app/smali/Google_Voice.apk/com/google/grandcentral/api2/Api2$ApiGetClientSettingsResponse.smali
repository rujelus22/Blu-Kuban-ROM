.class public final Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiGetClientSettingsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_SETTINGS_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;


# instance fields
.field private bitField0_:I

.field private clientSettings_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34837
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 35158
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    .line 35159
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->initFields()V

    .line 35160
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 34790
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 34877
    iput-byte v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->memoizedIsInitialized:B

    .line 34905
    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->memoizedSerializedSize:I

    .line 34791
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->initFields()V

    .line 34792
    const/4 v2, 0x0

    .line 34794
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 34795
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_73

    .line 34796
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 34797
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_78

    .line 34802
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 34804
    const/4 v0, 0x1

    goto :goto_d

    .line 34799
    :sswitch_1e
    const/4 v0, 0x1

    .line 34800
    goto :goto_d

    .line 34809
    :sswitch_20
    const/4 v3, 0x0

    .line 34810
    .local v3, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    .line 34811
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v3

    .line 34813
    :cond_2e
    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 34814
    if-eqz v3, :cond_45

    .line 34815
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v3, v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    .line 34816
    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 34818
    :cond_45
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->bitField0_:I
    :try_end_4b
    .catchall {:try_start_f .. :try_end_4b} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_4b} :catch_4c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_4b} :catch_64

    goto :goto_d

    .line 34828
    .end local v3           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .end local v4           #tag:I
    :catch_4c
    move-exception v1

    .line 34829
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4d
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_52

    .line 34834
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_52
    move-exception v5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->makeExtensionsImmutable()V

    throw v5

    .line 34822
    .restart local v4       #tag:I
    :sswitch_57
    :try_start_57
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->bitField0_:I

    .line 34823
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->clientSettings_:Lcom/google/protobuf/ByteString;
    :try_end_63
    .catchall {:try_start_57 .. :try_end_63} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_57 .. :try_end_63} :catch_4c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_63} :catch_64

    goto :goto_d

    .line 34830
    .end local v4           #tag:I
    :catch_64
    move-exception v1

    .line 34831
    .local v1, e:Ljava/io/IOException;
    :try_start_65
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_73
    .catchall {:try_start_65 .. :try_end_73} :catchall_52

    .line 34834
    .end local v1           #e:Ljava/io/IOException;
    :cond_73
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->makeExtensionsImmutable()V

    .line 34836
    return-void

    .line 34797
    nop

    :sswitch_data_78
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x1a -> :sswitch_57
    .end sparse-switch
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
    .line 34768
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 34773
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 34877
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->memoizedIsInitialized:B

    .line 34905
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->memoizedSerializedSize:I

    .line 34775
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34768
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 34776
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 34877
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->memoizedIsInitialized:B

    .line 34905
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->memoizedSerializedSize:I

    .line 34776
    return-void
.end method

.method static synthetic access$42002(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34768
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object p1
.end method

.method static synthetic access$42102(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34768
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->clientSettings_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$42202(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34768
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;
    .registers 1

    .prologue
    .line 34780
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 34874
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 34875
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->clientSettings_:Lcom/google/protobuf/ByteString;

    .line 34876
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;
    .registers 1

    .prologue
    .line 34982
    #calls: Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->access$41800()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 34985
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34962
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34968
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34932
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34938
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34973
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34979
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34952
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34958
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34942
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34948
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    return-object v0
.end method


# virtual methods
.method public getClientSettings()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 34870
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->clientSettings_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;
    .registers 2

    .prologue
    .line 34784
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34768
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;

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
            "Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34849
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 34907
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->memoizedSerializedSize:I

    .line 34908
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 34920
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 34910
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 34911
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 34912
    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 34915
    :cond_16
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_25

    .line 34916
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->clientSettings_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 34919
    :cond_25
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 34920
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 34860
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasClientSettings()Z
    .registers 3

    .prologue
    .line 34867
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 34857
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 34879
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->memoizedIsInitialized:B

    .line 34880
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 34891
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 34880
    goto :goto_9

    .line 34882
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->hasStatus()Z

    move-result v3

    if-nez v3, :cond_16

    .line 34883
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 34884
    goto :goto_9

    .line 34886
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_24

    .line 34887
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 34888
    goto :goto_9

    .line 34890
    :cond_24
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;
    .registers 2

    .prologue
    .line 34983
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34768
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;
    .registers 2

    .prologue
    .line 34987
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34768
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse$Builder;

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
    .line 34926
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

    .line 34896
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->getSerializedSize()I

    .line 34897
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 34898
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 34900
    :cond_f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 34901
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsResponse;->clientSettings_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 34903
    :cond_1c
    return-void
.end method
