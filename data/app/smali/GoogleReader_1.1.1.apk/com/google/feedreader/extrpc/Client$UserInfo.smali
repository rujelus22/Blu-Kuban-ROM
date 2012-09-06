.class public final Lcom/google/feedreader/extrpc/Client$UserInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$UserInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    }
.end annotation


# static fields
.field public static final ISBLOGGERUSER_FIELD_NUMBER:I = 0x5

.field public static final ISMULTILOGINENABLED_FIELD_NUMBER:I = 0x8

.field public static final PUBLICUSERNAME_FIELD_NUMBER:I = 0x7

.field public static final SIGNUPTIMESEC_FIELD_NUMBER:I = 0x6

.field public static final USEREMAIL_FIELD_NUMBER:I = 0x4

.field public static final USERID_FIELD_NUMBER:I = 0x1

.field public static final USERNAME_FIELD_NUMBER:I = 0x2

.field public static final USERPROFILEID_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$UserInfo;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private isBloggerUser_:Z

.field private isMultiLoginEnabled_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private publicUserName_:Ljava/lang/Object;

.field private signupTimeSec_:I

.field private userEmail_:Ljava/lang/Object;

.field private userId_:Ljava/lang/Object;

.field private userName_:Ljava/lang/Object;

.field private userProfileId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16677
    new-instance v0, Lcom/google/feedreader/extrpc/Client$UserInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$UserInfo;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$UserInfo;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UserInfo;

    .line 16678
    sget-object v0, Lcom/google/feedreader/extrpc/Client$UserInfo;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UserInfo;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->initFields()V

    .line 16679
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 15801
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 16015
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->memoizedIsInitialized:B

    .line 16081
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->memoizedSerializedSize:I

    .line 15802
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15796
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$UserInfo;-><init>(Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 15803
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16015
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->memoizedIsInitialized:B

    .line 16081
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->memoizedSerializedSize:I

    .line 15803
    return-void
.end method

.method static synthetic access$19802(Lcom/google/feedreader/extrpc/Client$UserInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15796
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19902(Lcom/google/feedreader/extrpc/Client$UserInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15796
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20002(Lcom/google/feedreader/extrpc/Client$UserInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15796
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userProfileId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20102(Lcom/google/feedreader/extrpc/Client$UserInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15796
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userEmail_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20202(Lcom/google/feedreader/extrpc/Client$UserInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15796
    iput-boolean p1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->isBloggerUser_:Z

    return p1
.end method

.method static synthetic access$20302(Lcom/google/feedreader/extrpc/Client$UserInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15796
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->signupTimeSec_:I

    return p1
.end method

.method static synthetic access$20402(Lcom/google/feedreader/extrpc/Client$UserInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15796
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->publicUserName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20502(Lcom/google/feedreader/extrpc/Client$UserInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15796
    iput-boolean p1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->isMultiLoginEnabled_:Z

    return p1
.end method

.method static synthetic access$20602(Lcom/google/feedreader/extrpc/Client$UserInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15796
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UserInfo;
    .registers 1

    .prologue
    .line 15807
    sget-object v0, Lcom/google/feedreader/extrpc/Client$UserInfo;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UserInfo;

    return-object v0
.end method

.method private getPublicUserNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 15984
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->publicUserName_:Ljava/lang/Object;

    .line 15985
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 15986
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15988
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->publicUserName_:Ljava/lang/Object;

    move-object v2, v0

    .line 15991
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

.method private getUserEmailBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 15932
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userEmail_:Ljava/lang/Object;

    .line 15933
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 15934
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15936
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userEmail_:Ljava/lang/Object;

    move-object v2, v0

    .line 15939
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

.method private getUserIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 15836
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userId_:Ljava/lang/Object;

    .line 15837
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 15838
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15840
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userId_:Ljava/lang/Object;

    move-object v2, v0

    .line 15843
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

.method private getUserNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 15868
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userName_:Ljava/lang/Object;

    .line 15869
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 15870
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15872
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userName_:Ljava/lang/Object;

    move-object v2, v0

    .line 15875
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

.method private getUserProfileIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 15900
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userProfileId_:Ljava/lang/Object;

    .line 15901
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 15902
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15904
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userProfileId_:Ljava/lang/Object;

    move-object v2, v0

    .line 15907
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
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 16006
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userId_:Ljava/lang/Object;

    .line 16007
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userName_:Ljava/lang/Object;

    .line 16008
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userProfileId_:Ljava/lang/Object;

    .line 16009
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userEmail_:Ljava/lang/Object;

    .line 16010
    iput-boolean v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->isBloggerUser_:Z

    .line 16011
    iput v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->signupTimeSec_:I

    .line 16012
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->publicUserName_:Ljava/lang/Object;

    .line 16013
    iput-boolean v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->isMultiLoginEnabled_:Z

    .line 16014
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 1

    .prologue
    .line 16197
    #calls: Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->create()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->access$19600()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$UserInfo;)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 16200
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$UserInfo;)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$UserInfo;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16166
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    .line 16167
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 16168
    #calls: Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserInfo;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->access$19500(Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;)Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v1

    .line 16170
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserInfo;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16177
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    .line 16178
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 16179
    #calls: Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserInfo;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->access$19500(Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;)Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v1

    .line 16181
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$UserInfo;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16133
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserInfo;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->access$19500(Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;)Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserInfo;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16139
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserInfo;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->access$19500(Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;)Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$UserInfo;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16187
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserInfo;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->access$19500(Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;)Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserInfo;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16193
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserInfo;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->access$19500(Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;)Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$UserInfo;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16155
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserInfo;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->access$19500(Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;)Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserInfo;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16161
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserInfo;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->access$19500(Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;)Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$UserInfo;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16144
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserInfo;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->access$19500(Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;)Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UserInfo;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16150
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UserInfo;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;->access$19500(Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;)Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UserInfo;
    .registers 2

    .prologue
    .line 15811
    sget-object v0, Lcom/google/feedreader/extrpc/Client$UserInfo;->defaultInstance:Lcom/google/feedreader/extrpc/Client$UserInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 15796
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getIsBloggerUser()Z
    .registers 2

    .prologue
    .line 15950
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->isBloggerUser_:Z

    return v0
.end method

.method public getIsMultiLoginEnabled()Z
    .registers 2

    .prologue
    .line 16002
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->isMultiLoginEnabled_:Z

    return v0
.end method

.method public getPublicUserName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 15970
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->publicUserName_:Ljava/lang/Object;

    .line 15971
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 15972
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 15980
    :goto_9
    return-object v4

    .line 15974
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 15976
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 15977
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 15978
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->publicUserName_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 15980
    goto :goto_9
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 16083
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->memoizedSerializedSize:I

    .line 16084
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 16120
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 16086
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 16087
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 16088
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getUserIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 16091
    :cond_1c
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 16092
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getUserNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 16095
    :cond_2b
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3b

    .line 16096
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getUserProfileIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 16099
    :cond_3b
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4a

    .line 16100
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getUserEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 16103
    :cond_4a
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5a

    .line 16104
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->isBloggerUser_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 16107
    :cond_5a
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6a

    .line 16108
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->signupTimeSec_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 16111
    :cond_6a
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7c

    .line 16112
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getPublicUserNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 16115
    :cond_7c
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8b

    .line 16116
    iget-boolean v2, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->isMultiLoginEnabled_:Z

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 16119
    :cond_8b
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->memoizedSerializedSize:I

    move v1, v0

    .line 16120
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getSignupTimeSec()I
    .registers 2

    .prologue
    .line 15960
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->signupTimeSec_:I

    return v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .registers 6

    .prologue
    .line 15918
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userEmail_:Ljava/lang/Object;

    .line 15919
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 15920
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 15928
    :goto_9
    return-object v4

    .line 15922
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 15924
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 15925
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 15926
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userEmail_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 15928
    goto :goto_9
.end method

.method public getUserId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 15822
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userId_:Ljava/lang/Object;

    .line 15823
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 15824
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 15832
    :goto_9
    return-object v4

    .line 15826
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 15828
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 15829
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 15830
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userId_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 15832
    goto :goto_9
.end method

.method public getUserName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 15854
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userName_:Ljava/lang/Object;

    .line 15855
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 15856
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 15864
    :goto_9
    return-object v4

    .line 15858
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 15860
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 15861
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 15862
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userName_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 15864
    goto :goto_9
.end method

.method public getUserProfileId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 15886
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userProfileId_:Ljava/lang/Object;

    .line 15887
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 15888
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 15896
    :goto_9
    return-object v4

    .line 15890
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 15892
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 15893
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 15894
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->userProfileId_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 15896
    goto :goto_9
.end method

.method public hasIsBloggerUser()Z
    .registers 3

    .prologue
    .line 15947
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

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

.method public hasIsMultiLoginEnabled()Z
    .registers 3

    .prologue
    .line 15999
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

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

.method public hasPublicUserName()Z
    .registers 3

    .prologue
    .line 15967
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

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

.method public hasSignupTimeSec()Z
    .registers 3

    .prologue
    .line 15957
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

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

.method public hasUserEmail()Z
    .registers 3

    .prologue
    .line 15915
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

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

.method public hasUserId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 15819
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasUserName()Z
    .registers 3

    .prologue
    .line 15851
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

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

.method public hasUserProfileId()Z
    .registers 3

    .prologue
    .line 15883
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16017
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->memoizedIsInitialized:B

    .line 16018
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v3, :cond_b

    move v1, v3

    .line 16049
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 16018
    goto :goto_a

    .line 16020
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->hasUserId()Z

    move-result v1

    if-nez v1, :cond_17

    .line 16021
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->memoizedIsInitialized:B

    move v1, v2

    .line 16022
    goto :goto_a

    .line 16024
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->hasUserName()Z

    move-result v1

    if-nez v1, :cond_21

    .line 16025
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->memoizedIsInitialized:B

    move v1, v2

    .line 16026
    goto :goto_a

    .line 16028
    :cond_21
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->hasUserProfileId()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 16029
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->memoizedIsInitialized:B

    move v1, v2

    .line 16030
    goto :goto_a

    .line 16032
    :cond_2b
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->hasUserEmail()Z

    move-result v1

    if-nez v1, :cond_35

    .line 16033
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->memoizedIsInitialized:B

    move v1, v2

    .line 16034
    goto :goto_a

    .line 16036
    :cond_35
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->hasIsBloggerUser()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 16037
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->memoizedIsInitialized:B

    move v1, v2

    .line 16038
    goto :goto_a

    .line 16040
    :cond_3f
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->hasSignupTimeSec()Z

    move-result v1

    if-nez v1, :cond_49

    .line 16041
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->memoizedIsInitialized:B

    move v1, v2

    .line 16042
    goto :goto_a

    .line 16044
    :cond_49
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->hasIsMultiLoginEnabled()Z

    move-result v1

    if-nez v1, :cond_53

    .line 16045
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->memoizedIsInitialized:B

    move v1, v2

    .line 16046
    goto :goto_a

    .line 16048
    :cond_53
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->memoizedIsInitialized:B

    move v1, v3

    .line 16049
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 2

    .prologue
    .line 16198
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UserInfo;->newBuilder()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15796
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;
    .registers 2

    .prologue
    .line 16202
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->newBuilder(Lcom/google/feedreader/extrpc/Client$UserInfo;)Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 15796
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->toBuilder()Lcom/google/feedreader/extrpc/Client$UserInfo$Builder;

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
    .line 16127
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 16054
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getSerializedSize()I

    .line 16055
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 16056
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getUserIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16058
    :cond_15
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 16059
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getUserNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16061
    :cond_22
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 16062
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getUserProfileIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16064
    :cond_30
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3d

    .line 16065
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getUserEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16067
    :cond_3d
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4b

    .line 16068
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->isBloggerUser_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16070
    :cond_4b
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_59

    .line 16071
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->signupTimeSec_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 16073
    :cond_59
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_69

    .line 16074
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UserInfo;->getPublicUserNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16076
    :cond_69
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_76

    .line 16077
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$UserInfo;->isMultiLoginEnabled_:Z

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16079
    :cond_76
    return-void
.end method
