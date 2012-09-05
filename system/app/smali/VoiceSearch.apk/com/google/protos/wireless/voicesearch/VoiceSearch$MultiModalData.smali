.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultiModalData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

.field public static final multiModalData:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ApplicationData;",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private googleSearchRequestProtoData_:Lcom/google/protobuf/ByteString;

.field private highConfidence_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private priority_:I

.field private responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

.field private serverHttpUrl_:Ljava/lang/Object;

.field private serverProtoUrl_:Ljava/lang/Object;

.field private skipWebsearchAction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;",
            ">;"
        }
    .end annotation
.end field

.field private skipWebsearchAlways_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 3928
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->PARSER:Lcom/google/protobuf/Parser;

    .line 4754
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    .line 4755
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->initFields()V

    .line 4763
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xa

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->multiModalData:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 14
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/16 v10, 0x80

    .line 3823
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4135
    iput-byte v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->memoizedIsInitialized:B

    .line 4176
    iput v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->memoizedSerializedSize:I

    .line 3824
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->initFields()V

    .line 3825
    const/4 v3, 0x0

    .line 3827
    .local v3, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 3828
    .local v0, done:Z
    :cond_f
    :goto_f
    if-nez v0, :cond_107

    .line 3829
    :try_start_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v6

    .line 3830
    .local v6, tag:I
    sparse-switch v6, :sswitch_data_118

    .line 3835
    invoke-virtual {p0, p1, p2, v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_f

    .line 3837
    const/4 v0, 0x1

    goto :goto_f

    .line 3832
    :sswitch_20
    const/4 v0, 0x1

    .line 3833
    goto :goto_f

    .line 3842
    :sswitch_22
    iget v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    .line 3843
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->data_:Lcom/google/protobuf/ByteString;
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_35
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_11 .. :try_end_2e} :catch_2f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2e} :catch_59

    goto :goto_f

    .line 3916
    .end local v6           #tag:I
    :catch_2f
    move-exception v1

    .line 3917
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_30
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_35

    .line 3922
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_35
    move-exception v8

    and-int/lit16 v9, v3, 0x80

    if-ne v9, v10, :cond_42

    .line 3923
    iget-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAction_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAction_:Ljava/util/List;

    .line 3925
    :cond_42
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->makeExtensionsImmutable()V

    throw v8

    .line 3847
    .restart local v6       #tag:I
    :sswitch_46
    :try_start_46
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 3848
    .local v5, rawValue:I
    invoke-static {v5}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    move-result-object v7

    .line 3849
    .local v7, value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    if-eqz v7, :cond_f

    .line 3850
    iget v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    .line 3851
    iput-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    :try_end_58
    .catchall {:try_start_46 .. :try_end_58} :catchall_35
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_46 .. :try_end_58} :catch_2f
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_58} :catch_59

    goto :goto_f

    .line 3918
    .end local v5           #rawValue:I
    .end local v6           #tag:I
    .end local v7           #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    :catch_59
    move-exception v1

    .line 3919
    .local v1, e:Ljava/io/IOException;
    :try_start_5a
    new-instance v8, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_68
    .catchall {:try_start_5a .. :try_end_68} :catchall_35

    .line 3856
    .end local v1           #e:Ljava/io/IOException;
    .restart local v6       #tag:I
    :sswitch_68
    :try_start_68
    iget v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    .line 3857
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->priority_:I

    goto :goto_f

    .line 3861
    :sswitch_75
    iget v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    .line 3862
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->googleSearchRequestProtoData_:Lcom/google/protobuf/ByteString;

    goto :goto_f

    .line 3866
    :sswitch_82
    iget v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    .line 3867
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->serverHttpUrl_:Ljava/lang/Object;

    goto :goto_f

    .line 3871
    :sswitch_8f
    iget v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    .line 3872
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->serverProtoUrl_:Ljava/lang/Object;

    goto/16 :goto_f

    .line 3876
    :sswitch_9d
    iget v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    .line 3877
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->highConfidence_:Z

    goto/16 :goto_f

    .line 3881
    :sswitch_ab
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 3882
    .restart local v5       #rawValue:I
    invoke-static {v5}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v7

    .line 3883
    .local v7, value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    if-eqz v7, :cond_f

    .line 3884
    and-int/lit16 v8, v3, 0x80

    if-eq v8, v10, :cond_c2

    .line 3885
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAction_:Ljava/util/List;

    .line 3886
    or-int/lit16 v3, v3, 0x80

    .line 3888
    :cond_c2
    iget-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 3893
    .end local v5           #rawValue:I
    .end local v7           #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    :sswitch_c9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 3894
    .local v2, length:I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 3895
    .local v4, oldLimit:I
    :cond_d1
    :goto_d1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_f4

    .line 3896
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 3897
    .restart local v5       #rawValue:I
    invoke-static {v5}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v7

    .line 3898
    .restart local v7       #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    if-eqz v7, :cond_d1

    .line 3899
    and-int/lit16 v8, v3, 0x80

    if-eq v8, v10, :cond_ee

    .line 3900
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAction_:Ljava/util/List;

    .line 3901
    or-int/lit16 v3, v3, 0x80

    .line 3903
    :cond_ee
    iget-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d1

    .line 3906
    .end local v5           #rawValue:I
    .end local v7           #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    :cond_f4
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_f

    .line 3910
    .end local v2           #length:I
    .end local v4           #oldLimit:I
    :sswitch_f9
    iget v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    .line 3911
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAlways_:Z
    :try_end_105
    .catchall {:try_start_68 .. :try_end_105} :catchall_35
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_68 .. :try_end_105} :catch_2f
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_105} :catch_59

    goto/16 :goto_f

    .line 3922
    .end local v6           #tag:I
    :cond_107
    and-int/lit16 v8, v3, 0x80

    if-ne v8, v10, :cond_113

    .line 3923
    iget-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAction_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAction_:Ljava/util/List;

    .line 3925
    :cond_113
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->makeExtensionsImmutable()V

    .line 3927
    return-void

    .line 3830
    nop

    :sswitch_data_118
    .sparse-switch
        0x0 -> :sswitch_20
        0xa -> :sswitch_22
        0x10 -> :sswitch_46
        0x18 -> :sswitch_68
        0x22 -> :sswitch_75
        0x2a -> :sswitch_82
        0x32 -> :sswitch_8f
        0x38 -> :sswitch_9d
        0x40 -> :sswitch_ab
        0x42 -> :sswitch_c9
        0x48 -> :sswitch_f9
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
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
    .line 3801
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3806
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4135
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->memoizedIsInitialized:B

    .line 4176
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->memoizedSerializedSize:I

    .line 3808
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3801
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3809
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4135
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->memoizedIsInitialized:B

    .line 4176
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->memoizedSerializedSize:I

    .line 3809
    return-void
