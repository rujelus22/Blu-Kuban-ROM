.class public final Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiConfirmVerifiedViaSmsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHONE_NUMBER_FIELD_NUMBER:I = 0x3

.field public static final PHONE_NUMBER_FORMATTED_FIELD_NUMBER:I = 0x4

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field public static final VERIFIED_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private phoneNumberFormatted_:Ljava/lang/Object;

.field private phoneNumber_:Ljava/lang/Object;

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

.field private verified_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29149
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 29685
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    .line 29686
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->initFields()V

    .line 29687
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

    .line 29092
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 29257
    iput-byte v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->memoizedIsInitialized:B

    .line 29295
    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->memoizedSerializedSize:I

    .line 29093
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->initFields()V

    .line 29094
    const/4 v2, 0x0

    .line 29096
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 29097
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_8d

    .line 29098
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 29099
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_92

    .line 29104
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 29106
    const/4 v0, 0x1

    goto :goto_d

    .line 29101
    :sswitch_1e
    const/4 v0, 0x1

    .line 29102
    goto :goto_d

    .line 29111
    :sswitch_20
    const/4 v3, 0x0

    .line 29112
    .local v3, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    .line 29113
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v3

    .line 29115
    :cond_2e
    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 29116
    if-eqz v3, :cond_45

    .line 29117
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v3, v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    .line 29118
    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 29120
    :cond_45
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->bitField0_:I
    :try_end_4b
    .catchall {:try_start_f .. :try_end_4b} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_4b} :catch_4c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_4b} :catch_64

    goto :goto_d

    .line 29140
    .end local v3           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .end local v4           #tag:I
    :catch_4c
    move-exception v1

    .line 29141
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4d
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_52

    .line 29146
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_52
    move-exception v5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->makeExtensionsImmutable()V

    throw v5

    .line 29124
    .restart local v4       #tag:I
    :sswitch_57
    :try_start_57
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->bitField0_:I

    .line 29125
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->verified_:Z
    :try_end_63
    .catchall {:try_start_57 .. :try_end_63} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_57 .. :try_end_63} :catch_4c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_63} :catch_64

    goto :goto_d

    .line 29142
    .end local v4           #tag:I
    :catch_64
    move-exception v1

    .line 29143
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

    .line 29129
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_73
    :try_start_73
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->bitField0_:I

    .line 29130
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->phoneNumber_:Ljava/lang/Object;

    goto :goto_d

    .line 29134
    :sswitch_80
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->bitField0_:I

    .line 29135
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->phoneNumberFormatted_:Ljava/lang/Object;
    :try_end_8c
    .catchall {:try_start_73 .. :try_end_8c} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_73 .. :try_end_8c} :catch_4c
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_8c} :catch_64

    goto :goto_d

    .line 29146
    .end local v4           #tag:I
    :cond_8d
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->makeExtensionsImmutable()V

    .line 29148
    return-void

    .line 29099
    nop

    :sswitch_data_92
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x10 -> :sswitch_57
        0x1a -> :sswitch_73
        0x22 -> :sswitch_80
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
    .line 29070
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 29075
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 29257
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->memoizedIsInitialized:B

    .line 29295
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->memoizedSerializedSize:I

    .line 29077
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29070
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 29078
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 29257
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->memoizedIsInitialized:B

    .line 29295
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->memoizedSerializedSize:I

    .line 29078
    return-void
.end method

.method static synthetic access$35202(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29070
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object p1
.end method

.method static synthetic access$35302(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29070
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->verified_:Z

    return p1
.end method

.method static synthetic access$35400(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29070
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->phoneNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$35402(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29070
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->phoneNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$35500(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29070
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->phoneNumberFormatted_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$35502(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29070
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->phoneNumberFormatted_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$35602(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29070
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;
    .registers 1

    .prologue
    .line 29082
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 29252
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 29253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->verified_:Z

    .line 29254
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->phoneNumber_:Ljava/lang/Object;

    .line 29255
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 29256
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    .registers 1

    .prologue
    .line 29380
    #calls: Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->access$35000()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 29383
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29360
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29366
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 29330
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 29336
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29371
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29377
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29350
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29356
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 29340
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 29346
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;
    .registers 2

    .prologue
    .line 29086
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29070
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

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
            "Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29161
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 29192
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->phoneNumber_:Ljava/lang/Object;

    .line 29193
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 29194
    check-cast v1, Ljava/lang/String;

    .line 29202
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 29196
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 29198
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 29199
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 29200
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->phoneNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 29202
    goto :goto_8
.end method

.method public getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 29207
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->phoneNumber_:Ljava/lang/Object;

    .line 29208
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 29209
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 29211
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->phoneNumber_:Ljava/lang/Object;

    .line 29214
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

.method public getPhoneNumberFormatted()Ljava/lang/String;
    .registers 5

    .prologue
    .line 29225
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 29226
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 29227
    check-cast v1, Ljava/lang/String;

    .line 29235
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 29229
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 29231
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 29232
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 29233
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->phoneNumberFormatted_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 29235
    goto :goto_8
.end method

.method public getPhoneNumberFormattedBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 29240
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 29241
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 29242
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 29244
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->phoneNumberFormatted_:Ljava/lang/Object;

    .line 29247
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
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 29297
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->memoizedSerializedSize:I

    .line 29298
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 29318
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 29300
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 29301
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 29302
    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 29305
    :cond_18
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_25

    .line 29306
    iget-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->verified_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 29309
    :cond_25
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 29310
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 29313
    :cond_35
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 29314
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->getPhoneNumberFormattedBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 29317
    :cond_46
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 29318
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 29172
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public getVerified()Z
    .registers 2

    .prologue
    .line 29182
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->verified_:Z

    return v0
.end method

.method public hasPhoneNumber()Z
    .registers 3

    .prologue
    .line 29189
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->bitField0_:I

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

.method public hasPhoneNumberFormatted()Z
    .registers 3

    .prologue
    .line 29222
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 29169
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasVerified()Z
    .registers 3

    .prologue
    .line 29179
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->bitField0_:I

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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 29259
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->memoizedIsInitialized:B

    .line 29260
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ne v0, v1, :cond_b

    :goto_9
    move v2, v1

    .line 29275
    :goto_a
    return v2

    :cond_b
    move v1, v2

    .line 29260
    goto :goto_9

    .line 29262
    :cond_d
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->hasStatus()Z

    move-result v3

    if-nez v3, :cond_16

    .line 29263
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 29266
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->hasVerified()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 29267
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 29270
    :cond_1f
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 29271
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 29274
    :cond_2c
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->memoizedIsInitialized:B

    move v2, v1

    .line 29275
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    .registers 2

    .prologue
    .line 29381
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29070
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;
    .registers 2

    .prologue
    .line 29385
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29070
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse$Builder;

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
    .line 29324
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 29280
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->getSerializedSize()I

    .line 29281
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 29282
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 29284
    :cond_11
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1c

    .line 29285
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->verified_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 29287
    :cond_1c
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 29288
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 29290
    :cond_2a
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 29291
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->getPhoneNumberFormattedBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 29293
    :cond_39
    return-void
.end method
