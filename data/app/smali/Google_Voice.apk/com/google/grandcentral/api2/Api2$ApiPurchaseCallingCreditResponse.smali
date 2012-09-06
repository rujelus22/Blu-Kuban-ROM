.class public final Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiPurchaseCallingCreditResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final REDIRECT_URL_FIELD_NUMBER:I = 0x2

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private redirectUrl_:Ljava/lang/Object;

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31741
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 32116
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    .line 32117
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->initFields()V

    .line 32118
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

    .line 31694
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31804
    iput-byte v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->memoizedIsInitialized:B

    .line 31832
    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->memoizedSerializedSize:I

    .line 31695
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->initFields()V

    .line 31696
    const/4 v2, 0x0

    .line 31698
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 31699
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_73

    .line 31700
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 31701
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_78

    .line 31706
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 31708
    const/4 v0, 0x1

    goto :goto_d

    .line 31703
    :sswitch_1e
    const/4 v0, 0x1

    .line 31704
    goto :goto_d

    .line 31713
    :sswitch_20
    const/4 v3, 0x0

    .line 31714
    .local v3, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    .line 31715
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v3

    .line 31717
    :cond_2e
    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 31718
    if-eqz v3, :cond_45

    .line 31719
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v3, v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    .line 31720
    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 31722
    :cond_45
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->bitField0_:I
    :try_end_4b
    .catchall {:try_start_f .. :try_end_4b} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_4b} :catch_4c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_4b} :catch_64

    goto :goto_d

    .line 31732
    .end local v3           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .end local v4           #tag:I
    :catch_4c
    move-exception v1

    .line 31733
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4d
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_52

    .line 31738
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_52
    move-exception v5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->makeExtensionsImmutable()V

    throw v5

    .line 31726
    .restart local v4       #tag:I
    :sswitch_57
    :try_start_57
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->bitField0_:I

    .line 31727
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->redirectUrl_:Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_57 .. :try_end_63} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_57 .. :try_end_63} :catch_4c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_63} :catch_64

    goto :goto_d

    .line 31734
    .end local v4           #tag:I
    :catch_64
    move-exception v1

    .line 31735
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

    .line 31738
    .end local v1           #e:Ljava/io/IOException;
    :cond_73
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->makeExtensionsImmutable()V

    .line 31740
    return-void

    .line 31701
    nop

    :sswitch_data_78
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_57
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
    .line 31672
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 31677
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 31804
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->memoizedIsInitialized:B

    .line 31832
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->memoizedSerializedSize:I

    .line 31679
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31672
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 31680
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31804
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->memoizedIsInitialized:B

    .line 31832
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->memoizedSerializedSize:I

    .line 31680
    return-void
.end method

.method static synthetic access$38302(Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31672
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object p1
.end method

.method static synthetic access$38400(Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31672
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->redirectUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$38402(Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31672
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->redirectUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$38502(Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31672
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;
    .registers 1

    .prologue
    .line 31684
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 31801
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 31802
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->redirectUrl_:Ljava/lang/Object;

    .line 31803
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;
    .registers 1

    .prologue
    .line 31909
    #calls: Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->access$38100()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 31912
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31889
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31895
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 31859
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 31865
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31900
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31906
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31879
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31885
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 31869
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 31875
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;
    .registers 2

    .prologue
    .line 31688
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31672
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

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
            "Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31753
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 31774
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->redirectUrl_:Ljava/lang/Object;

    .line 31775
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 31776
    check-cast v1, Ljava/lang/String;

    .line 31784
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 31778
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 31780
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 31781
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 31782
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->redirectUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 31784
    goto :goto_8
.end method

.method public getRedirectUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 31789
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->redirectUrl_:Ljava/lang/Object;

    .line 31790
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 31791
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 31793
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->redirectUrl_:Ljava/lang/Object;

    .line 31796
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 31834
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->memoizedSerializedSize:I

    .line 31835
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 31847
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 31837
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 31838
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 31839
    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 31842
    :cond_17
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 31843
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->getRedirectUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 31846
    :cond_26
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 31847
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 31764
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasRedirectUrl()Z
    .registers 3

    .prologue
    .line 31771
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->bitField0_:I

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

    .line 31761
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->bitField0_:I

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

    .line 31806
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->memoizedIsInitialized:B

    .line 31807
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 31818
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 31807
    goto :goto_9

    .line 31809
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->hasStatus()Z

    move-result v3

    if-nez v3, :cond_16

    .line 31810
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 31811
    goto :goto_9

    .line 31813
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_24

    .line 31814
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 31815
    goto :goto_9

    .line 31817
    :cond_24
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;
    .registers 2

    .prologue
    .line 31910
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31672
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;
    .registers 2

    .prologue
    .line 31914
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31672
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;

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
    .line 31853
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

    .line 31823
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->getSerializedSize()I

    .line 31824
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 31825
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 31827
    :cond_10
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 31828
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->getRedirectUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 31830
    :cond_1d
    return-void
.end method
