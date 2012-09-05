.class public final Lcom/google/protos/speech/service/SpeechService$LanguageTag;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$LanguageTagOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LanguageTag"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$LanguageTag;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$LanguageTag;


# instance fields
.field private baseLanguage_:Ljava/lang/Object;

.field private bitField0_:I

.field private language_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private region_:Ljava/lang/Object;

.field private script_:Ljava/lang/Object;

.field private variant_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9799
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->PARSER:Lcom/google/protobuf/Parser;

    .line 10517
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    .line 10518
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->initFields()V

    .line 10519
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
    const/4 v4, -0x1

    const/16 v6, 0x10

    .line 9739
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9972
    iput-byte v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->memoizedIsInitialized:B

    .line 10001
    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->memoizedSerializedSize:I

    .line 9740
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->initFields()V

    .line 9741
    const/4 v2, 0x0

    .line 9743
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 9744
    .local v0, done:Z
    :cond_f
    :goto_f
    if-nez v0, :cond_95

    .line 9745
    :try_start_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 9746
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_a6

    .line 9751
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_f

    .line 9753
    const/4 v0, 0x1

    goto :goto_f

    .line 9748
    :sswitch_20
    const/4 v0, 0x1

    .line 9749
    goto :goto_f

    .line 9758
    :sswitch_22
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    .line 9759
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->language_:Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_35
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_11 .. :try_end_2e} :catch_2f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2e} :catch_54

    goto :goto_f

    .line 9787
    .end local v3           #tag:I
    :catch_2f
    move-exception v1

    .line 9788
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_30
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_35

    .line 9793
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_35
    move-exception v4

    and-int/lit8 v5, v2, 0x10

    if-ne v5, v6, :cond_43

    .line 9794
    new-instance v5, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v6, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v5, v6}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    .line 9796
    :cond_43
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->makeExtensionsImmutable()V

    throw v4

    .line 9763
    .restart local v3       #tag:I
    :sswitch_47
    :try_start_47
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    .line 9764
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->baseLanguage_:Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_47 .. :try_end_53} :catchall_35
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_47 .. :try_end_53} :catch_2f
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_53} :catch_54

    goto :goto_f

    .line 9789
    .end local v3           #tag:I
    :catch_54
    move-exception v1

    .line 9790
    .local v1, e:Ljava/io/IOException;
    :try_start_55
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_63
    .catchall {:try_start_55 .. :try_end_63} :catchall_35

    .line 9768
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_63
    :try_start_63
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    .line 9769
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->region_:Ljava/lang/Object;

    goto :goto_f

    .line 9773
    :sswitch_70
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    .line 9774
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->script_:Ljava/lang/Object;

    goto :goto_f

    .line 9778
    :sswitch_7d
    and-int/lit8 v4, v2, 0x10

    if-eq v4, v6, :cond_8a

    .line 9779
    new-instance v4, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    .line 9780
    or-int/lit8 v2, v2, 0x10

    .line 9782
    :cond_8a
    iget-object v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
    :try_end_93
    .catchall {:try_start_63 .. :try_end_93} :catchall_35
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_63 .. :try_end_93} :catch_2f
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_93} :catch_54

    goto/16 :goto_f

    .line 9793
    .end local v3           #tag:I
    :cond_95
    and-int/lit8 v4, v2, 0x10

    if-ne v4, v6, :cond_a2

    .line 9794
    new-instance v4, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v4, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    .line 9796
    :cond_a2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->makeExtensionsImmutable()V

    .line 9798
    return-void

    .line 9746
    :sswitch_data_a6
    .sparse-switch
        0x0 -> :sswitch_20
        0xa -> :sswitch_22
        0x12 -> :sswitch_47
        0x1a -> :sswitch_63
        0x22 -> :sswitch_70
        0x2a -> :sswitch_7d
    .end sparse-switch
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
    .line 9717
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 9722
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9972
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->memoizedIsInitialized:B

    .line 10001
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->memoizedSerializedSize:I

    .line 9724
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9717
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 9725
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9972
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->memoizedIsInitialized:B

    .line 10001
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->memoizedSerializedSize:I

    .line 9725
    return-void
