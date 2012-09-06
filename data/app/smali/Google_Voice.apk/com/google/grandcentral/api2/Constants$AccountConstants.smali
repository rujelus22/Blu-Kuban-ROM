.class public final Lcom/google/grandcentral/api2/Constants$AccountConstants;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Constants.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Constants$AccountConstantsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountConstants"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;,
        Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Constants$AccountConstants;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Constants$AccountConstants;


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1019
    new-instance v0, Lcom/google/grandcentral/api2/Constants$AccountConstants$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Constants$AccountConstants$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->PARSER:Lcom/google/protobuf/Parser;

    .line 1242
    new-instance v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Constants$AccountConstants;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->defaultInstance:Lcom/google/grandcentral/api2/Constants$AccountConstants;

    .line 1243
    sget-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->defaultInstance:Lcom/google/grandcentral/api2/Constants$AccountConstants;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Constants$AccountConstants;->initFields()V

    .line 1244
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

    .line 991
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1080
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->memoizedIsInitialized:B

    .line 1094
    iput v3, p0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->memoizedSerializedSize:I

    .line 992
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Constants$AccountConstants;->initFields()V

    .line 994
    const/4 v0, 0x0

    .line 995
    .local v0, done:Z
    :cond_c
    :goto_c
    if-nez v0, :cond_1f

    .line 996
    :try_start_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 997
    .local v2, tag:I
    packed-switch v2, :pswitch_data_3e

    .line 1002
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/grandcentral/api2/Constants$AccountConstants;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_29
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_18} :catch_23
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_2e

    move-result v3

    if-nez v3, :cond_c

    .line 1004
    const/4 v0, 0x1

    goto :goto_c

    .line 999
    :pswitch_1d
    const/4 v0, 0x1

    .line 1000
    goto :goto_c

    .line 1016
    .end local v2           #tag:I
    :cond_1f
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$AccountConstants;->makeExtensionsImmutable()V

    .line 1018
    return-void

    .line 1010
    :catch_23
    move-exception v1

    .line 1011
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_24
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_29

    .line 1016
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_29
    move-exception v3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$AccountConstants;->makeExtensionsImmutable()V

    throw v3

    .line 1012
    :catch_2e
    move-exception v1

    .line 1013
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

    .line 997
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_1d
    .end packed-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/grandcentral/api2/Constants$1;)V
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
    .line 969
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Constants$AccountConstants;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 974
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1080
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->memoizedIsInitialized:B

    .line 1094
    iput v0, p0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->memoizedSerializedSize:I

    .line 976
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Constants$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 969
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Constants$AccountConstants;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 977
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1080
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->memoizedIsInitialized:B

    .line 1094
    iput v0, p0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->memoizedSerializedSize:I

    .line 977
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Constants$AccountConstants;
    .registers 1

    .prologue
    .line 981
    sget-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->defaultInstance:Lcom/google/grandcentral/api2/Constants$AccountConstants;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 1079
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;
    .registers 1

    .prologue
    .line 1163
    #calls: Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->create()Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->access$1000()Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Constants$AccountConstants;)Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1166
    invoke-static {}, Lcom/google/grandcentral/api2/Constants$AccountConstants;->newBuilder()Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Constants$AccountConstants;)Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Constants$AccountConstants;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1143
    sget-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Constants$AccountConstants;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1149
    sget-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Constants$AccountConstants;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1113
    sget-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Constants$AccountConstants;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1119
    sget-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Constants$AccountConstants;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1154
    sget-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Constants$AccountConstants;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1160
    sget-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Constants$AccountConstants;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1133
    sget-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Constants$AccountConstants;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1139
    sget-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Constants$AccountConstants;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1123
    sget-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Constants$AccountConstants;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1129
    sget-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Constants$AccountConstants;
    .registers 2

    .prologue
    .line 985
    sget-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->defaultInstance:Lcom/google/grandcentral/api2/Constants$AccountConstants;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 969
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$AccountConstants;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Constants$AccountConstants;

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
            "Lcom/google/grandcentral/api2/Constants$AccountConstants;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1031
    sget-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 1096
    iget v0, p0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->memoizedSerializedSize:I

    .line 1097
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 1101
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 1099
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 1100
    iput v0, p0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->memoizedSerializedSize:I

    move v1, v0

    .line 1101
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1082
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->memoizedIsInitialized:B

    .line 1083
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1086
    :goto_8
    return v1

    .line 1083
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1085
    :cond_b
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Constants$AccountConstants;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;
    .registers 2

    .prologue
    .line 1164
    invoke-static {}, Lcom/google/grandcentral/api2/Constants$AccountConstants;->newBuilder()Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 969
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$AccountConstants;->newBuilderForType()Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;
    .registers 2

    .prologue
    .line 1168
    invoke-static {p0}, Lcom/google/grandcentral/api2/Constants$AccountConstants;->newBuilder(Lcom/google/grandcentral/api2/Constants$AccountConstants;)Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 969
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$AccountConstants;->toBuilder()Lcom/google/grandcentral/api2/Constants$AccountConstants$Builder;

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
    .line 1107
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
    .line 1091
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$AccountConstants;->getSerializedSize()I

    .line 1092
    return-void
.end method
