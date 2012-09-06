.class public final Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ProductInformationProtos.java"

# interfaces
.implements Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ProductInformationProtos$ProductInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfferInformation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final MERCHANT_FIELD_NUMBER:I = 0x3

.field public static final PRICE_FIELD_NUMBER:I = 0x5

.field public static final URL_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private merchant_:Ljava/lang/Object;

.field private price_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1226
    new-instance v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->defaultInstance:Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    .line 1227
    sget-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->defaultInstance:Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    invoke-direct {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->initFields()V

    .line 1228
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 666
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 792
    iput-byte v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->memoizedIsInitialized:B

    .line 818
    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->memoizedSerializedSize:I

    .line 667
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;Lcom/google/goggles/ProductInformationProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 661
    invoke-direct {p0, p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;-><init>(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 668
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 792
    iput-byte v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->memoizedIsInitialized:B

    .line 818
    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->memoizedSerializedSize:I

    .line 668
    return-void
.end method

.method static synthetic access$1102(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->merchant_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->price_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 661
    iput p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    .registers 1

    .prologue
    .line 672
    sget-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->defaultInstance:Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->id_:Ljava/lang/Object;

    .line 702
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 703
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 705
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->id_:Ljava/lang/Object;

    .line 708
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getMerchantBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 765
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->merchant_:Ljava/lang/Object;

    .line 766
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 767
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 769
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->merchant_:Ljava/lang/Object;

    .line 772
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->url_:Ljava/lang/Object;

    .line 734
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 735
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 737
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->url_:Ljava/lang/Object;

    .line 740
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 787
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->id_:Ljava/lang/Object;

    .line 788
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->url_:Ljava/lang/Object;

    .line 789
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->merchant_:Ljava/lang/Object;

    .line 790
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->price_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    .line 791
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;
    .registers 1

    .prologue
    .line 918
    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->create()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->access$900()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;
    .registers 2
    .parameter

    .prologue
    .line 921
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->mergeFrom(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 887
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    .line 888
    invoke-virtual {v0, p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 889
    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->access$800(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    .line 891
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 898
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    .line 899
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 900
    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->access$800(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    .line 902
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 854
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->access$800(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 860
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->access$800(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 908
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->access$800(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 914
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->access$800(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 876
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->access$800(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 882
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->access$800(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 865
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->access$800(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 871
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    #calls: Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->access$800(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    .registers 2

    .prologue
    .line 676
    sget-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->defaultInstance:Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getDefaultInstanceForType()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 687
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->id_:Ljava/lang/Object;

    .line 688
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 689
    check-cast v0, Ljava/lang/String;

    .line 697
    :goto_8
    return-object v0

    .line 691
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 693
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 694
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 695
    iput-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->id_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 697
    goto :goto_8
.end method

.method public getMerchant()Ljava/lang/String;
    .registers 3

    .prologue
    .line 751
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->merchant_:Ljava/lang/Object;

    .line 752
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 753
    check-cast v0, Ljava/lang/String;

    .line 761
    :goto_8
    return-object v0

    .line 755
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 757
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 758
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 759
    iput-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->merchant_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 761
    goto :goto_8
.end method

.method public getPrice()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    .registers 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->price_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 820
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->memoizedSerializedSize:I

    .line 821
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 841
    :goto_7
    return v0

    .line 823
    :cond_8
    const/4 v0, 0x0

    .line 824
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_18

    .line 825
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 828
    :cond_18
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_27

    .line 829
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 832
    :cond_27
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_38

    .line 833
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getMerchantBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 836
    :cond_38
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_48

    .line 837
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->price_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 840
    :cond_48
    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->memoizedSerializedSize:I

    goto :goto_7
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 719
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->url_:Ljava/lang/Object;

    .line 720
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 721
    check-cast v0, Ljava/lang/String;

    .line 729
    :goto_8
    return-object v0

    .line 723
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 725
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 726
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 727
    iput-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->url_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 729
    goto :goto_8
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 684
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMerchant()Z
    .registers 3

    .prologue
    .line 748
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->bitField0_:I

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

.method public hasPrice()Z
    .registers 3

    .prologue
    .line 780
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->bitField0_:I

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

.method public hasUrl()Z
    .registers 3

    .prologue
    .line 716
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 794
    iget-byte v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->memoizedIsInitialized:B

    .line 795
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 798
    :goto_8
    return v0

    .line 795
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 797
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;
    .registers 2

    .prologue
    .line 919
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->newBuilderForType()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;
    .registers 2

    .prologue
    .line 923
    invoke-static {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->newBuilder(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->toBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

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
    .line 848
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 803
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getSerializedSize()I

    .line 804
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 805
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 807
    :cond_12
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 808
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 810
    :cond_1f
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 811
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getMerchantBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 813
    :cond_2e
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3c

    .line 814
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->price_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 816
    :cond_3c
    return-void
.end method
