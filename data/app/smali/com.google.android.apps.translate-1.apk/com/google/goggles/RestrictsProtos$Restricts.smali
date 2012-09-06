.class public final Lcom/google/goggles/RestrictsProtos$Restricts;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RestrictsProtos.java"

# interfaces
.implements Lcom/google/goggles/RestrictsProtos$RestrictsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/RestrictsProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Restricts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/RestrictsProtos$Restricts$Builder;,
        Lcom/google/goggles/RestrictsProtos$Restricts$Gender;
    }
.end annotation


# static fields
.field public static final BRANDS_FIELD_NUMBER:I = 0x2

.field public static final CATEGORIES_FIELD_NUMBER:I = 0x3

.field public static final COLORS_FIELD_NUMBER:I = 0x5

.field public static final GENDERS_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/goggles/RestrictsProtos$Restricts;

.field private static final serialVersionUID:J


# instance fields
.field private brands_:Lcom/google/protobuf/LazyStringList;

.field private categories_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/RestrictsProtos$Category;",
            ">;"
        }
    .end annotation
.end field

.field private colors_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/RestrictsProtos$ColorEnum$Color;",
            ">;"
        }
    .end annotation
.end field

.field private genders_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/RestrictsProtos$Restricts$Gender;",
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
    .line 772
    new-instance v0, Lcom/google/goggles/RestrictsProtos$Restricts;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/RestrictsProtos$Restricts;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/RestrictsProtos$Restricts;->defaultInstance:Lcom/google/goggles/RestrictsProtos$Restricts;

    .line 773
    sget-object v0, Lcom/google/goggles/RestrictsProtos$Restricts;->defaultInstance:Lcom/google/goggles/RestrictsProtos$Restricts;

    invoke-direct {v0}, Lcom/google/goggles/RestrictsProtos$Restricts;->initFields()V

    .line 774
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/RestrictsProtos$Restricts$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 40
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 167
    iput-byte v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->memoizedIsInitialized:B

    .line 193
    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->memoizedSerializedSize:I

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/RestrictsProtos$Restricts$Builder;Lcom/google/goggles/RestrictsProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/goggles/RestrictsProtos$Restricts;-><init>(Lcom/google/goggles/RestrictsProtos$Restricts$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 167
    iput-byte v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->memoizedIsInitialized:B

    .line 193
    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->memoizedSerializedSize:I

    .line 42
    return-void
.end method

.method static synthetic access$300(Lcom/google/goggles/RestrictsProtos$Restricts;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->categories_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/goggles/RestrictsProtos$Restricts;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->categories_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->brands_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/goggles/RestrictsProtos$Restricts;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->brands_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/goggles/RestrictsProtos$Restricts;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->genders_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/goggles/RestrictsProtos$Restricts;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->genders_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/goggles/RestrictsProtos$Restricts;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->colors_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/goggles/RestrictsProtos$Restricts;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->colors_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/goggles/RestrictsProtos$Restricts;->defaultInstance:Lcom/google/goggles/RestrictsProtos$Restricts;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 162
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->categories_:Ljava/util/List;

    .line 163
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->brands_:Lcom/google/protobuf/LazyStringList;

    .line 164
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->genders_:Ljava/util/List;

    .line 165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->colors_:Ljava/util/List;

    .line 166
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 1

    .prologue
    .line 308
    #calls: Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->create()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->access$100()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 2
    .parameter

    .prologue
    .line 311
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->newBuilder()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->mergeFrom(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->newBuilder()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    .line 278
    invoke-virtual {v0, p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 279
    #calls: Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$Restricts;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->access$000(Lcom/google/goggles/RestrictsProtos$Restricts$Builder;)Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    .line 281
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->newBuilder()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    .line 289
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 290
    #calls: Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$Restricts;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->access$000(Lcom/google/goggles/RestrictsProtos$Restricts$Builder;)Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    .line 292
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->newBuilder()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    #calls: Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$Restricts;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->access$000(Lcom/google/goggles/RestrictsProtos$Restricts$Builder;)Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->newBuilder()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    #calls: Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$Restricts;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->access$000(Lcom/google/goggles/RestrictsProtos$Restricts$Builder;)Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->newBuilder()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    #calls: Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$Restricts;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->access$000(Lcom/google/goggles/RestrictsProtos$Restricts$Builder;)Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->newBuilder()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$Restricts;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->access$000(Lcom/google/goggles/RestrictsProtos$Restricts$Builder;)Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->newBuilder()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    #calls: Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$Restricts;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->access$000(Lcom/google/goggles/RestrictsProtos$Restricts$Builder;)Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->newBuilder()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    #calls: Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$Restricts;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->access$000(Lcom/google/goggles/RestrictsProtos$Restricts$Builder;)Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->newBuilder()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    #calls: Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$Restricts;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->access$000(Lcom/google/goggles/RestrictsProtos$Restricts$Builder;)Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->newBuilder()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    #calls: Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$Restricts;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Builder;->access$000(Lcom/google/goggles/RestrictsProtos$Restricts$Builder;)Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBrands(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->brands_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBrandsCount()I
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->brands_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getBrandsList()Ljava/util/List;
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
    .line 126
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->brands_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getCategories(I)Lcom/google/goggles/RestrictsProtos$Category;
    .registers 3
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Category;

    return-object v0
.end method

.method public getCategoriesCount()I
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->categories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCategoriesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/RestrictsProtos$Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->categories_:Ljava/util/List;

    return-object v0
.end method

.method public getCategoriesOrBuilder(I)Lcom/google/goggles/RestrictsProtos$CategoryOrBuilder;
    .registers 3
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$CategoryOrBuilder;

    return-object v0
.end method

.method public getCategoriesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/RestrictsProtos$CategoryOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->categories_:Ljava/util/List;

    return-object v0
.end method

.method public getColors(I)Lcom/google/goggles/RestrictsProtos$ColorEnum$Color;
    .registers 3
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->colors_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$ColorEnum$Color;

    return-object v0
.end method

.method public getColorsCount()I
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->colors_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getColorsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/RestrictsProtos$ColorEnum$Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->colors_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/RestrictsProtos$Restricts;
    .registers 2

    .prologue
    .line 50
    sget-object v0, Lcom/google/goggles/RestrictsProtos$Restricts;->defaultInstance:Lcom/google/goggles/RestrictsProtos$Restricts;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Restricts;->getDefaultInstanceForType()Lcom/google/goggles/RestrictsProtos$Restricts;

    move-result-object v0

    return-object v0
.end method

.method public getGenders(I)Lcom/google/goggles/RestrictsProtos$Restricts$Gender;
    .registers 3
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->genders_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    return-object v0
.end method

.method public getGendersCount()I
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->genders_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGendersList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/RestrictsProtos$Restricts$Gender;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->genders_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 195
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->memoizedSerializedSize:I

    .line 196
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    .line 231
    :goto_6
    return v0

    :cond_7
    move v0, v1

    move v2, v1

    .line 201
    :goto_9
    iget-object v3, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->brands_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1f

    .line 202
    iget-object v3, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->brands_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v2, v3

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 205
    :cond_1f
    add-int v0, v1, v2

    .line 206
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Restricts;->getBrandsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    move v2, v1

    move v3, v0

    .line 208
    :goto_2e
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->categories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_48

    .line 209
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->categories_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 208
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2e

    :cond_48
    move v2, v1

    move v4, v1

    .line 214
    :goto_4a
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->genders_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_67

    .line 215
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->genders_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    invoke-virtual {v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Gender;->getNumber()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v0

    add-int/2addr v4, v0

    .line 214
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4a

    .line 218
    :cond_67
    add-int v0, v3, v4

    .line 219
    iget-object v2, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->genders_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int v3, v0, v2

    move v2, v1

    .line 223
    :goto_74
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->colors_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_91

    .line 224
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->colors_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$ColorEnum$Color;

    invoke-virtual {v0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Color;->getNumber()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v0

    add-int/2addr v0, v2

    .line 223
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_74

    .line 227
    :cond_91
    add-int v0, v3, v2

    .line 228
    iget-object v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->colors_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 230
    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->memoizedSerializedSize:I

    goto/16 :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 169
    iget-byte v1, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->memoizedIsInitialized:B

    .line 170
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 173
    :goto_8
    return v0

    .line 170
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 172
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 2

    .prologue
    .line 309
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Restricts;->newBuilder()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Restricts;->newBuilderForType()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;
    .registers 2

    .prologue
    .line 313
    invoke-static {p0}, Lcom/google/goggles/RestrictsProtos$Restricts;->newBuilder(Lcom/google/goggles/RestrictsProtos$Restricts;)Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Restricts;->toBuilder()Lcom/google/goggles/RestrictsProtos$Restricts$Builder;

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
    .line 238
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
    const/4 v1, 0x0

    .line 178
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Restricts;->getSerializedSize()I

    move v0, v1

    .line 179
    :goto_5
    iget-object v2, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->brands_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 180
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->brands_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1a
    move v2, v1

    .line 182
    :goto_1b
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->categories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_33

    .line 183
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->categories_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 182
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b

    :cond_33
    move v2, v1

    .line 185
    :goto_34
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->genders_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_50

    .line 186
    const/4 v3, 0x4

    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->genders_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Restricts$Gender;

    invoke-virtual {v0}, Lcom/google/goggles/RestrictsProtos$Restricts$Gender;->getNumber()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 185
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_34

    .line 188
    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->colors_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6b

    .line 189
    const/4 v2, 0x5

    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Restricts;->colors_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$ColorEnum$Color;

    invoke-virtual {v0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Color;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 191
    :cond_6b
    return-void
.end method
