.class public final Lcom/google/feedreader/extrpc/Client$PrefsContent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$PrefsContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrefsContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
    }
.end annotation


# static fields
.field public static final PREFS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$PrefsContent;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private prefs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$PrefPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18358
    new-instance v0, Lcom/google/feedreader/extrpc/Client$PrefsContent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$PrefsContent;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$PrefsContent;

    .line 18359
    sget-object v0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$PrefsContent;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->initFields()V

    .line 18360
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 17997
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 18034
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->memoizedIsInitialized:B

    .line 18057
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->memoizedSerializedSize:I

    .line 17998
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17992
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$PrefsContent;-><init>(Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 17999
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 18034
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->memoizedIsInitialized:B

    .line 18057
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->memoizedSerializedSize:I

    .line 17999
    return-void
.end method

.method static synthetic access$22600(Lcom/google/feedreader/extrpc/Client$PrefsContent;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17992
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->prefs_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$22602(Lcom/google/feedreader/extrpc/Client$PrefsContent;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17992
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->prefs_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$PrefsContent;
    .registers 1

    .prologue
    .line 18003
    sget-object v0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$PrefsContent;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 18032
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->prefs_:Ljava/util/List;

    .line 18033
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
    .registers 1

    .prologue
    .line 18145
    #calls: Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->access$22400()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$PrefsContent;)Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 18148
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$PrefsContent;)Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$PrefsContent;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18114
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    .line 18115
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 18116
    #calls: Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$PrefsContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->access$22300(Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v1

    .line 18118
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$PrefsContent;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18125
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    .line 18126
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 18127
    #calls: Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$PrefsContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->access$22300(Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v1

    .line 18129
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$PrefsContent;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18081
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$PrefsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->access$22300(Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$PrefsContent;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18087
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$PrefsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->access$22300(Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$PrefsContent;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18135
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$PrefsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->access$22300(Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$PrefsContent;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18141
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$PrefsContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->access$22300(Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$PrefsContent;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18103
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$PrefsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->access$22300(Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$PrefsContent;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18109
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$PrefsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->access$22300(Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$PrefsContent;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18092
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$PrefsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->access$22300(Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$PrefsContent;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18098
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$PrefsContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;->access$22300(Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;)Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$PrefsContent;
    .registers 2

    .prologue
    .line 18007
    sget-object v0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$PrefsContent;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17992
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$PrefsContent;

    move-result-object v0

    return-object v0
.end method

.method public getPrefs(I)Lcom/google/feedreader/extrpc/Client$PrefPair;
    .registers 3
    .parameter "index"

    .prologue
    .line 18024
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->prefs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$PrefPair;

    return-object p0
.end method

.method public getPrefsCount()I
    .registers 2

    .prologue
    .line 18021
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->prefs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPrefsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$PrefPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18014
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->prefs_:Ljava/util/List;

    return-object v0
.end method

.method public getPrefsOrBuilder(I)Lcom/google/feedreader/extrpc/Client$PrefPairOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 18028
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->prefs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$PrefPairOrBuilder;

    return-object p0
.end method

.method public getPrefsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/feedreader/extrpc/Client$PrefPairOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18018
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->prefs_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 18059
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->memoizedSerializedSize:I

    .line 18060
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 18068
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 18062
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 18063
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->prefs_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 18064
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->prefs_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 18063
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 18067
    :cond_22
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->memoizedSerializedSize:I

    move v2, v1

    .line 18068
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 18036
    iget-byte v1, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->memoizedIsInitialized:B

    .line 18037
    .local v1, isInitialized:B
    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-ne v1, v3, :cond_b

    move v2, v3

    .line 18046
    :goto_a
    return v2

    :cond_b
    move v2, v4

    .line 18037
    goto :goto_a

    .line 18039
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->getPrefsCount()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 18040
    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->getPrefs(I)Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/feedreader/extrpc/Client$PrefPair;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_22

    .line 18041
    iput-byte v4, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->memoizedIsInitialized:B

    move v2, v4

    .line 18042
    goto :goto_a

    .line 18039
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 18045
    :cond_25
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->memoizedIsInitialized:B

    move v2, v3

    .line 18046
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
    .registers 2

    .prologue
    .line 18146
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17992
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;
    .registers 2

    .prologue
    .line 18150
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->newBuilder(Lcom/google/feedreader/extrpc/Client$PrefsContent;)Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17992
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->toBuilder()Lcom/google/feedreader/extrpc/Client$PrefsContent$Builder;

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
    .line 18075
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
    .line 18051
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefsContent;->getSerializedSize()I

    .line 18052
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->prefs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 18053
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefsContent;->prefs_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18052
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 18055
    :cond_1d
    return-void
.end method
