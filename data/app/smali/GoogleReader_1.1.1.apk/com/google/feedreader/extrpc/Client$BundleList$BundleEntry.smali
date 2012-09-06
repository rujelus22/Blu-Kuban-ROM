.class public final Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$BundleList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BundleEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;
    }
.end annotation


# static fields
.field public static final BUNDLE_FIELD_NUMBER:I = 0x2

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private bundle_:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21798
    new-instance v0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->defaultInstance:Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    .line 21799
    sget-object v0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->defaultInstance:Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->initFields()V

    .line 21800
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 21394
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 21454
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->memoizedIsInitialized:B

    .line 21486
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->memoizedSerializedSize:I

    .line 21395
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21389
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;-><init>(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 21396
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21454
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->memoizedIsInitialized:B

    .line 21486
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->memoizedSerializedSize:I

    .line 21396
    return-void
.end method

.method static synthetic access$26802(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21389
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$26902(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21389
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->bundle_:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    return-object p1
.end method

.method static synthetic access$27002(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21389
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    .registers 1

    .prologue
    .line 21400
    sget-object v0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->defaultInstance:Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 21429
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->id_:Ljava/lang/Object;

    .line 21430
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 21431
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 21433
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->id_:Ljava/lang/Object;

    move-object v2, v0

    .line 21436
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
    .line 21451
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->id_:Ljava/lang/Object;

    .line 21452
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->bundle_:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    .line 21453
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;
    .registers 1

    .prologue
    .line 21578
    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->create()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->access$26600()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 21581
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21547
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    .line 21548
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 21549
    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->access$26500(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v1

    .line 21551
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21558
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    .line 21559
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 21560
    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->access$26500(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v1

    .line 21562
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21514
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->access$26500(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21520
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->access$26500(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21568
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->access$26500(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21574
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->access$26500(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21536
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->access$26500(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21542
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->access$26500(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21525
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->access$26500(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21531
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;->access$26500(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBundle()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;
    .registers 2

    .prologue
    .line 21447
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->bundle_:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
    .registers 2

    .prologue
    .line 21404
    sget-object v0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->defaultInstance:Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21389
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 21415
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->id_:Ljava/lang/Object;

    .line 21416
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 21417
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 21425
    :goto_9
    return-object v4

    .line 21419
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 21421
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 21422
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 21423
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->id_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 21425
    goto :goto_9
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 21488
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->memoizedSerializedSize:I

    .line 21489
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 21501
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 21491
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 21492
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 21493
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 21496
    :cond_19
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 21497
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->bundle_:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 21500
    :cond_26
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->memoizedSerializedSize:I

    move v1, v0

    .line 21501
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasBundle()Z
    .registers 3

    .prologue
    .line 21444
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 21412
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21456
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->memoizedIsInitialized:B

    .line 21457
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v3, :cond_b

    move v1, v3

    .line 21472
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 21457
    goto :goto_a

    .line 21459
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->hasId()Z

    move-result v1

    if-nez v1, :cond_17

    .line 21460
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->memoizedIsInitialized:B

    move v1, v2

    .line 21461
    goto :goto_a

    .line 21463
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->hasBundle()Z

    move-result v1

    if-nez v1, :cond_21

    .line 21464
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->memoizedIsInitialized:B

    move v1, v2

    .line 21465
    goto :goto_a

    .line 21467
    :cond_21
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->getBundle()Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 21468
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->memoizedIsInitialized:B

    move v1, v2

    .line 21469
    goto :goto_a

    .line 21471
    :cond_2f
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->memoizedIsInitialized:B

    move v1, v3

    .line 21472
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;
    .registers 2

    .prologue
    .line 21579
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->newBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21389
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;
    .registers 2

    .prologue
    .line 21583
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->newBuilder(Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21389
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->toBuilder()Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry$Builder;

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
    .line 21508
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

    .line 21477
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->getSerializedSize()I

    .line 21478
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 21479
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 21481
    :cond_12
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 21482
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;->bundle_:Lcom/google/feedreader/extrpc/Client$BundleList$Bundle;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 21484
    :cond_1d
    return-void
.end method
