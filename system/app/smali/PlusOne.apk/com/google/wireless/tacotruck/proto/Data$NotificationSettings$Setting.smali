.class public final Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$SettingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Setting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private emailEnabled_:Z

.field private enabled_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34445
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    .line 34446
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->initFields()V

    .line 34447
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 33948
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 34052
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->memoizedIsInitialized:B

    .line 34078
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->memoizedSerializedSize:I

    .line 33949
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33943
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;-><init>(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 33950
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 34052
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->memoizedIsInitialized:B

    .line 34078
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->memoizedSerializedSize:I

    .line 33950
    return-void
.end method

.method static synthetic access$46402(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33943
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$46502(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33943
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$46602(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33943
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->emailEnabled_:Z

    return p1
.end method

.method static synthetic access$46702(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33943
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->enabled_:Z

    return p1
.end method

.method static synthetic access$46802(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33943
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;
    .registers 1

    .prologue
    .line 33954
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    return-object v0
.end method

.method private getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 34015
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->description_:Ljava/lang/Object;

    .line 34016
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 34017
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 34019
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->description_:Ljava/lang/Object;

    .line 34022
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private getTypeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 33983
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->type_:Ljava/lang/Object;

    .line 33984
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 33985
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 33987
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->type_:Ljava/lang/Object;

    .line 33990
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 34047
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->type_:Ljava/lang/Object;

    .line 34048
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->description_:Ljava/lang/Object;

    .line 34049
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->emailEnabled_:Z

    .line 34050
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->enabled_:Z

    .line 34051
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    .registers 1

    .prologue
    .line 34178
    #calls: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->access$46200()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 34181
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33943
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;
    .registers 2

    .prologue
    .line 33958
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 5

    .prologue
    .line 34001
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->description_:Ljava/lang/Object;

    .line 34002
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 34003
    check-cast v1, Ljava/lang/String;

    .line 34011
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 34005
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 34007
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 34008
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 34009
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->description_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 34011
    goto :goto_8
.end method

.method public getEmailEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34033
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->emailEnabled_:Z

    return v0
.end method

.method public getEnabled()Z
    .registers 2

    .prologue
    .line 34043
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->enabled_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 34080
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->memoizedSerializedSize:I

    .line 34081
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 34101
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 34083
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 34084
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 34085
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 34088
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 34089
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 34092
    :cond_29
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 34093
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->emailEnabled_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 34096
    :cond_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 34097
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->enabled_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 34100
    :cond_46
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->memoizedSerializedSize:I

    move v1, v0

    .line 34101
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 33969
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->type_:Ljava/lang/Object;

    .line 33970
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 33971
    check-cast v1, Ljava/lang/String;

    .line 33979
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 33973
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 33975
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 33976
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 33977
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->type_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 33979
    goto :goto_8
.end method

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 33998
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->bitField0_:I

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

.method public hasEmailEnabled()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34030
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->bitField0_:I

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

.method public hasEnabled()Z
    .registers 3

    .prologue
    .line 34040
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 33966
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->bitField0_:I

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

    .line 34054
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->memoizedIsInitialized:B

    .line 34055
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 34058
    :goto_8
    return v1

    .line 34055
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 34057
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    .registers 2

    .prologue
    .line 34183
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

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
    .line 34108
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 34063
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getSerializedSize()I

    .line 34064
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 34065
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 34067
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 34068
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 34070
    :cond_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 34071
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->emailEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 34073
    :cond_2c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 34074
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->enabled_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 34076
    :cond_39
    return-void
.end method
