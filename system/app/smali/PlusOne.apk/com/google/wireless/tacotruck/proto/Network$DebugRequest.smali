.class public final Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$DebugRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DebugRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;,
        Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 52063
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

    .line 52064
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->initFields()V

    .line 52065
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 51754
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 51819
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->memoizedIsInitialized:B

    .line 51836
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->memoizedSerializedSize:I

    .line 51755
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51749
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 51756
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 51819
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->memoizedIsInitialized:B

    .line 51836
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->memoizedSerializedSize:I

    .line 51756
    return-void
.end method

.method static synthetic access$73502(Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51749
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    return-object p1
.end method

.method static synthetic access$73602(Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51749
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;
    .registers 1

    .prologue
    .line 51760
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 51817
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;->CLEAR_USER_PREFS:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    .line 51818
    return-void
.end method


# virtual methods
.method public getDebugType()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;
    .registers 2

    .prologue
    .line 51813
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 51749
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;
    .registers 2

    .prologue
    .line 51764
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 51838
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->memoizedSerializedSize:I

    .line 51839
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 51847
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 51841
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 51842
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 51843
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 51846
    :cond_1a
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 51847
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasDebugType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 51810
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 51854
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 51830
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->getSerializedSize()I

    .line 51831
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 51832
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 51834
    :cond_13
    return-void
.end method