.end method

.method static synthetic access$11700(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 9717
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->language_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$11702(Lcom/google/protos/speech/service/SpeechService$LanguageTag;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9717
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->language_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11800(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 9717
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->baseLanguage_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$11802(Lcom/google/protos/speech/service/SpeechService$LanguageTag;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9717
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->baseLanguage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11900(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 9717
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->region_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$11902(Lcom/google/protos/speech/service/SpeechService$LanguageTag;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9717
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->region_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12000(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 9717
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->script_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12002(Lcom/google/protos/speech/service/SpeechService$LanguageTag;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9717
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->script_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12100(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 9717
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$12102(Lcom/google/protos/speech/service/SpeechService$LanguageTag;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9717
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$12202(Lcom/google/protos/speech/service/SpeechService$LanguageTag;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9717
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .registers 1

    .prologue
    .line 9729
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 9966
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->language_:Ljava/lang/Object;

    .line 9967
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->baseLanguage_:Ljava/lang/Object;

    .line 9968
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->region_:Ljava/lang/Object;

    .line 9969
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->script_:Ljava/lang/Object;

    .line 9970
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    .line 9971
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .registers 1

    .prologue
    .line 10095
    #calls: Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->create()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->access$11500()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 10098
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->newBuilder()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBaseLanguageBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 9870
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->baseLanguage_:Ljava/lang/Object;

    .line 9871
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 9872
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9874
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->baseLanguage_:Ljava/lang/Object;

    .line 9877
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9717
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .registers 2

    .prologue
    .line 9733
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    return-object v0
.end method

.method public getLanguageBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 9837
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->language_:Ljava/lang/Object;

    .line 9838
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 9839
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9841
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->language_:Ljava/lang/Object;

    .line 9844
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

.method public getRegionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 9903
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->region_:Ljava/lang/Object;

    .line 9904
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 9905
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9907
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->region_:Ljava/lang/Object;

    .line 9910
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

.method public getScriptBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 9936
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->script_:Ljava/lang/Object;

    .line 9937
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 9938
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9940
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->script_:Ljava/lang/Object;

    .line 9943
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
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 10003
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->memoizedSerializedSize:I

    .line 10004
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_a

    move v3, v2

    .line 10033
    .end local v2           #size:I
    .local v3, size:I
    :goto_9
    return v3

    .line 10006
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_a
    const/4 v2, 0x0

    .line 10007
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1a

    .line 10008
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 10011
    :cond_1a
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_29

    .line 10012
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getBaseLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 10015
    :cond_29
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_39

    .line 10016
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getRegionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 10019
    :cond_39
    iget v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4a

    .line 10020
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getScriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 10024
    :cond_4a
    const/4 v0, 0x0

    .line 10025
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4c
    iget-object v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_62

    .line 10026
    iget-object v4, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 10025
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 10029
    :cond_62
    add-int/2addr v2, v0

    .line 10030
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getVariantList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 10032
    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->memoizedSerializedSize:I

    move v3, v2

    .line 10033
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_9
.end method

.method public getVariantList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9952
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public hasBaseLanguage()Z
    .registers 3

    .prologue
    .line 9852
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

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

.method public hasLanguage()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 9819
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasRegion()Z
    .registers 3

    .prologue
    .line 9885
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

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

.method public hasScript()Z
    .registers 3

    .prologue
    .line 9918
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 9974
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->memoizedIsInitialized:B

    .line 9975
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 9978
    :goto_8
    return v1

    .line 9975
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 9977
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9717
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .registers 2

    .prologue
    .line 10096
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->newBuilder()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9717
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->toBuilder()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .registers 2

    .prologue
    .line 10100
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->newBuilder(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

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
    .line 10039
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 9983
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getSerializedSize()I

    .line 9984
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 9985
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9987
    :cond_13
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_20

    .line 9988
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getBaseLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9990
    :cond_20
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2e

    .line 9991
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getRegionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9993
    :cond_2e
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3d

    .line 9994
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getScriptBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9996
    :cond_3d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3e
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_53

    .line 9997
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->variant_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9996
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 9999
    :cond_53
    return-void
.end method
