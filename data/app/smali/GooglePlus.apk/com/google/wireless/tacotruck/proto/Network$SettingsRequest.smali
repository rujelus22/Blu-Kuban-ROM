.class public final Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SettingsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18925
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    .line 18926
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->initFields()V

    .line 18927
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 18635
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 18662
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->memoizedIsInitialized:B

    .line 18679
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->memoizedSerializedSize:I

    .line 18636
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18630
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 18637
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 18662
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->memoizedIsInitialized:B

    .line 18679
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->memoizedSerializedSize:I

    .line 18637
    return-void
.end method

.method static synthetic access$25202(Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18630
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    return-object p1
.end method

.method static synthetic access$25302(Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18630
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;
    .registers 1

    .prologue
    .line 18641
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 18660
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    .line 18661
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;
    .registers 1

    .prologue
    .line 18767
    #calls: Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->access$25000()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;)Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 18770
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;)Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18630
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;
    .registers 2

    .prologue
    .line 18645
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 18681
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->memoizedSerializedSize:I

    .line 18682
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 18690
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 18684
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 18685
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 18686
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18689
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 18690
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public getUserPreferences()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    .registers 2

    .prologue
    .line 18656
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    return-object v0
.end method

.method public hasUserPreferences()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 18653
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 18664
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->memoizedIsInitialized:B

    .line 18665
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 18668
    :goto_8
    return v1

    .line 18665
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 18667
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18630
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;
    .registers 2

    .prologue
    .line 18768
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18630
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;
    .registers 2

    .prologue
    .line 18772
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;)Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;

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
    .line 18697
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

    .line 18673
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->getSerializedSize()I

    .line 18674
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 18675
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18677
    :cond_f
    return-void
.end method
