.class public final Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$DestroySessionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DestroySessionRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

.field public static final destroySessionRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            "Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 12910
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 13089
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    .line 13090
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->initFields()V

    .line 13098
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xb

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->destroySessionRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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

    .line 12882
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12927
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->memoizedIsInitialized:B

    .line 12941
    iput v3, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->memoizedSerializedSize:I

    .line 12883
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->initFields()V

    .line 12885
    const/4 v0, 0x0

    .line 12886
    .local v0, done:Z
    :cond_c
    :goto_c
    if-nez v0, :cond_1f

    .line 12887
    :try_start_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 12888
    .local v2, tag:I
    packed-switch v2, :pswitch_data_3e

    .line 12893
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_29
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_18} :catch_23
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_2e

    move-result v3

    if-nez v3, :cond_c

    .line 12895
    const/4 v0, 0x1

    goto :goto_c

    .line 12890
    :pswitch_1d
    const/4 v0, 0x1

    .line 12891
    goto :goto_c

    .line 12907
    .end local v2           #tag:I
    :cond_1f
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->makeExtensionsImmutable()V

    .line 12909
    return-void

    .line 12901
    :catch_23
    move-exception v1

    .line 12902
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_24
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_29

    .line 12907
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_29
    move-exception v3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->makeExtensionsImmutable()V

    throw v3

    .line 12903
    :catch_2e
    move-exception v1

    .line 12904
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

    .line 12888
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_1d
    .end packed-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/service/SpeechService$1;)V
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
    .line 12860
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 12865
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 12927
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->memoizedIsInitialized:B

    .line 12941
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->memoizedSerializedSize:I

    .line 12867
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12860
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12868
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12927
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->memoizedIsInitialized:B

    .line 12941
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->memoizedSerializedSize:I

    .line 12868
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;
    .registers 1

    .prologue
    .line 12872
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 12926
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;
    .registers 1

    .prologue
    .line 13010
    #calls: Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->access$15200()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 13013
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12860
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;
    .registers 2

    .prologue
    .line 12876
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 12943
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->memoizedSerializedSize:I

    .line 12944
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 12948
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 12946
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 12947
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 12948
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 12929
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->memoizedIsInitialized:B

    .line 12930
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 12933
    :goto_8
    return v1

    .line 12930
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 12932
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 12860
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;
    .registers 2

    .prologue
    .line 13011
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 12860
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->toBuilder()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;
    .registers 2

    .prologue
    .line 13015
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->newBuilder(Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

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
    .line 12954
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
    .line 12938
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->getSerializedSize()I

    .line 12939
    return-void
.end method
