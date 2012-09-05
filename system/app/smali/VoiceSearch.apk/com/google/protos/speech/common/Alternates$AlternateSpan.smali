.class public final Lcom/google/protos/speech/common/Alternates$AlternateSpan;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protos/speech/common/Alternates$AlternateSpanOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlternateSpan"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/common/Alternates$AlternateSpan;


# instance fields
.field private alternates_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$Alternate;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private confidence_:F

.field private length_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private start_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1097
    new-instance v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan$1;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    .line 1588
    new-instance v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->defaultInstance:Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    .line 1589
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->defaultInstance:Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->initFields()V

    .line 1590
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

    const/4 v6, 0x4

    .line 1042
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1170
    iput-byte v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    .line 1210
    iput v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedSerializedSize:I

    .line 1043
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->initFields()V

    .line 1044
    const/4 v2, 0x0

    .line 1046
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 1047
    .local v0, done:Z
    :cond_e
    :goto_e
    if-nez v0, :cond_87

    .line 1048
    :try_start_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 1049
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_98

    .line 1054
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1056
    const/4 v0, 0x1

    goto :goto_e

    .line 1051
    :sswitch_1f
    const/4 v0, 0x1

    .line 1052
    goto :goto_e

    .line 1061
    :sswitch_21
    iget v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    .line 1062
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->start_:I
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2d} :catch_52

    goto :goto_e

    .line 1085
    .end local v3           #tag:I
    :catch_2e
    move-exception v1

    .line 1086
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2f
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_34

    .line 1091
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_34
    move-exception v4

    and-int/lit8 v5, v2, 0x4

    if-ne v5, v6, :cond_41

    .line 1092
    iget-object v5, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    .line 1094
    :cond_41
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->makeExtensionsImmutable()V

    throw v4

    .line 1066
    .restart local v3       #tag:I
    :sswitch_45
    :try_start_45
    iget v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    .line 1067
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->length_:I
    :try_end_51
    .catchall {:try_start_45 .. :try_end_51} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_45 .. :try_end_51} :catch_2e
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_51} :catch_52

    goto :goto_e

    .line 1087
    .end local v3           #tag:I
    :catch_52
    move-exception v1

    .line 1088
    .local v1, e:Ljava/io/IOException;
    :try_start_53
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_61
    .catchall {:try_start_53 .. :try_end_61} :catchall_34

    .line 1071
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_61
    and-int/lit8 v4, v2, 0x4

    if-eq v4, v6, :cond_6e

    .line 1072
    :try_start_65
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    .line 1073
    or-int/lit8 v2, v2, 0x4

    .line 1075
    :cond_6e
    iget-object v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/speech/common/Alternates$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1079
    :sswitch_7a
    iget v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    .line 1080
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->confidence_:F
    :try_end_86
    .catchall {:try_start_65 .. :try_end_86} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_65 .. :try_end_86} :catch_2e
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_86} :catch_52

    goto :goto_e

    .line 1091
    .end local v3           #tag:I
    :cond_87
    and-int/lit8 v4, v2, 0x4

    if-ne v4, v6, :cond_93

    .line 1092
    iget-object v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    .line 1094
    :cond_93
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->makeExtensionsImmutable()V

    .line 1096
    return-void

    .line 1049
    nop

    :sswitch_data_98
    .sparse-switch
        0x0 -> :sswitch_1f
        0x8 -> :sswitch_21
        0x10 -> :sswitch_45
        0x1a -> :sswitch_61
        0x25 -> :sswitch_7a
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/common/Alternates$1;)V
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
    .line 1020
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1025
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1170
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    .line 1210
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedSerializedSize:I

    .line 1027
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/Alternates$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1020
    invoke-direct {p0, p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1028
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1170
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    .line 1210
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedSerializedSize:I

    .line 1028
    return-void
.end method

.method static synthetic access$1702(Lcom/google/protos/speech/common/Alternates$AlternateSpan;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1020
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->start_:I

    return p1
.end method

.method static synthetic access$1802(Lcom/google/protos/speech/common/Alternates$AlternateSpan;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1020
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->length_:I

    return p1
.end method

.method static synthetic access$1900(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/google/protos/speech/common/Alternates$AlternateSpan;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/google/protos/speech/common/Alternates$AlternateSpan;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1020
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->confidence_:F

    return p1
.end method

.method static synthetic access$2102(Lcom/google/protos/speech/common/Alternates$AlternateSpan;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1020
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .registers 1

    .prologue
    .line 1032
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->defaultInstance:Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1165
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->start_:I

    .line 1166
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->length_:I

    .line 1167
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    .line 1168
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->confidence_:F

    .line 1169
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .registers 1

    .prologue
    .line 1295
    #calls: Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->create()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->access$1500()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1298
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->newBuilder()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlternates(I)Lcom/google/protos/speech/common/Alternates$Alternate;
    .registers 3
    .parameter "index"

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/Alternates$Alternate;

    return-object v0
.end method

.method public getAlternatesCount()I
    .registers 2

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAlternatesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$Alternate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    return-object v0
.end method

.method public getConfidence()F
    .registers 2

    .prologue
    .line 1161
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->confidence_:F

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .registers 2

    .prologue
    .line 1036
    sget-object v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->defaultInstance:Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    return-object v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 1130
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->length_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1212
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedSerializedSize:I

    .line 1213
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 1233
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 1215
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 1216
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_18

    .line 1217
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->start_:I

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1220
    :cond_18
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_25

    .line 1221
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->length_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1224
    :cond_25
    const/4 v0, 0x0

    .local v0, i:I
    :goto_26
    iget-object v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3f

    .line 1225
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1224
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 1228
    :cond_3f
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_4c

    .line 1229
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->confidence_:F

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v1, v3

    .line 1232
    :cond_4c
    iput v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedSerializedSize:I

    move v2, v1

    .line 1233
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getStart()I
    .registers 2

    .prologue
    .line 1120
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->start_:I

    return v0
.end method

.method public hasConfidence()Z
    .registers 3

    .prologue
    .line 1158
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

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

.method public hasLength()Z
    .registers 3

    .prologue
    .line 1127
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

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

.method public hasStart()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1117
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1172
    iget-byte v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    .line 1173
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_d

    if-ne v1, v2, :cond_b

    :goto_9
    move v3, v2

    .line 1190
    :goto_a
    return v3

    :cond_b
    move v2, v3

    .line 1173
    goto :goto_9

    .line 1175
    :cond_d
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->hasStart()Z

    move-result v4

    if-nez v4, :cond_16

    .line 1176
    iput-byte v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    goto :goto_a

    .line 1179
    :cond_16
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->hasLength()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 1180
    iput-byte v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    goto :goto_a

    .line 1183
    :cond_1f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_20
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getAlternatesCount()I

    move-result v4

    if-ge v0, v4, :cond_36

    .line 1184
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getAlternates(I)Lcom/google/protos/speech/common/Alternates$Alternate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/speech/common/Alternates$Alternate;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_33

    .line 1185
    iput-byte v3, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    goto :goto_a

    .line 1183
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 1189
    :cond_36
    iput-byte v2, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->memoizedIsInitialized:B

    move v3, v2

    .line 1190
    goto :goto_a
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->newBuilderForType()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .registers 2

    .prologue
    .line 1296
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->newBuilder()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->toBuilder()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;
    .registers 2

    .prologue
    .line 1300
    invoke-static {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->newBuilder(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;

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
    .line 1239
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

    .line 1195
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getSerializedSize()I

    .line 1196
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_11

    .line 1197
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->start_:I

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1199
    :cond_11
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1c

    .line 1200
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->length_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1202
    :cond_1c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    iget-object v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 1203
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1202
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1205
    :cond_34
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3f

    .line 1206
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->confidence_:F

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1208
    :cond_3f
    return-void
.end method
