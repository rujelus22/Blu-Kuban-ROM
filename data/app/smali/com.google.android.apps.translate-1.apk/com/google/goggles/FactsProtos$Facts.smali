.class public final Lcom/google/goggles/FactsProtos$Facts;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FactsProtos.java"

# interfaces
.implements Lcom/google/goggles/FactsProtos$FactsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/FactsProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Facts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/FactsProtos$Facts$Builder;
    }
.end annotation


# static fields
.field public static final EXPERIMENTAL_FIELD_NUMBER:I = 0x3

.field public static final PRIMARY_FIELD_NUMBER:I = 0x1

.field public static final SECONDARY_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/goggles/FactsProtos$Facts;

.field private static final serialVersionUID:J


# instance fields
.field private experimental_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/FactsProtos$Fact;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private primary_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/FactsProtos$Fact;",
            ">;"
        }
    .end annotation
.end field

.field private secondary_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/FactsProtos$Fact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1301
    new-instance v0, Lcom/google/goggles/FactsProtos$Facts;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/FactsProtos$Facts;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/FactsProtos$Facts;->defaultInstance:Lcom/google/goggles/FactsProtos$Facts;

    .line 1302
    sget-object v0, Lcom/google/goggles/FactsProtos$Facts;->defaultInstance:Lcom/google/goggles/FactsProtos$Facts;

    invoke-direct {v0}, Lcom/google/goggles/FactsProtos$Facts;->initFields()V

    .line 1303
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/FactsProtos$Facts$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 670
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 751
    iput-byte v0, p0, Lcom/google/goggles/FactsProtos$Facts;->memoizedIsInitialized:B

    .line 774
    iput v0, p0, Lcom/google/goggles/FactsProtos$Facts;->memoizedSerializedSize:I

    .line 671
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/FactsProtos$Facts$Builder;Lcom/google/goggles/FactsProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 665
    invoke-direct {p0, p1}, Lcom/google/goggles/FactsProtos$Facts;-><init>(Lcom/google/goggles/FactsProtos$Facts$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 672
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 751
    iput-byte v0, p0, Lcom/google/goggles/FactsProtos$Facts;->memoizedIsInitialized:B

    .line 774
    iput v0, p0, Lcom/google/goggles/FactsProtos$Facts;->memoizedSerializedSize:I

    .line 672
    return-void
.end method

.method static synthetic access$1100(Lcom/google/goggles/FactsProtos$Facts;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->primary_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/goggles/FactsProtos$Facts;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 665
    iput-object p1, p0, Lcom/google/goggles/FactsProtos$Facts;->primary_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/goggles/FactsProtos$Facts;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->secondary_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/goggles/FactsProtos$Facts;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 665
    iput-object p1, p0, Lcom/google/goggles/FactsProtos$Facts;->secondary_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/goggles/FactsProtos$Facts;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->experimental_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/goggles/FactsProtos$Facts;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 665
    iput-object p1, p0, Lcom/google/goggles/FactsProtos$Facts;->experimental_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/FactsProtos$Facts;
    .registers 1

    .prologue
    .line 676
    sget-object v0, Lcom/google/goggles/FactsProtos$Facts;->defaultInstance:Lcom/google/goggles/FactsProtos$Facts;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 747
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->primary_:Ljava/util/List;

    .line 748
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->secondary_:Ljava/util/List;

    .line 749
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->experimental_:Ljava/util/List;

    .line 750
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 1

    .prologue
    .line 870
    #calls: Lcom/google/goggles/FactsProtos$Facts$Builder;->create()Lcom/google/goggles/FactsProtos$Facts$Builder;
    invoke-static {}, Lcom/google/goggles/FactsProtos$Facts$Builder;->access$900()Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/FactsProtos$Facts;)Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 2
    .parameter

    .prologue
    .line 873
    invoke-static {}, Lcom/google/goggles/FactsProtos$Facts;->newBuilder()Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->mergeFrom(Lcom/google/goggles/FactsProtos$Facts;)Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/FactsProtos$Facts;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 839
    invoke-static {}, Lcom/google/goggles/FactsProtos$Facts;->newBuilder()Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    .line 840
    invoke-virtual {v0, p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 841
    #calls: Lcom/google/goggles/FactsProtos$Facts$Builder;->buildParsed()Lcom/google/goggles/FactsProtos$Facts;
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->access$800(Lcom/google/goggles/FactsProtos$Facts$Builder;)Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    .line 843
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FactsProtos$Facts;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 850
    invoke-static {}, Lcom/google/goggles/FactsProtos$Facts;->newBuilder()Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    .line 851
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/FactsProtos$Facts$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 852
    #calls: Lcom/google/goggles/FactsProtos$Facts$Builder;->buildParsed()Lcom/google/goggles/FactsProtos$Facts;
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->access$800(Lcom/google/goggles/FactsProtos$Facts$Builder;)Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    .line 854
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/FactsProtos$Facts;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 806
    invoke-static {}, Lcom/google/goggles/FactsProtos$Facts;->newBuilder()Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$Facts$Builder;

    #calls: Lcom/google/goggles/FactsProtos$Facts$Builder;->buildParsed()Lcom/google/goggles/FactsProtos$Facts;
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->access$800(Lcom/google/goggles/FactsProtos$Facts$Builder;)Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FactsProtos$Facts;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 812
    invoke-static {}, Lcom/google/goggles/FactsProtos$Facts;->newBuilder()Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/FactsProtos$Facts$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$Facts$Builder;

    #calls: Lcom/google/goggles/FactsProtos$Facts$Builder;->buildParsed()Lcom/google/goggles/FactsProtos$Facts;
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->access$800(Lcom/google/goggles/FactsProtos$Facts$Builder;)Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/FactsProtos$Facts;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 860
    invoke-static {}, Lcom/google/goggles/FactsProtos$Facts;->newBuilder()Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$Facts$Builder;

    #calls: Lcom/google/goggles/FactsProtos$Facts$Builder;->buildParsed()Lcom/google/goggles/FactsProtos$Facts;
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->access$800(Lcom/google/goggles/FactsProtos$Facts$Builder;)Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FactsProtos$Facts;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 866
    invoke-static {}, Lcom/google/goggles/FactsProtos$Facts;->newBuilder()Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/FactsProtos$Facts$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/FactsProtos$Facts$Builder;->buildParsed()Lcom/google/goggles/FactsProtos$Facts;
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->access$800(Lcom/google/goggles/FactsProtos$Facts$Builder;)Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/FactsProtos$Facts;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 828
    invoke-static {}, Lcom/google/goggles/FactsProtos$Facts;->newBuilder()Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$Facts$Builder;

    #calls: Lcom/google/goggles/FactsProtos$Facts$Builder;->buildParsed()Lcom/google/goggles/FactsProtos$Facts;
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->access$800(Lcom/google/goggles/FactsProtos$Facts$Builder;)Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FactsProtos$Facts;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 834
    invoke-static {}, Lcom/google/goggles/FactsProtos$Facts;->newBuilder()Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/FactsProtos$Facts$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$Facts$Builder;

    #calls: Lcom/google/goggles/FactsProtos$Facts$Builder;->buildParsed()Lcom/google/goggles/FactsProtos$Facts;
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->access$800(Lcom/google/goggles/FactsProtos$Facts$Builder;)Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/FactsProtos$Facts;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 817
    invoke-static {}, Lcom/google/goggles/FactsProtos$Facts;->newBuilder()Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$Facts$Builder;

    #calls: Lcom/google/goggles/FactsProtos$Facts$Builder;->buildParsed()Lcom/google/goggles/FactsProtos$Facts;
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->access$800(Lcom/google/goggles/FactsProtos$Facts$Builder;)Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FactsProtos$Facts;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 823
    invoke-static {}, Lcom/google/goggles/FactsProtos$Facts;->newBuilder()Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/FactsProtos$Facts$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$Facts$Builder;

    #calls: Lcom/google/goggles/FactsProtos$Facts$Builder;->buildParsed()Lcom/google/goggles/FactsProtos$Facts;
    invoke-static {v0}, Lcom/google/goggles/FactsProtos$Facts$Builder;->access$800(Lcom/google/goggles/FactsProtos$Facts$Builder;)Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/FactsProtos$Facts;
    .registers 2

    .prologue
    .line 680
    sget-object v0, Lcom/google/goggles/FactsProtos$Facts;->defaultInstance:Lcom/google/goggles/FactsProtos$Facts;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Facts;->getDefaultInstanceForType()Lcom/google/goggles/FactsProtos$Facts;

    move-result-object v0

    return-object v0
.end method

.method public getExperimental(I)Lcom/google/goggles/FactsProtos$Fact;
    .registers 3
    .parameter

    .prologue
    .line 739
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->experimental_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$Fact;

    return-object v0
.end method

.method public getExperimentalCount()I
    .registers 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->experimental_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExperimentalList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/FactsProtos$Fact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 729
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->experimental_:Ljava/util/List;

    return-object v0
.end method

.method public getExperimentalOrBuilder(I)Lcom/google/goggles/FactsProtos$FactOrBuilder;
    .registers 3
    .parameter

    .prologue
    .line 743
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->experimental_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$FactOrBuilder;

    return-object v0
.end method

.method public getExperimentalOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/FactsProtos$FactOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->experimental_:Ljava/util/List;

    return-object v0
.end method

.method public getPrimary(I)Lcom/google/goggles/FactsProtos$Fact;
    .registers 3
    .parameter

    .prologue
    .line 697
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->primary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$Fact;

    return-object v0
.end method

.method public getPrimaryCount()I
    .registers 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->primary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPrimaryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/FactsProtos$Fact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 687
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->primary_:Ljava/util/List;

    return-object v0
.end method

.method public getPrimaryOrBuilder(I)Lcom/google/goggles/FactsProtos$FactOrBuilder;
    .registers 3
    .parameter

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->primary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$FactOrBuilder;

    return-object v0
.end method

.method public getPrimaryOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/FactsProtos$FactOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 691
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->primary_:Ljava/util/List;

    return-object v0
.end method

.method public getSecondary(I)Lcom/google/goggles/FactsProtos$Fact;
    .registers 3
    .parameter

    .prologue
    .line 718
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->secondary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$Fact;

    return-object v0
.end method

.method public getSecondaryCount()I
    .registers 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->secondary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSecondaryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/FactsProtos$Fact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 708
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->secondary_:Ljava/util/List;

    return-object v0
.end method

.method public getSecondaryOrBuilder(I)Lcom/google/goggles/FactsProtos$FactOrBuilder;
    .registers 3
    .parameter

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->secondary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$FactOrBuilder;

    return-object v0
.end method

.method public getSecondaryOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/FactsProtos$FactOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->secondary_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 776
    iget v3, p0, Lcom/google/goggles/FactsProtos$Facts;->memoizedSerializedSize:I

    .line 777
    const/4 v0, -0x1

    if-eq v3, v0, :cond_7

    .line 793
    :goto_6
    return v3

    :cond_7
    move v1, v2

    move v3, v2

    .line 780
    :goto_9
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->primary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 781
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->primary_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 780
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_23
    move v1, v2

    .line 784
    :goto_24
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->secondary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3e

    .line 785
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->secondary_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 784
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    .line 788
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->experimental_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_57

    .line 789
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->experimental_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 788
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 792
    :cond_57
    iput v3, p0, Lcom/google/goggles/FactsProtos$Facts;->memoizedSerializedSize:I

    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 753
    iget-byte v1, p0, Lcom/google/goggles/FactsProtos$Facts;->memoizedIsInitialized:B

    .line 754
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 757
    :goto_8
    return v0

    .line 754
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 756
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/FactsProtos$Facts;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 2

    .prologue
    .line 871
    invoke-static {}, Lcom/google/goggles/FactsProtos$Facts;->newBuilder()Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Facts;->newBuilderForType()Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/FactsProtos$Facts$Builder;
    .registers 2

    .prologue
    .line 875
    invoke-static {p0}, Lcom/google/goggles/FactsProtos$Facts;->newBuilder(Lcom/google/goggles/FactsProtos$Facts;)Lcom/google/goggles/FactsProtos$Facts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Facts;->toBuilder()Lcom/google/goggles/FactsProtos$Facts$Builder;

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
    .line 800
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 762
    invoke-virtual {p0}, Lcom/google/goggles/FactsProtos$Facts;->getSerializedSize()I

    move v1, v2

    .line 763
    :goto_5
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->primary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 764
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->primary_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 763
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_1d
    move v1, v2

    .line 766
    :goto_1e
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->secondary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_36

    .line 767
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->secondary_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 766
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    .line 769
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->experimental_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4d

    .line 770
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/google/goggles/FactsProtos$Facts;->experimental_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 769
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 772
    :cond_4d
    return-void
.end method
