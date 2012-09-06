.class public final Lcom/google/feedreader/extrpc/Client$StreamContent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$StreamContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    }
.end annotation


# static fields
.field public static final AUTHOR_FIELD_NUMBER:I = 0x3

.field public static final CONTINUATION_FIELD_NUMBER:I = 0x4

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x9

.field public static final DIRECTION_FIELD_NUMBER:I = 0xa

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final ITEMS_FIELD_NUMBER:I = 0x5

.field public static final LINKS_FIELD_NUMBER:I = 0x6

.field public static final PUBLISHED_MSEC_FIELD_NUMBER:I = 0x8

.field public static final TITLE_FIELD_NUMBER:I = 0x2

.field public static final UPDATED_MSEC_FIELD_NUMBER:I = 0x7

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamContent;

.field private static final serialVersionUID:J


# instance fields
.field private author_:Ljava/lang/Object;

.field private bitField0_:I

.field private continuation_:Ljava/lang/Object;

.field private description_:Ljava/lang/Object;

.field private direction_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private items_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Item;",
            ">;"
        }
    .end annotation
.end field

.field private links_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Link;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private publishedMsec_:J

.field private title_:Ljava/lang/Object;

.field private updatedMsec_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 7863
    new-instance v0, Lcom/google/feedreader/extrpc/Client$StreamContent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamContent;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$StreamContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamContent;

    .line 7864
    sget-object v0, Lcom/google/feedreader/extrpc/Client$StreamContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamContent;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->initFields()V

    .line 7865
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 6684
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6964
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->memoizedIsInitialized:B

    .line 7028
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->memoizedSerializedSize:I

    .line 6685
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6679
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamContent;-><init>(Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 6686
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6964
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->memoizedIsInitialized:B

    .line 7028
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->memoizedSerializedSize:I

    .line 6686
    return-void
.end method

.method static synthetic access$8502(Lcom/google/feedreader/extrpc/Client$StreamContent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6679
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8602(Lcom/google/feedreader/extrpc/Client$StreamContent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6679
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8702(Lcom/google/feedreader/extrpc/Client$StreamContent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6679
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->author_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8802(Lcom/google/feedreader/extrpc/Client$StreamContent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6679
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->continuation_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8900(Lcom/google/feedreader/extrpc/Client$StreamContent;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 6679
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->items_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8902(Lcom/google/feedreader/extrpc/Client$StreamContent;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6679
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->items_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9000(Lcom/google/feedreader/extrpc/Client$StreamContent;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 6679
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->links_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9002(Lcom/google/feedreader/extrpc/Client$StreamContent;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6679
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->links_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9102(Lcom/google/feedreader/extrpc/Client$StreamContent;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6679
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->updatedMsec_:J

    return-wide p1
.end method

.method static synthetic access$9202(Lcom/google/feedreader/extrpc/Client$StreamContent;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6679
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->publishedMsec_:J

    return-wide p1
.end method

.method static synthetic access$9302(Lcom/google/feedreader/extrpc/Client$StreamContent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6679
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9402(Lcom/google/feedreader/extrpc/Client$StreamContent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6679
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->direction_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9502(Lcom/google/feedreader/extrpc/Client$StreamContent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6679
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

    return p1
.end method

.method private getAuthorBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6783
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->author_:Ljava/lang/Object;

    .line 6784
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 6785
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6787
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->author_:Ljava/lang/Object;

    move-object v2, v0

    .line 6790
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_f
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_f
.end method

.method private getContinuationBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6815
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->continuation_:Ljava/lang/Object;

    .line 6816
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 6817
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6819
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->continuation_:Ljava/lang/Object;

    move-object v2, v0

    .line 6822
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_f
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_f
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamContent;
    .registers 1

    .prologue
    .line 6690
    sget-object v0, Lcom/google/feedreader/extrpc/Client$StreamContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamContent;

    return-object v0
.end method

.method private getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6909
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->description_:Ljava/lang/Object;

    .line 6910
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 6911
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6913
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->description_:Ljava/lang/Object;

    move-object v2, v0

    .line 6916
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_f
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_f
.end method

.method private getDirectionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6941
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->direction_:Ljava/lang/Object;

    .line 6942
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 6943
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6945
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->direction_:Ljava/lang/Object;

    move-object v2, v0

    .line 6948
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_f
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_f
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6719
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->id_:Ljava/lang/Object;

    .line 6720
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 6721
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6723
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->id_:Ljava/lang/Object;

    move-object v2, v0

    .line 6726
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_f
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_f
.end method

.method private getTitleBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6751
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->title_:Ljava/lang/Object;

    .line 6752
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 6753
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6755
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->title_:Ljava/lang/Object;

    move-object v2, v0

    .line 6758
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_f
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_f
.end method

.method private initFields()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 6953
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->id_:Ljava/lang/Object;

    .line 6954
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->title_:Ljava/lang/Object;

    .line 6955
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->author_:Ljava/lang/Object;

    .line 6956
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->continuation_:Ljava/lang/Object;

    .line 6957
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->items_:Ljava/util/List;

    .line 6958
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->links_:Ljava/util/List;

    .line 6959
    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->updatedMsec_:J

    .line 6960
    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->publishedMsec_:J

    .line 6961
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->description_:Ljava/lang/Object;

    .line 6962
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->direction_:Ljava/lang/Object;

    .line 6963
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 1

    .prologue
    .line 7152
    #calls: Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->access$8300()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$StreamContent;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 7155
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamContent;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$StreamContent;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7121
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    .line 7122
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 7123
    #calls: Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->access$8200(Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v1

    .line 7125
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamContent;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7132
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    .line 7133
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 7134
    #calls: Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->access$8200(Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v1

    .line 7136
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$StreamContent;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7088
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->access$8200(Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamContent;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7094
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->access$8200(Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$StreamContent;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7142
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->access$8200(Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamContent;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7148
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->access$8200(Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$StreamContent;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7110
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->access$8200(Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamContent;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7116
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->access$8200(Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$StreamContent;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7099
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->access$8200(Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamContent;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7105
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;->access$8200(Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;)Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .registers 6

    .prologue
    .line 6769
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->author_:Ljava/lang/Object;

    .line 6770
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 6771
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 6779
    :goto_9
    return-object v4

    .line 6773
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 6775
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 6776
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 6777
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->author_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 6779
    goto :goto_9
.end method

.method public getContinuation()Ljava/lang/String;
    .registers 6

    .prologue
    .line 6801
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->continuation_:Ljava/lang/Object;

    .line 6802
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 6803
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 6811
    :goto_9
    return-object v4

    .line 6805
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 6807
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 6808
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 6809
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->continuation_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 6811
    goto :goto_9
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamContent;
    .registers 2

    .prologue
    .line 6694
    sget-object v0, Lcom/google/feedreader/extrpc/Client$StreamContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamContent;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6679
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamContent;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 6

    .prologue
    .line 6895
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->description_:Ljava/lang/Object;

    .line 6896
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 6897
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 6905
    :goto_9
    return-object v4

    .line 6899
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 6901
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 6902
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 6903
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->description_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 6905
    goto :goto_9
.end method

.method public getDirection()Ljava/lang/String;
    .registers 6

    .prologue
    .line 6927
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->direction_:Ljava/lang/Object;

    .line 6928
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 6929
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 6937
    :goto_9
    return-object v4

    .line 6931
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 6933
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 6934
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 6935
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->direction_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 6937
    goto :goto_9
.end method

.method public getId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 6705
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->id_:Ljava/lang/Object;

    .line 6706
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 6707
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 6715
    :goto_9
    return-object v4

    .line 6709
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 6711
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 6712
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 6713
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->id_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 6715
    goto :goto_9
.end method

.method public getItems(I)Lcom/google/feedreader/extrpc/Client$Item;
    .registers 3
    .parameter "index"

    .prologue
    .line 6840
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->items_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item;

    return-object p0
.end method

.method public getItemsCount()I
    .registers 2

    .prologue
    .line 6837
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->items_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6830
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->items_:Ljava/util/List;

    return-object v0
.end method

.method public getItemsOrBuilder(I)Lcom/google/feedreader/extrpc/Client$ItemOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 6844
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->items_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$ItemOrBuilder;

    return-object p0
.end method

.method public getItemsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$ItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6834
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->items_:Ljava/util/List;

    return-object v0
.end method

.method public getLinks(I)Lcom/google/feedreader/extrpc/Client$Link;
    .registers 3
    .parameter "index"

    .prologue
    .line 6861
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->links_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Link;

    return-object p0
.end method

.method public getLinksCount()I
    .registers 2

    .prologue
    .line 6858
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->links_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLinksList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6851
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->links_:Ljava/util/List;

    return-object v0
.end method

.method public getLinksOrBuilder(I)Lcom/google/feedreader/extrpc/Client$LinkOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 6865
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->links_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$LinkOrBuilder;

    return-object p0
.end method

.method public getLinksOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$LinkOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6855
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->links_:Ljava/util/List;

    return-object v0
.end method

.method public getPublishedMsec()J
    .registers 3

    .prologue
    .line 6885
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->publishedMsec_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 7030
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->memoizedSerializedSize:I

    .line 7031
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    move v2, v1

    .line 7075
    .end local v1           #size:I
    .local v2, size:I
    :goto_b
    return v2

    .line 7033
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_c
    const/4 v1, 0x0

    .line 7034
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1c

    .line 7035
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7038
    :cond_1c
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2b

    .line 7039
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7042
    :cond_2b
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_3b

    .line 7043
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getAuthorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7046
    :cond_3b
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_4a

    .line 7047
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getContinuationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7050
    :cond_4a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4b
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->items_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_64

    .line 7051
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->items_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7050
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 7054
    :cond_64
    const/4 v0, 0x0

    :goto_65
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->links_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7e

    .line 7055
    const/4 v4, 0x6

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->links_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7054
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 7058
    :cond_7e
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_8e

    .line 7059
    const/4 v3, 0x7

    iget-wide v4, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->updatedMsec_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 7062
    :cond_8e
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_9d

    .line 7063
    iget-wide v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->publishedMsec_:J

    invoke-static {v7, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 7066
    :cond_9d
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_b0

    .line 7067
    const/16 v3, 0x9

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7070
    :cond_b0
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_c3

    .line 7071
    const/16 v3, 0xa

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getDirectionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7074
    :cond_c3
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->memoizedSerializedSize:I

    move v2, v1

    .line 7075
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_b
.end method

.method public getTitle()Ljava/lang/String;
    .registers 6

    .prologue
    .line 6737
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->title_:Ljava/lang/Object;

    .line 6738
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 6739
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 6747
    :goto_9
    return-object v4

    .line 6741
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 6743
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 6744
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 6745
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->title_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 6747
    goto :goto_9
.end method

.method public getUpdatedMsec()J
    .registers 3

    .prologue
    .line 6875
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->updatedMsec_:J

    return-wide v0
.end method

.method public hasAuthor()Z
    .registers 3

    .prologue
    .line 6766
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

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

.method public hasContinuation()Z
    .registers 3

    .prologue
    .line 6798
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

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

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 6892
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

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

.method public hasDirection()Z
    .registers 3

    .prologue
    .line 6924
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 6702
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasPublishedMsec()Z
    .registers 3

    .prologue
    .line 6882
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

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

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 6734
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

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

.method public hasUpdatedMsec()Z
    .registers 3

    .prologue
    .line 6872
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6966
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->memoizedIsInitialized:B

    .line 6967
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v4, :cond_b

    move v2, v4

    .line 6990
    :goto_a
    return v2

    :cond_b
    move v2, v3

    .line 6967
    goto :goto_a

    .line 6969
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->hasId()Z

    move-result v2

    if-nez v2, :cond_17

    .line 6970
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->memoizedIsInitialized:B

    move v2, v3

    .line 6971
    goto :goto_a

    .line 6973
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->hasTitle()Z

    move-result v2

    if-nez v2, :cond_21

    .line 6974
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->memoizedIsInitialized:B

    move v2, v3

    .line 6975
    goto :goto_a

    .line 6977
    :cond_21
    const/4 v0, 0x0

    .local v0, i:I
    :goto_22
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getItemsCount()I

    move-result v2

    if-ge v0, v2, :cond_39

    .line 6978
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getItems(I)Lcom/google/feedreader/extrpc/Client$Item;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$Item;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_36

    .line 6979
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->memoizedIsInitialized:B

    move v2, v3

    .line 6980
    goto :goto_a

    .line 6977
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 6983
    :cond_39
    const/4 v0, 0x0

    :goto_3a
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getLinksCount()I

    move-result v2

    if-ge v0, v2, :cond_51

    .line 6984
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getLinks(I)Lcom/google/feedreader/extrpc/Client$Link;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$Link;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 6985
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->memoizedIsInitialized:B

    move v2, v3

    .line 6986
    goto :goto_a

    .line 6983
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 6989
    :cond_51
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->memoizedIsInitialized:B

    move v2, v4

    .line 6990
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 2

    .prologue
    .line 7153
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6679
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;
    .registers 2

    .prologue
    .line 7157
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->newBuilder(Lcom/google/feedreader/extrpc/Client$StreamContent;)Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6679
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->toBuilder()Lcom/google/feedreader/extrpc/Client$StreamContent$Builder;

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
    .line 7082
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 6995
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getSerializedSize()I

    .line 6996
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_16

    .line 6997
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6999
    :cond_16
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_23

    .line 7000
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7002
    :cond_23
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_31

    .line 7003
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getAuthorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7005
    :cond_31
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3e

    .line 7006
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getContinuationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_3e
    move v1, v3

    .line 7008
    :goto_3f
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->items_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_57

    .line 7009
    const/4 v2, 0x5

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->items_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7008
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3f

    :cond_57
    move v1, v3

    .line 7011
    :goto_58
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->links_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_70

    .line 7012
    const/4 v2, 0x6

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->links_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7011
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_58

    .line 7014
    :cond_70
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_7e

    .line 7015
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->updatedMsec_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7017
    :cond_7e
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_8b

    .line 7018
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->publishedMsec_:J

    invoke-virtual {p1, v5, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7020
    :cond_8b
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_9c

    .line 7021
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7023
    :cond_9c
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamContent;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_ad

    .line 7024
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamContent;->getDirectionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7026
    :cond_ad
    return-void
.end method
