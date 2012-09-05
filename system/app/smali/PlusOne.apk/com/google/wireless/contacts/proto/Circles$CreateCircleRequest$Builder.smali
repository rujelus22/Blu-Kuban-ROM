.class public final Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Circles.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;",
        "Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

.field private description_:Ljava/lang/Object;

.field private email_:Ljava/lang/Object;

.field private forSharing_:Z

.field private membersToAdd_:Lcom/google/protobuf/LazyStringList;

.field private name_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1177
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1356
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 1380
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->name_:Ljava/lang/Object;

    .line 1416
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->email_:Ljava/lang/Object;

    .line 1452
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->description_:Ljava/lang/Object;

    .line 1488
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    .line 1178
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->maybeForceBuilderInitialization()V

    .line 1179
    return-void
.end method

.method static synthetic access$1100()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 1

    .prologue
    .line 1172
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 1

    .prologue
    .line 1184
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureMembersToAddIsMutable()V
    .registers 3

    .prologue
    .line 1490
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 1491
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    .line 1492
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1494
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1182
    return-void
.end method


# virtual methods
.method public addAllMembersToAdd(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 1526
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->ensureMembersToAddIsMutable()V

    .line 1527
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1529
    return-object p0
.end method

.method public addMembersToAdd(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1516
    if-nez p1, :cond_8

    .line 1517
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1519
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->ensureMembersToAddIsMutable()V

    .line 1520
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1522
    return-object p0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;
    .registers 3

    .prologue
    .line 1213
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    move-result-object v0

    .line 1214
    .local v0, result:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1215
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1217
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;
    .registers 6

    .prologue
    .line 1231
    new-instance v1, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;-><init>(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;Lcom/google/wireless/contacts/proto/Circles$1;)V

    .line 1232
    .local v1, result:Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1233
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1234
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1235
    or-int/lit8 v2, v2, 0x1

    .line 1237
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    #setter for: Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->access$1302(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 1238
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1239
    or-int/lit8 v2, v2, 0x2

    .line 1241
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->access$1402(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 1243
    or-int/lit8 v2, v2, 0x4

    .line 1245
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->email_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->email_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->access$1502(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 1247
    or-int/lit8 v2, v2, 0x8

    .line 1249
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->description_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->description_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->access$1602(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    iget v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_51

    .line 1251
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    .line 1253
    iget v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1255
    :cond_51
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->membersToAdd_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->access$1702(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 1256
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5e

    .line 1257
    or-int/lit8 v2, v2, 0x10

    .line 1259
    :cond_5e
    iget-boolean v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->forSharing_:Z

    #setter for: Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->forSharing_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->access$1802(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;Z)Z

    .line 1260
    #setter for: Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->access$1902(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;I)I

    .line 1261
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->clear()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 2

    .prologue
    .line 1188
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1189
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 1190
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1191
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->name_:Ljava/lang/Object;

    .line 1192
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1193
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->email_:Ljava/lang/Object;

    .line 1194
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1195
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->description_:Ljava/lang/Object;

    .line 1196
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1197
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    .line 1198
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->forSharing_:Z

    .line 1200
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1201
    return-object p0
.end method

.method public clearCircleType()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 2

    .prologue
    .line 1373
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1374
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 1376
    return-object p0
.end method

.method public clearDescription()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 2

    .prologue
    .line 1476
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1477
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->description_:Ljava/lang/Object;

    .line 1479
    return-object p0
.end method

.method public clearEmail()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 2

    .prologue
    .line 1440
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1441
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->email_:Ljava/lang/Object;

    .line 1443
    return-object p0
.end method

.method public clearForSharing()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 2

    .prologue
    .line 1558
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->forSharing_:Z

    .line 1561
    return-object p0
.end method

.method public clearMembersToAdd()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 2

    .prologue
    .line 1532
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    .line 1533
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1535
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 2

    .prologue
    .line 1404
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1405
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->name_:Ljava/lang/Object;

    .line 1407
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 3

    .prologue
    .line 1205
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->clone()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    .registers 2

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;
    .registers 2

    .prologue
    .line 1209
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->description_:Ljava/lang/Object;

    .line 1458
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1459
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1460
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->description_:Ljava/lang/Object;

    .line 1463
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getEmail()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->email_:Ljava/lang/Object;

    .line 1422
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1423
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1424
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->email_:Ljava/lang/Object;

    .line 1427
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getForSharing()Z
    .registers 2

    .prologue
    .line 1549
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->forSharing_:Z

    return v0
.end method

.method public getMembersToAdd(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMembersToAddCount()I
    .registers 2

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

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
    .line 1497
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->name_:Ljava/lang/Object;

    .line 1386
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1387
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1388
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->name_:Ljava/lang/Object;

    .line 1391
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public hasCircleType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1358
    iget v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

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
    .line 1454
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

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
    .line 1418
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

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
    .line 1546
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    .line 1382
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

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

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1172
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1172
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1303
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1304
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_62

    .line 1309
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1311
    :sswitch_d
    return-object p0

    .line 1316
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1317
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->valueOf(I)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v2

    .line 1318
    .local v2, value:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    if-eqz v2, :cond_0

    .line 1319
    iget v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1320
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    goto :goto_0

    .line 1325
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1326
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 1330
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1331
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->email_:Ljava/lang/Object;

    goto :goto_0

    .line 1335
    :sswitch_3b
    iget v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1336
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 1340
    :sswitch_48
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->ensureMembersToAddIsMutable()V

    .line 1341
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 1345
    :sswitch_55
    iget v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1346
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->forSharing_:Z

    goto :goto_0

    .line 1304
    :sswitch_data_62
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x22 -> :sswitch_3b
        0x2a -> :sswitch_48
        0x30 -> :sswitch_55
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 1265
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1291
    :cond_6
    :goto_6
    return-object p0

    .line 1266
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->hasCircleType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1267
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getCircleType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->setCircleType(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    .line 1269
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->hasName()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1270
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    .line 1272
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1273
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    .line 1275
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1276
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->setDescription(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    .line 1278
    :cond_3b
    #getter for: Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->membersToAdd_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->access$1700(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    .line 1279
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1280
    #getter for: Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->membersToAdd_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->access$1700(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    .line 1281
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1288
    :cond_59
    :goto_59
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->hasForSharing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1289
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->getForSharing()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->setForSharing(Z)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;

    goto :goto_6

    .line 1283
    :cond_67
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->ensureMembersToAddIsMutable()V

    .line 1284
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->membersToAdd_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;->access$1700(Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_59
.end method

.method public setCircleType(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1364
    if-nez p1, :cond_8

    .line 1365
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1367
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1368
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->circleType_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 1370
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1467
    if-nez p1, :cond_8

    .line 1468
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1470
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1471
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->description_:Ljava/lang/Object;

    .line 1473
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1431
    if-nez p1, :cond_8

    .line 1432
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1434
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1435
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->email_:Ljava/lang/Object;

    .line 1437
    return-object p0
.end method

.method public setForSharing(Z)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1552
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1553
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->forSharing_:Z

    .line 1555
    return-object p0
.end method

.method public setMembersToAdd(ILjava/lang/String;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1507
    if-nez p2, :cond_8

    .line 1508
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1510
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->ensureMembersToAddIsMutable()V

    .line 1511
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->membersToAdd_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1513
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1395
    if-nez p1, :cond_8

    .line 1396
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1398
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->bitField0_:I

    .line 1399
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleRequest$Builder;->name_:Ljava/lang/Object;

    .line 1401
    return-object p0
.end method
