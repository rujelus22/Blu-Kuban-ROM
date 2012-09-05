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
    .line 18317
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    .line 18318
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->initFields()V

    .line 18319
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 18027
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 18054
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->memoizedIsInitialized:B

    .line 18071
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->memoizedSerializedSize:I

    .line 18028
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18022
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 18029
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 18054
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->memoizedIsInitialized:B

    .line 18071
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->memoizedSerializedSize:I

    .line 18029
    return-void
.end method

.method static synthetic access$24502(Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18022
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    return-object p1
.end method

.method static synthetic access$24602(Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18022
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;
    .registers 1

    .prologue
    .line 18033
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 18052
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    .line 18053
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18022
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;
    .registers 2

    .prologue
    .line 18037
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 18073
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->memoizedSerializedSize:I

    .line 18074
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 18082
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 18076
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 18077
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 18078
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18081
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 18082
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public getUserPreferences()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    .registers 2

    .prologue
    .line 18048
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    return-object v0
.end method

.method public hasUserPreferences()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 18045
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->bitField0_:I

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
    .line 18089
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

    .line 18065
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->getSerializedSize()I

    .line 18066
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 18067
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsRequest;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18069
    :cond_f
    return-void
.end method
