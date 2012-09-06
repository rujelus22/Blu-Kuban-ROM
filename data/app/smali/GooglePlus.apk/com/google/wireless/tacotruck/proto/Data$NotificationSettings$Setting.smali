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
    .line 37226
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    .line 37227
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->initFields()V

    .line 37228
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 36729
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 36833
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->memoizedIsInitialized:B

    .line 36859
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->memoizedSerializedSize:I

    .line 36730
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36724
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;-><init>(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 36731
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 36833
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->memoizedIsInitialized:B

    .line 36859
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->memoizedSerializedSize:I

    .line 36731
    return-void
.end method

.method static synthetic access$49902(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36724
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$50002(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36724
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$50102(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36724
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->emailEnabled_:Z

    return p1
.end method

.method static synthetic access$50202(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36724
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->enabled_:Z

    return p1
.end method

.method static synthetic access$50302(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36724
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;
    .registers 1

    .prologue
    .line 36735
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    return-object v0
.end method

.method private getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 36796
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->description_:Ljava/lang/Object;

    .line 36797
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 36798
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 36800
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->description_:Ljava/lang/Object;

    .line 36803
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
    .line 36764
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->type_:Ljava/lang/Object;

    .line 36765
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 36766
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 36768
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->type_:Ljava/lang/Object;

    .line 36771
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

    .line 36828
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->type_:Ljava/lang/Object;

    .line 36829
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->description_:Ljava/lang/Object;

    .line 36830
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->emailEnabled_:Z

    .line 36831
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->enabled_:Z

    .line 36832
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    .registers 1

    .prologue
    .line 36959
    #calls: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->access$49700()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 36962
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
    .line 36724
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;
    .registers 2

    .prologue
    .line 36739
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 5

    .prologue
    .line 36782
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->description_:Ljava/lang/Object;

    .line 36783
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 36784
    check-cast v1, Ljava/lang/String;

    .line 36792
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 36786
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 36788
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 36789
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 36790
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->description_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 36792
    goto :goto_8
.end method

.method public getEmailEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 36814
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->emailEnabled_:Z

    return v0
.end method

.method public getEnabled()Z
    .registers 2

    .prologue
    .line 36824
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->enabled_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 36861
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->memoizedSerializedSize:I

    .line 36862
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 36882
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 36864
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 36865
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 36866
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 36869
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 36870
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 36873
    :cond_29
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 36874
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->emailEnabled_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 36877
    :cond_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 36878
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->enabled_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 36881
    :cond_46
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->memoizedSerializedSize:I

    move v1, v0

    .line 36882
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 36750
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->type_:Ljava/lang/Object;

    .line 36751
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 36752
    check-cast v1, Ljava/lang/String;

    .line 36760
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 36754
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 36756
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 36757
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 36758
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->type_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 36760
    goto :goto_8
.end method

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 36779
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
    .line 36811
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
    .line 36821
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

    .line 36747
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

    .line 36835
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->memoizedIsInitialized:B

    .line 36836
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 36839
    :goto_8
    return v1

    .line 36836
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 36838
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 36724
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    .registers 2

    .prologue
    .line 36960
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 36724
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    .registers 2

    .prologue
    .line 36964
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
    .line 36889
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

    .line 36844
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getSerializedSize()I

    .line 36845
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 36846
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 36848
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 36849
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 36851
    :cond_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 36852
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->emailEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 36854
    :cond_2c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 36855
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->enabled_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 36857
    :cond_39
    return-void
.end method
