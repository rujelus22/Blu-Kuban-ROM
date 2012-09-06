.class public final Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Circles.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Circles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateCircleRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

.field private description_:Ljava/lang/Object;

.field private email_:Ljava/lang/Object;

.field private forSharing_:Z

.field private membersToAdd_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1568
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    .line 1569
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->initFields()V

    .line 1570
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 868
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1020
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->memoizedIsInitialized:B

    .line 1052
    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->memoizedSerializedSize:I

    .line 869
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;Lcom/google/wireless/contacts/proto/Circles$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 863
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;-><init>(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 870
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1020
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->memoizedIsInitialized:B

    .line 1052
    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->memoizedSerializedSize:I

    .line 870
    return-void
.end method

.method static synthetic access$1302(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 863
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 863
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 863
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->email_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 863
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 863
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 863
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 863
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->forSharing_:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 863
    iput p1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;
    .registers 1

    .prologue
    .line 874
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    return-object v0
.end method

.method private getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 977
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->description_:Ljava/lang/Object;

    .line 978
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 979
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 981
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->description_:Ljava/lang/Object;

    .line 984
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

.method private getEmailBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 945
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->email_:Ljava/lang/Object;

    .line 946
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 947
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 949
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->email_:Ljava/lang/Object;

    .line 952
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

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 913
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->name_:Ljava/lang/Object;

    .line 914
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 915
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 917
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->name_:Ljava/lang/Object;

    .line 920
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
    .line 1013
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 1014
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->name_:Ljava/lang/Object;

    .line 1015
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->email_:Ljava/lang/Object;

    .line 1016
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->description_:Ljava/lang/Object;

    .line 1017
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    .line 1018
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->forSharing_:Z

    .line 1019
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 1

    .prologue
    .line 1165
    #calls: Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->access$1100()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1168
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    .registers 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;
    .registers 2

    .prologue
    .line 878
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 5

    .prologue
    .line 963
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->description_:Ljava/lang/Object;

    .line 964
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 965
    check-cast v1, Ljava/lang/String;

    .line 973
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 967
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 969
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 970
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 971
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->description_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 973
    goto :goto_8
.end method

.method public getEmail()Ljava/lang/String;
    .registers 5

    .prologue
    .line 931
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->email_:Ljava/lang/Object;

    .line 932
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 933
    check-cast v1, Ljava/lang/String;

    .line 941
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 935
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 937
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 938
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 939
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->email_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 941
    goto :goto_8
.end method

.method public getForSharing()Z
    .registers 2

    .prologue
    .line 1009
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->forSharing_:Z

    return v0
.end method

.method public getMembersToAdd(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 999
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMembersToAddCount()I
    .registers 2

    .prologue
    .line 996
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getMembersToAddList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 993
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 899
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->name_:Ljava/lang/Object;

    .line 900
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 901
    check-cast v1, Ljava/lang/String;

    .line 909
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 903
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 905
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 906
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 907
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 909
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1054
    iget v2, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->memoizedSerializedSize:I

    .line 1055
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_a

    move v3, v2

    .line 1088
    .end local v2           #size:I
    .local v3, size:I
    :goto_9
    return v3

    .line 1057
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_a
    const/4 v2, 0x0

    .line 1058
    iget v4, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1c

    .line 1059
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    invoke-virtual {v4}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->getNumber()I

    move-result v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 1062
    :cond_1c
    iget v4, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_2b

    .line 1063
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1066
    :cond_2b
    iget v4, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_3b

    .line 1067
    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1070
    :cond_3b
    iget v4, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4c

    .line 1071
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1075
    :cond_4c
    const/4 v0, 0x0

    .line 1076
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4e
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_64

    .line 1077
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1076
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 1080
    :cond_64
    add-int/2addr v2, v0

    .line 1081
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getMembersToAddList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 1083
    iget v4, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_80

    .line 1084
    const/4 v4, 0x6

    iget-boolean v5, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->forSharing_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 1087
    :cond_80
    iput v2, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 1088
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_9
.end method

.method public hasCircleType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 886
    iget v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 960
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->bitField0_:I

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

.method public hasEmail()Z
    .registers 3

    .prologue
    .line 928
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->bitField0_:I

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

.method public hasForSharing()Z
    .registers 3

    .prologue
    .line 1006
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    .line 896
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1022
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->memoizedIsInitialized:B

    .line 1023
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1026
    :goto_8
    return v1

    .line 1023
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1025
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->newBuilderForType()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 2

    .prologue
    .line 1166
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->toBuilder()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 2

    .prologue
    .line 1170
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->newBuilder(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

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
    .line 1095
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1031
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getSerializedSize()I

    .line 1032
    iget v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 1033
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1035
    :cond_15
    iget v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_22

    .line 1036
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1038
    :cond_22
    iget v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_30

    .line 1039
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1041
    :cond_30
    iget v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3f

    .line 1042
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1044
    :cond_3f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_40
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_55

    .line 1045
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1044
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 1047
    :cond_55
    iget v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_63

    .line 1048
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->forSharing_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1050
    :cond_63
    return-void
.end method
