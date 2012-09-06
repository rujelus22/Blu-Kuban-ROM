.class public final Lcom/google/grandcentral/api2/Constants$ProtoConstants;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Constants.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Constants$ProtoConstantsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtoConstants"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;,
        Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;,
        Lcom/google/grandcentral/api2/Constants$ProtoConstants$RedirectBehavior;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Constants$ProtoConstants;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Constants$ProtoConstants;


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 695
    new-instance v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->PARSER:Lcom/google/protobuf/Parser;

    .line 959
    new-instance v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Constants$ProtoConstants;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->defaultInstance:Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    .line 960
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->defaultInstance:Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->initFields()V

    .line 961
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

    .line 667
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 797
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->memoizedIsInitialized:B

    .line 811
    iput v3, p0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->memoizedSerializedSize:I

    .line 668
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->initFields()V

    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, done:Z
    :cond_c
    :goto_c
    if-nez v0, :cond_1f

    .line 672
    :try_start_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 673
    .local v2, tag:I
    packed-switch v2, :pswitch_data_3e

    .line 678
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_29
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_18} :catch_23
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_2e

    move-result v3

    if-nez v3, :cond_c

    .line 680
    const/4 v0, 0x1

    goto :goto_c

    .line 675
    :pswitch_1d
    const/4 v0, 0x1

    .line 676
    goto :goto_c

    .line 692
    .end local v2           #tag:I
    :cond_1f
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->makeExtensionsImmutable()V

    .line 694
    return-void

    .line 686
    :catch_23
    move-exception v1

    .line 687
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_24
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_29

    .line 692
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_29
    move-exception v3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->makeExtensionsImmutable()V

    throw v3

    .line 688
    :catch_2e
    move-exception v1

    .line 689
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

    .line 673
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
    .line 645
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Constants$ProtoConstants;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 650
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 797
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->memoizedIsInitialized:B

    .line 811
    iput v0, p0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->memoizedSerializedSize:I

    .line 652
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Constants$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 645
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Constants$ProtoConstants;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 653
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 797
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->memoizedIsInitialized:B

    .line 811
    iput v0, p0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->memoizedSerializedSize:I

    .line 653
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Constants$ProtoConstants;
    .registers 1

    .prologue
    .line 657
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->defaultInstance:Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 796
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;
    .registers 1

    .prologue
    .line 880
    #calls: Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->create()Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->access$700()Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Constants$ProtoConstants;)Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 883
    invoke-static {}, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->newBuilder()Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Constants$ProtoConstants;)Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Constants$ProtoConstants;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 860
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Constants$ProtoConstants;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 866
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Constants$ProtoConstants;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 830
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Constants$ProtoConstants;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 836
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Constants$ProtoConstants;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 871
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Constants$ProtoConstants;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 877
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Constants$ProtoConstants;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 850
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Constants$ProtoConstants;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 856
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Constants$ProtoConstants;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 840
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Constants$ProtoConstants;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 846
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Constants$ProtoConstants;
    .registers 2

    .prologue
    .line 661
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->defaultInstance:Lcom/google/grandcentral/api2/Constants$ProtoConstants;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Constants$ProtoConstants;

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
            "Lcom/google/grandcentral/api2/Constants$ProtoConstants;",
            ">;"
        }
    .end annotation

    .prologue
    .line 707
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 813
    iget v0, p0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->memoizedSerializedSize:I

    .line 814
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 818
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 816
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 817
    iput v0, p0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->memoizedSerializedSize:I

    move v1, v0

    .line 818
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 799
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->memoizedIsInitialized:B

    .line 800
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 803
    :goto_8
    return v1

    .line 800
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 802
    :cond_b
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;
    .registers 2

    .prologue
    .line 881
    invoke-static {}, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->newBuilder()Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->newBuilderForType()Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;
    .registers 2

    .prologue
    .line 885
    invoke-static {p0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->newBuilder(Lcom/google/grandcentral/api2/Constants$ProtoConstants;)Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->toBuilder()Lcom/google/grandcentral/api2/Constants$ProtoConstants$Builder;

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
    .line 824
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
    .line 808
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants;->getSerializedSize()I

    .line 809
    return-void
.end method
