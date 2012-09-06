.class public final Lcom/google/feedreader/rpc/Storage$LabelData$Label;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Storage.java"

# interfaces
.implements Lcom/google/feedreader/rpc/Storage$LabelData$LabelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/rpc/Storage$LabelData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Label"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;
    }
.end annotation


# static fields
.field public static final DISABLED_FIELD_NUMBER:I = 0x3

.field public static final OLD_STREAM_ID_FIELD_NUMBER:I = 0x2

.field public static final STREAM_ID_FIELD_NUMBER:I = 0x5

.field public static final TITLE_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/feedreader/rpc/Storage$LabelData$Label;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private disabled_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private oldStreamId_:Ljava/lang/Object;

.field private streamId_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1026
    new-instance v0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->defaultInstance:Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    .line 1027
    sget-object v0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->defaultInstance:Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    invoke-direct {v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->initFields()V

    .line 1028
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 484
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 610
    iput-byte v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->memoizedIsInitialized:B

    .line 640
    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->memoizedSerializedSize:I

    .line 485
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;Lcom/google/feedreader/rpc/Storage$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 479
    invoke-direct {p0, p1}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;-><init>(Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 486
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 610
    iput-byte v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->memoizedIsInitialized:B

    .line 640
    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->memoizedSerializedSize:I

    .line 486
    return-void
.end method

.method static synthetic access$1002(Lcom/google/feedreader/rpc/Storage$LabelData$Label;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 479
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->oldStreamId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/feedreader/rpc/Storage$LabelData$Label;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 479
    iput-boolean p1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->disabled_:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/google/feedreader/rpc/Storage$LabelData$Label;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 479
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/feedreader/rpc/Storage$LabelData$Label;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 479
    iput p1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->bitField0_:I

    return p1
.end method

.method static synthetic access$902(Lcom/google/feedreader/rpc/Storage$LabelData$Label;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 479
    iput-object p1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->streamId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    .registers 1

    .prologue
    .line 490
    sget-object v0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->defaultInstance:Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    return-object v0
.end method

.method private getOldStreamIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 551
    iget-object v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->oldStreamId_:Ljava/lang/Object;

    .line 552
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 553
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 555
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->oldStreamId_:Ljava/lang/Object;

    move-object v2, v0

    .line 558
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

.method private getStreamIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 519
    iget-object v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->streamId_:Ljava/lang/Object;

    .line 520
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 521
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 523
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->streamId_:Ljava/lang/Object;

    move-object v2, v0

    .line 526
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
    .line 593
    iget-object v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->title_:Ljava/lang/Object;

    .line 594
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 595
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 597
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->title_:Ljava/lang/Object;

    move-object v2, v0

    .line 600
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
    .line 605
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->streamId_:Ljava/lang/Object;

    .line 606
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->oldStreamId_:Ljava/lang/Object;

    .line 607
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->disabled_:Z

    .line 608
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->title_:Ljava/lang/Object;

    .line 609
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;
    .registers 1

    .prologue
    .line 740
    #calls: Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->create()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->access$700()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/rpc/Storage$LabelData$Label;)Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 743
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->mergeFrom(Lcom/google/feedreader/rpc/Storage$LabelData$Label;)Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 709
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    .line 710
    .local v0, builder:Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 711
    #calls: Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->access$600(Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v1

    .line 713
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 720
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    .line 721
    .local v0, builder:Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 722
    #calls: Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->access$600(Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v1

    .line 724
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 676
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->access$600(Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 682
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->access$600(Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 730
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->access$600(Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 736
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->access$600(Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 698
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->access$600(Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->access$600(Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 687
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->access$600(Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 693
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    #calls: Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->access$600(Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    .registers 2

    .prologue
    .line 494
    sget-object v0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->defaultInstance:Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v0

    return-object v0
.end method

.method public getDisabled()Z
    .registers 2

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->disabled_:Z

    return v0
.end method

.method public getOldStreamId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 537
    iget-object v2, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->oldStreamId_:Ljava/lang/Object;

    .line 538
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 539
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 547
    :goto_9
    return-object v4

    .line 541
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 543
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 544
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 545
    iput-object v3, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->oldStreamId_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 547
    goto :goto_9
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 642
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->memoizedSerializedSize:I

    .line 643
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 663
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 645
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 646
    iget v2, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v3, :cond_19

    .line 647
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->getOldStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 650
    :cond_19
    iget v2, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v4, :cond_27

    .line 651
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->disabled_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 654
    :cond_27
    iget v2, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_38

    .line 655
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 658
    :cond_38
    iget v2, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_49

    .line 659
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->getStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 662
    :cond_49
    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->memoizedSerializedSize:I

    move v1, v0

    .line 663
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 505
    iget-object v2, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->streamId_:Ljava/lang/Object;

    .line 506
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 507
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 515
    :goto_9
    return-object v4

    .line 509
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 511
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 513
    iput-object v3, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->streamId_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 515
    goto :goto_9
.end method

.method public getTitle()Ljava/lang/String;
    .registers 6

    .prologue
    .line 579
    iget-object v2, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->title_:Ljava/lang/Object;

    .line 580
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 581
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 589
    :goto_9
    return-object v4

    .line 583
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 585
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 586
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 587
    iput-object v3, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->title_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 589
    goto :goto_9
.end method

.method public hasDisabled()Z
    .registers 3

    .prologue
    .line 566
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->bitField0_:I

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

.method public hasOldStreamId()Z
    .registers 3

    .prologue
    .line 534
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->bitField0_:I

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

.method public hasStreamId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 502
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasTitle()Z
    .registers 3

    .prologue
    .line 576
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 612
    iget-byte v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->memoizedIsInitialized:B

    .line 613
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v2, :cond_b

    move v1, v2

    .line 620
    :goto_a
    return v1

    :cond_b
    move v1, v3

    .line 613
    goto :goto_a

    .line 615
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->hasStreamId()Z

    move-result v1

    if-nez v1, :cond_17

    .line 616
    iput-byte v3, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->memoizedIsInitialized:B

    move v1, v3

    .line 617
    goto :goto_a

    .line 619
    :cond_17
    iput-byte v2, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->memoizedIsInitialized:B

    move v1, v2

    .line 620
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;
    .registers 2

    .prologue
    .line 741
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->newBuilderForType()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;
    .registers 2

    .prologue
    .line 745
    invoke-static {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->newBuilder(Lcom/google/feedreader/rpc/Storage$LabelData$Label;)Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->toBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

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
    .line 670
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
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 625
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->getSerializedSize()I

    .line 626
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_12

    .line 627
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->getOldStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 629
    :cond_12
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v2, :cond_1e

    .line 630
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->disabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 632
    :cond_1e
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2d

    .line 633
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 635
    :cond_2d
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3c

    .line 636
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->getStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 638
    :cond_3c
    return-void
.end method
