.class public final Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AnnotationResultProtos.java"

# interfaces
.implements Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextInformation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;,
        Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;,
        Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$WordOrBuilder;
    }
.end annotation


# static fields
.field public static final TRANSLATED_TITLE_FIELD_NUMBER:I = 0x1

.field public static final WORDS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private translatedTitle_:Ljava/lang/Object;

.field private words_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2116
    new-instance v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    .line 2117
    sget-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    invoke-direct {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->initFields()V

    .line 2118
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1088
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1733
    iput-byte v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->memoizedIsInitialized:B

    .line 1759
    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->memoizedSerializedSize:I

    .line 1089
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;Lcom/google/goggles/AnnotationResultProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1083
    invoke-direct {p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;-><init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1090
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1733
    iput-byte v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->memoizedIsInitialized:B

    .line 1759
    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->memoizedSerializedSize:I

    .line 1090
    return-void
.end method

.method static synthetic access$2302(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->translatedTitle_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->words_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->words_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1083
    iput p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    .registers 1

    .prologue
    .line 1094
    sget-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    return-object v0
.end method

.method private getTranslatedTitleBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->translatedTitle_:Ljava/lang/Object;

    .line 1698
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1699
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1701
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->translatedTitle_:Ljava/lang/Object;

    .line 1704
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1730
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->translatedTitle_:Ljava/lang/Object;

    .line 1731
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->words_:Ljava/util/List;

    .line 1732
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;
    .registers 1

    .prologue
    .line 1851
    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->access$2100()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1854
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1820
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    .line 1821
    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1822
    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->access$2000(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    .line 1824
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1831
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    .line 1832
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1833
    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->access$2000(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    .line 1835
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1787
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->access$2000(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1793
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->access$2000(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1841
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->access$2000(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1847
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->access$2000(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1809
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->access$2000(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1815
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->access$2000(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1798
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->access$2000(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1804
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->access$2000(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    .registers 2

    .prologue
    .line 1098
    sget-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1083
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1761
    iget v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->memoizedSerializedSize:I

    .line 1762
    const/4 v0, -0x1

    if-eq v2, v0, :cond_8

    .line 1774
    :goto_7
    return v2

    .line 1765
    :cond_8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_35

    .line 1766
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->getTranslatedTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v1

    :goto_17
    move v2, v0

    .line 1769
    :goto_18
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->words_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_32

    .line 1770
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->words_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    .line 1769
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_18

    .line 1773
    :cond_32
    iput v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->memoizedSerializedSize:I

    goto :goto_7

    :cond_35
    move v0, v1

    goto :goto_17
.end method

.method public getTranslatedTitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->translatedTitle_:Ljava/lang/Object;

    .line 1684
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1685
    check-cast v0, Ljava/lang/String;

    .line 1693
    :goto_8
    return-object v0

    .line 1687
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1689
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1690
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1691
    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->translatedTitle_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1693
    goto :goto_8
.end method

.method public getWords(I)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    .registers 3
    .parameter

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->words_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    return-object v0
.end method

.method public getWordsCount()I
    .registers 2

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->words_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWordsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->words_:Ljava/util/List;

    return-object v0
.end method

.method public getWordsOrBuilder(I)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$WordOrBuilder;
    .registers 3
    .parameter

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->words_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$WordOrBuilder;

    return-object v0
.end method

.method public getWordsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$WordOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->words_:Ljava/util/List;

    return-object v0
.end method

.method public hasTranslatedTitle()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1680
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->bitField0_:I

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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1735
    iget-byte v2, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->memoizedIsInitialized:B

    .line 1736
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 1745
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 1736
    goto :goto_9

    :cond_c
    move v2, v1

    .line 1738
    :goto_d
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->getWordsCount()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 1739
    invoke-virtual {p0, v2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->getWords(I)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_21

    .line 1740
    iput-byte v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->memoizedIsInitialized:B

    move v0, v1

    .line 1741
    goto :goto_9

    .line 1738
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1744
    :cond_24
    iput-byte v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;
    .registers 2

    .prologue
    .line 1852
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1083
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->newBuilderForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;
    .registers 2

    .prologue
    .line 1856
    invoke-static {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->newBuilder(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1083
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->toBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

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
    .line 1781
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
    const/4 v1, 0x1

    .line 1750
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->getSerializedSize()I

    .line 1751
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 1752
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->getTranslatedTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1754
    :cond_11
    const/4 v0, 0x0

    move v1, v0

    :goto_13
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->words_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    .line 1755
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->words_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1754
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 1757
    :cond_2b
    return-void
.end method