.end method

.method static synthetic access$4602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3801
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->data_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$4702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3801
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    return-object p1
.end method

.method static synthetic access$4802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3801
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->priority_:I

    return p1
.end method

.method static synthetic access$4902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3801
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->googleSearchRequestProtoData_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$5000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3801
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->serverHttpUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3801
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->serverHttpUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3801
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->serverProtoUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3801
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->serverProtoUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3801
    iput-boolean p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->highConfidence_:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3801
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAction_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3801
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAction_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3801
    iput-boolean p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAlways_:Z

    return p1
.end method

.method static synthetic access$5502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3801
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;
    .registers 1

    .prologue
    .line 3813
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 4125
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->data_:Lcom/google/protobuf/ByteString;

    .line 4126
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->NONE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 4127
    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->priority_:I

    .line 4128
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->googleSearchRequestProtoData_:Lcom/google/protobuf/ByteString;

    .line 4129
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->serverHttpUrl_:Ljava/lang/Object;

    .line 4130
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->serverProtoUrl_:Ljava/lang/Object;

    .line 4131
    iput-boolean v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->highConfidence_:Z

    .line 4132
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAction_:Ljava/util/List;

    .line 4133
    iput-boolean v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAlways_:Z

    .line 4134
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .registers 1

    .prologue
    .line 4286
    #calls: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->access$4400()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 4289
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getData()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 3992
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3801
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;
    .registers 2

    .prologue
    .line 3817
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    return-object v0
.end method

.method public getGoogleSearchRequestProtoData()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 4022
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->googleSearchRequestProtoData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getHighConfidence()Z
    .registers 2

    .prologue
    .line 4098
    iget-boolean v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->highConfidence_:Z

    return v0
