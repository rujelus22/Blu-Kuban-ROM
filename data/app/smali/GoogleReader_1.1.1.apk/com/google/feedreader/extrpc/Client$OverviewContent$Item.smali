.class public final Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$OverviewContent$ItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$OverviewContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final SUMMARYTEXT_FIELD_NUMBER:I = 0x3

.field public static final TITLETEXT_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private summaryText_:Ljava/lang/Object;

.field private titleText_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28192
    new-instance v0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->defaultInstance:Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    .line 28193
    sget-object v0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->defaultInstance:Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->initFields()V

    .line 28194
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 27703
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 27818
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->memoizedIsInitialized:B

    .line 27845
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->memoizedSerializedSize:I

    .line 27704
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27698
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;-><init>(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 27705
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 27818
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->memoizedIsInitialized:B

    .line 27845
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->memoizedSerializedSize:I

    .line 27705
    return-void
.end method

.method static synthetic access$35002(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27698
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$35102(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27698
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->titleText_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$35202(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27698
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->summaryText_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$35302(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27698
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    .registers 1

    .prologue
    .line 27709
    sget-object v0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->defaultInstance:Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 27738
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->id_:Ljava/lang/Object;

    .line 27739
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 27740
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27742
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->id_:Ljava/lang/Object;

    move-object v2, v0

    .line 27745
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

.method private getSummaryTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 27802
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->summaryText_:Ljava/lang/Object;

    .line 27803
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 27804
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27806
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->summaryText_:Ljava/lang/Object;

    move-object v2, v0

    .line 27809
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

.method private getTitleTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 27770
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->titleText_:Ljava/lang/Object;

    .line 27771
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 27772
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27774
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->titleText_:Ljava/lang/Object;

    move-object v2, v0

    .line 27777
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
    .registers 2

    .prologue
    .line 27814
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->id_:Ljava/lang/Object;

    .line 27815
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->titleText_:Ljava/lang/Object;

    .line 27816
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->summaryText_:Ljava/lang/Object;

    .line 27817
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;
    .registers 1

    .prologue
    .line 27941
    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->create()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->access$34800()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 27944
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27910
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    .line 27911
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 27912
    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->access$34700(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v1

    .line 27914
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27921
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    .line 27922
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 27923
    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->access$34700(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v1

    .line 27925
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27877
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->access$34700(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27883
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->access$34700(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27931
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->access$34700(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27937
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->access$34700(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27899
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->access$34700(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27905
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->access$34700(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27888
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->access$34700(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27894
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;->access$34700(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
    .registers 2

    .prologue
    .line 27713
    sget-object v0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->defaultInstance:Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27698
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 27724
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->id_:Ljava/lang/Object;

    .line 27725
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 27726
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 27734
    :goto_9
    return-object v4

    .line 27728
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 27730
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 27731
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 27732
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->id_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 27734
    goto :goto_9
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 27847
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->memoizedSerializedSize:I

    .line 27848
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 27864
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 27850
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 27851
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 27852
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27855
    :cond_19
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 27856
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->getTitleTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27859
    :cond_28
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 27860
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->getSummaryTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27863
    :cond_39
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->memoizedSerializedSize:I

    move v1, v0

    .line 27864
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getSummaryText()Ljava/lang/String;
    .registers 6

    .prologue
    .line 27788
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->summaryText_:Ljava/lang/Object;

    .line 27789
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 27790
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 27798
    :goto_9
    return-object v4

    .line 27792
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 27794
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 27795
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 27796
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->summaryText_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 27798
    goto :goto_9
.end method

.method public getTitleText()Ljava/lang/String;
    .registers 6

    .prologue
    .line 27756
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->titleText_:Ljava/lang/Object;

    .line 27757
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 27758
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 27766
    :goto_9
    return-object v4

    .line 27760
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 27762
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 27763
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 27764
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->titleText_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 27766
    goto :goto_9
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 27721
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasSummaryText()Z
    .registers 3

    .prologue
    .line 27785
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->bitField0_:I

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

.method public hasTitleText()Z
    .registers 3

    .prologue
    .line 27753
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 27820
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->memoizedIsInitialized:B

    .line 27821
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v2, :cond_b

    move v1, v2

    .line 27828
    :goto_a
    return v1

    :cond_b
    move v1, v3

    .line 27821
    goto :goto_a

    .line 27823
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->hasId()Z

    move-result v1

    if-nez v1, :cond_17

    .line 27824
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->memoizedIsInitialized:B

    move v1, v3

    .line 27825
    goto :goto_a

    .line 27827
    :cond_17
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->memoizedIsInitialized:B

    move v1, v2

    .line 27828
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;
    .registers 2

    .prologue
    .line 27942
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->newBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27698
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;
    .registers 2

    .prologue
    .line 27946
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->newBuilder(Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27698
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->toBuilder()Lcom/google/feedreader/extrpc/Client$OverviewContent$Item$Builder;

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
    .line 27871
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

    .line 27833
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->getSerializedSize()I

    .line 27834
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 27835
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27837
    :cond_12
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 27838
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->getTitleTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27840
    :cond_1f
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 27841
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;->getSummaryTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27843
    :cond_2e
    return-void
.end method
