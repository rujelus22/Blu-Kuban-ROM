.class public final Lcom/google/feedreader/rpc/Storage$LabelData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Storage.java"

# interfaces
.implements Lcom/google/feedreader/rpc/Storage$LabelDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/rpc/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LabelData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/rpc/Storage$LabelData$Builder;,
        Lcom/google/feedreader/rpc/Storage$LabelData$Label;,
        Lcom/google/feedreader/rpc/Storage$LabelData$LabelOrBuilder;
    }
.end annotation


# static fields
.field public static final LABEL_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/rpc/Storage$LabelData;

.field private static final serialVersionUID:J


# instance fields
.field private label_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$LabelData$Label;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1381
    new-instance v0, Lcom/google/feedreader/rpc/Storage$LabelData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/rpc/Storage$LabelData;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/rpc/Storage$LabelData;->defaultInstance:Lcom/google/feedreader/rpc/Storage$LabelData;

    .line 1382
    sget-object v0, Lcom/google/feedreader/rpc/Storage$LabelData;->defaultInstance:Lcom/google/feedreader/rpc/Storage$LabelData;

    invoke-direct {v0}, Lcom/google/feedreader/rpc/Storage$LabelData;->initFields()V

    .line 1383
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/rpc/Storage$LabelData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 447
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1057
    iput-byte v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData;->memoizedIsInitialized:B

    .line 1080
    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData;->memoizedSerializedSize:I

    .line 448
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/rpc/Storage$LabelData$Builder;Lcom/google/feedreader/rpc/Storage$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lcom/google/feedreader/rpc/Storage$LabelData;-><init>(Lcom/google/feedreader/rpc/Storage$LabelData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 449
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1057
    iput-byte v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData;->memoizedIsInitialized:B

    .line 1080
    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData;->memoizedSerializedSize:I

    .line 449
    return-void
.end method

.method static synthetic access$1700(Lcom/google/feedreader/rpc/Storage$LabelData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData;->label_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/feedreader/rpc/Storage$LabelData;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 442
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$LabelData;->label_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/rpc/Storage$LabelData;
    .registers 1

    .prologue
    .line 453
    sget-object v0, Lcom/google/feedreader/rpc/Storage$LabelData;->defaultInstance:Lcom/google/feedreader/rpc/Storage$LabelData;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1055
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData;->label_:Ljava/util/List;

    .line 1056
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;
    .registers 1

    .prologue
    .line 1168
    #calls: Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->create()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->access$1500()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/rpc/Storage$LabelData;)Lcom/google/feedreader/rpc/Storage$LabelData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1171
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->mergeFrom(Lcom/google/feedreader/rpc/Storage$LabelData;)Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/rpc/Storage$LabelData;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1137
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    .line 1138
    .local v0, builder:Lcom/google/feedreader/rpc/Storage$LabelData$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1139
    #calls: Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData;
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->access$1400(Lcom/google/feedreader/rpc/Storage$LabelData$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData;

    move-result-object v1

    .line 1141
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$LabelData;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1148
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    .line 1149
    .local v0, builder:Lcom/google/feedreader/rpc/Storage$LabelData$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1150
    #calls: Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData;
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->access$1400(Lcom/google/feedreader/rpc/Storage$LabelData$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData;

    move-result-object v1

    .line 1152
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/rpc/Storage$LabelData;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1104
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->access$1400(Lcom/google/feedreader/rpc/Storage$LabelData$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$LabelData;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1110
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->access$1400(Lcom/google/feedreader/rpc/Storage$LabelData$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/rpc/Storage$LabelData;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1158
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->access$1400(Lcom/google/feedreader/rpc/Storage$LabelData$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$LabelData;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1164
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData;
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->access$1400(Lcom/google/feedreader/rpc/Storage$LabelData$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/rpc/Storage$LabelData;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1126
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->access$1400(Lcom/google/feedreader/rpc/Storage$LabelData$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$LabelData;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1132
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->access$1400(Lcom/google/feedreader/rpc/Storage$LabelData$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/rpc/Storage$LabelData;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1115
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->access$1400(Lcom/google/feedreader/rpc/Storage$LabelData$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$LabelData;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1121
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->access$1400(Lcom/google/feedreader/rpc/Storage$LabelData$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$LabelData;
    .registers 2

    .prologue
    .line 457
    sget-object v0, Lcom/google/feedreader/rpc/Storage$LabelData;->defaultInstance:Lcom/google/feedreader/rpc/Storage$LabelData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData;->getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$LabelData;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(I)Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    .registers 3
    .parameter "index"

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData;->label_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    return-object p0
.end method

.method public getLabelCount()I
    .registers 2

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData;->label_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLabelList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$LabelData$Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData;->label_:Ljava/util/List;

    return-object v0
.end method

.method public getLabelOrBuilder(I)Lcom/google/feedreader/rpc/Storage$LabelData$LabelOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData;->label_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$LabelData$LabelOrBuilder;

    return-object p0
.end method

.method public getLabelOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/rpc/Storage$LabelData$LabelOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData;->label_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 1082
    iget v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData;->memoizedSerializedSize:I

    .line 1083
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 1091
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 1085
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 1086
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/feedreader/rpc/Storage$LabelData;->label_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 1087
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/feedreader/rpc/Storage$LabelData;->label_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1086
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1090
    :cond_22
    iput v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData;->memoizedSerializedSize:I

    move v2, v1

    .line 1091
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1059
    iget-byte v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData;->memoizedIsInitialized:B

    .line 1060
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v3, :cond_b

    move v2, v3

    .line 1069
    :goto_a
    return v2

    :cond_b
    move v2, v4

    .line 1060
    goto :goto_a

    .line 1062
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData;->getLabelCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 1063
    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$LabelData;->getLabel(I)Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_22

    .line 1064
    iput-byte v4, p0, Lcom/google/feedreader/rpc/Storage$LabelData;->memoizedIsInitialized:B

    move v2, v4

    .line 1065
    goto :goto_a

    .line 1062
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1068
    :cond_25
    iput-byte v3, p0, Lcom/google/feedreader/rpc/Storage$LabelData;->memoizedIsInitialized:B

    move v2, v3

    .line 1069
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;
    .registers 2

    .prologue
    .line 1169
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData;->newBuilderForType()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;
    .registers 2

    .prologue
    .line 1173
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$LabelData;->newBuilder(Lcom/google/feedreader/rpc/Storage$LabelData;)Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData;->toBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

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
    .line 1098
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1074
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData;->getSerializedSize()I

    .line 1075
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData;->label_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 1076
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData;->label_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 1075
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 1078
    :cond_1d
    return-void
.end method