.end method

.method public getPriority()I
    .registers 2

    .prologue
    .line 4012
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->priority_:I

    return v0
.end method

.method public getResponseContentEncoding()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    .registers 2

    .prologue
    .line 4002
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 4178
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->memoizedSerializedSize:I

    .line 4179
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_a

    move v3, v2

    .line 4224
    .end local v2           #size:I
    .local v3, size:I
    :goto_9
    return v3

    .line 4181
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_a
    const/4 v2, 0x0

    .line 4182
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_18

    .line 4183
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->data_:Lcom/google/protobuf/ByteString;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 4186
    :cond_18
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_29

    .line 4187
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    invoke-virtual {v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->getNumber()I

    move-result v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 4190
    :cond_29
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_37

    .line 4191
    const/4 v4, 0x3

    iget v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->priority_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 4194
    :cond_37
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_46

    .line 4195
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->googleSearchRequestProtoData_:Lcom/google/protobuf/ByteString;

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 4198
    :cond_46
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_58

    .line 4199
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getServerHttpUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 4202
    :cond_58
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_6a

    .line 4203
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getServerProtoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 4206
    :cond_6a
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_7a

    .line 4207
    const/4 v4, 0x7

    iget-boolean v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->highConfidence_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 4211
    :cond_7a
    const/4 v0, 0x0

    .line 4212
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7c
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_98

    .line 4213
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->getNumber()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 4212
    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    .line 4216
    :cond_98
    add-int/2addr v2, v0

    .line 4217
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 4219
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_b3

    .line 4220
    const/16 v4, 0x9

    iget-boolean v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAlways_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 4223
    :cond_b3
    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->memoizedSerializedSize:I

    move v3, v2

    .line 4224
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_9
.end method

.method public getServerHttpUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4047
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->serverHttpUrl_:Ljava/lang/Object;

    .line 4048
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4049
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4051
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->serverHttpUrl_:Ljava/lang/Object;

    .line 4054
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

.method public getServerProtoUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4080
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->serverProtoUrl_:Ljava/lang/Object;

    .line 4081
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4082
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4084
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->serverProtoUrl_:Ljava/lang/Object;

    .line 4087
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

.method public getSkipWebsearchAlways()Z
    .registers 2

    .prologue
    .line 4121
    iget-boolean v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAlways_:Z

    return v0
.end method

.method public hasData()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3989
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasGoogleSearchRequestProtoData()Z
    .registers 3

    .prologue
    .line 4019
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

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

.method public hasHighConfidence()Z
    .registers 3

    .prologue
    .line 4095
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPriority()Z
    .registers 3

    .prologue
    .line 4009
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

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

.method public hasResponseContentEncoding()Z
    .registers 3

    .prologue
    .line 3999
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

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

.method public hasServerHttpUrl()Z
    .registers 3

    .prologue
    .line 4029
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasServerProtoUrl()Z
    .registers 3

    .prologue
    .line 4062
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSkipWebsearchAlways()Z
    .registers 3

    .prologue
    .line 4118
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

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

    .line 4137
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->memoizedIsInitialized:B

    .line 4138
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 4141
    :goto_8
    return v1

    .line 4138
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 4140
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3801
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .registers 2

    .prologue
    .line 4287
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3801
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .registers 2

    .prologue
    .line 4291
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

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
    .line 4230
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 4146
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getSerializedSize()I

    .line 4147
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 4148
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->data_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4150
    :cond_13
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_22

    .line 4151
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->getNumber()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4153
    :cond_22
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2e

    .line 4154
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->priority_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4156
    :cond_2e
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_39

    .line 4157
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->googleSearchRequestProtoData_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4159
    :cond_39
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_49

    .line 4160
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getServerHttpUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4162
    :cond_49
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_59

    .line 4163
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getServerProtoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4165
    :cond_59
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_67

    .line 4166
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->highConfidence_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4168
    :cond_67
    const/4 v0, 0x0

    .local v0, i:I
    :goto_68
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_82

    .line 4169
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->getNumber()I

    move-result v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4168
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    .line 4171
    :cond_82
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_91

    .line 4172
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAlways_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4174
    :cond_91
    return-void
.end method
