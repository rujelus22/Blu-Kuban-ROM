.class public final Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$NotificationSettingsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotificationSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;,
        Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$CategoryOrBuilder;,
        Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;,
        Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$SettingOrBuilder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private categories_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;",
            ">;"
        }
    .end annotation
.end field

.field private emailAddress_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38129
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 38130
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->initFields()V

    .line 38131
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 36692
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 37758
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->memoizedIsInitialized:B

    .line 37778
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->memoizedSerializedSize:I

    .line 36693
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36687
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;-><init>(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 36694
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 37758
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->memoizedIsInitialized:B

    .line 37778
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->memoizedSerializedSize:I

    .line 36694
    return-void
.end method

.method static synthetic access$51300(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36687
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->categories_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$51302(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36687
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->categories_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$51402(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36687
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->emailAddress_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$51502(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36687
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    .registers 1

    .prologue
    .line 36698
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    return-object v0
.end method

.method private getEmailAddressBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 37743
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->emailAddress_:Ljava/lang/Object;

    .line 37744
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 37745
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 37747
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->emailAddress_:Ljava/lang/Object;

    .line 37750
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
    .registers 2

    .prologue
    .line 37755
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->categories_:Ljava/util/List;

    .line 37756
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->emailAddress_:Ljava/lang/Object;

    .line 37757
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 1

    .prologue
    .line 37870
    #calls: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->access$51100()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 37873
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 37817
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->access$51000(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCategories(I)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;
    .registers 3
    .parameter "index"

    .prologue
    .line 37715
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;

    return-object v0
.end method

.method public getCategoriesCount()I
    .registers 2

    .prologue
    .line 37712
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->categories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCategoriesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37705
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->categories_:Ljava/util/List;

    return-object v0
.end method

.method public getCategoriesOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$CategoryOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 37719
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->categories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$CategoryOrBuilder;

    return-object v0
.end method

.method public getCategoriesOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$CategoryOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37709
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->categories_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36687
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    .registers 2

    .prologue
    .line 36702
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .registers 5

    .prologue
    .line 37729
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->emailAddress_:Ljava/lang/Object;

    .line 37730
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 37731
    check-cast v1, Ljava/lang/String;

    .line 37739
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 37733
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 37735
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 37736
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 37737
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->emailAddress_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 37739
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 37780
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->memoizedSerializedSize:I

    .line 37781
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 37793
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 37783
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 37784
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->categories_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 37785
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->categories_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 37784
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 37788
    :cond_22
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_32

    .line 37789
    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getEmailAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 37792
    :cond_32
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->memoizedSerializedSize:I

    move v2, v1

    .line 37793
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public hasEmailAddress()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 37726
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->bitField0_:I

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

    .line 37760
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->memoizedIsInitialized:B

    .line 37761
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 37764
    :goto_8
    return v1

    .line 37761
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 37763
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 36687
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 2

    .prologue
    .line 37871
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 36687
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    .registers 2

    .prologue
    .line 37875
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

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
    .line 37800
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 37769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getSerializedSize()I

    .line 37770
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->categories_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 37771
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->categories_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 37770
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 37773
    :cond_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_29

    .line 37774
    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->getEmailAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 37776
    :cond_29
    return-void
.end method
