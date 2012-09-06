.class public final Lcom/google/feedreader/extrpc/Client$GroupsList;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$GroupsListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupsList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;,
        Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;,
        Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroupOrBuilder;
    }
.end annotation


# static fields
.field public static final SHARINGGROUPS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$GroupsList;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private sharingGroups_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14353
    new-instance v0, Lcom/google/feedreader/extrpc/Client$GroupsList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$GroupsList;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$GroupsList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$GroupsList;

    .line 14354
    sget-object v0, Lcom/google/feedreader/extrpc/Client$GroupsList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$GroupsList;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$GroupsList;->initFields()V

    .line 14355
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 13493
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 14029
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList;->memoizedIsInitialized:B

    .line 14052
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList;->memoizedSerializedSize:I

    .line 13494
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13488
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$GroupsList;-><init>(Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 13495
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 14029
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList;->memoizedIsInitialized:B

    .line 14052
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList;->memoizedSerializedSize:I

    .line 13495
    return-void
.end method

.method static synthetic access$17700(Lcom/google/feedreader/extrpc/Client$GroupsList;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 13488
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList;->sharingGroups_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17702(Lcom/google/feedreader/extrpc/Client$GroupsList;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13488
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList;->sharingGroups_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$GroupsList;
    .registers 1

    .prologue
    .line 13499
    sget-object v0, Lcom/google/feedreader/extrpc/Client$GroupsList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$GroupsList;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 14027
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList;->sharingGroups_:Ljava/util/List;

    .line 14028
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;
    .registers 1

    .prologue
    .line 14140
    #calls: Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->create()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->access$17500()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$GroupsList;)Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 14143
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$GroupsList;)Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$GroupsList;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14109
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    .line 14110
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 14111
    #calls: Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->access$17400(Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList;

    move-result-object v1

    .line 14113
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$GroupsList;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14120
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    .line 14121
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 14122
    #calls: Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->access$17400(Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList;

    move-result-object v1

    .line 14124
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$GroupsList;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14076
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->access$17400(Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$GroupsList;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14082
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->access$17400(Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$GroupsList;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14130
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->access$17400(Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$GroupsList;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14136
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->access$17400(Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$GroupsList;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14098
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->access$17400(Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$GroupsList;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14104
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->access$17400(Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$GroupsList;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14087
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->access$17400(Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$GroupsList;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14093
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;->access$17400(Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$GroupsList;
    .registers 2

    .prologue
    .line 13503
    sget-object v0, Lcom/google/feedreader/extrpc/Client$GroupsList;->defaultInstance:Lcom/google/feedreader/extrpc/Client$GroupsList;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13488
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$GroupsList;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 14054
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList;->memoizedSerializedSize:I

    .line 14055
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 14063
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 14057
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 14058
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$GroupsList;->sharingGroups_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 14059
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$GroupsList;->sharingGroups_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 14058
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 14062
    :cond_22
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList;->memoizedSerializedSize:I

    move v2, v1

    .line 14063
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public getSharingGroups(I)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    .registers 3
    .parameter "index"

    .prologue
    .line 14019
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList;->sharingGroups_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    return-object p0
.end method

.method public getSharingGroupsCount()I
    .registers 2

    .prologue
    .line 14016
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList;->sharingGroups_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSharingGroupsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14009
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList;->sharingGroups_:Ljava/util/List;

    return-object v0
.end method

.method public getSharingGroupsOrBuilder(I)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroupOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 14023
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList;->sharingGroups_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroupOrBuilder;

    return-object p0
.end method

.method public getSharingGroupsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroupOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14013
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList;->sharingGroups_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 14031
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList;->memoizedIsInitialized:B

    .line 14032
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v3, :cond_b

    move v2, v3

    .line 14041
    :goto_a
    return v2

    :cond_b
    move v2, v4

    .line 14032
    goto :goto_a

    .line 14034
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList;->getSharingGroupsCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 14035
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$GroupsList;->getSharingGroups(I)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_22

    .line 14036
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$GroupsList;->memoizedIsInitialized:B

    move v2, v4

    .line 14037
    goto :goto_a

    .line 14034
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 14040
    :cond_25
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$GroupsList;->memoizedIsInitialized:B

    move v2, v3

    .line 14041
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;
    .registers 2

    .prologue
    .line 14141
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13488
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;
    .registers 2

    .prologue
    .line 14145
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList;->newBuilder(Lcom/google/feedreader/extrpc/Client$GroupsList;)Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13488
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList;->toBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$Builder;

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
    .line 14070
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
    .line 14046
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList;->getSerializedSize()I

    .line 14047
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList;->sharingGroups_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 14048
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList;->sharingGroups_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 14047
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 14050
    :cond_1d
    return-void
.end method
