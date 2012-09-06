.class public final Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiAccountStatusResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    }
.end annotation


# static fields
.field public static final ACCOUNT_BALANCE_FIELD_NUMBER:I = 0x8

.field public static final ACTIVE_IN_USE_FIELD_NUMBER:I = 0xe

.field public static final ALTERNATE_DID_FIELD_NUMBER:I = 0x5

.field public static final ALTERNATE_DID_FORMATTED_FIELD_NUMBER:I = 0x6

.field public static final DISPLAYABLE_ACCOUNT_BALANCE_FIELD_NUMBER:I = 0xc

.field public static final DISPLAYABLE_MAX_BALANCE_FIELD_NUMBER:I = 0xf

.field public static final DISPLAYABLE_VALID_AMOUNT_FIELD_NUMBER:I = 0x10

.field public static final LABEL_FIELD_NUMBER:I = 0x7

.field public static final MAX_BALANCE_FIELD_NUMBER:I = 0xa

.field public static final PAID_CREDIT_FIELD_NUMBER:I = 0x9

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIMARY_DID_FIELD_NUMBER:I = 0x3

.field public static final PRIMARY_DID_FORMATTED_FIELD_NUMBER:I = 0x4

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field public static final VALID_AMOUNT_FIELD_NUMBER:I = 0xb

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;


# instance fields
.field private accountBalance_:I

.field private activeInUse_:Z

.field private alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

.field private alternateDid_:Lcom/google/protobuf/LazyStringList;

.field private bitField0_:I

.field private displayableAccountBalance_:Ljava/lang/Object;

.field private displayableMaxBalance_:Ljava/lang/Object;

.field private displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

.field private label_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;",
            ">;"
        }
    .end annotation
.end field

.field private maxBalance_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private paidCredit_:I

.field private primaryDidFormatted_:Ljava/lang/Object;

.field private primaryDid_:Ljava/lang/Object;

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

.field private type_:I

.field private validAmount_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2405
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 3921
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    .line 3922
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->initFields()V

    .line 3923
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 13
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2250
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2719
    const/4 v7, -0x1

    iput-byte v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->memoizedIsInitialized:B

    .line 2796
    const/4 v7, -0x1

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->memoizedSerializedSize:I

    .line 2251
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->initFields()V

    .line 2252
    const/4 v4, 0x0

    .line 2254
    .local v4, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 2255
    .local v0, done:Z
    :cond_e
    :goto_e
    if-nez v0, :cond_1ec

    .line 2256
    :try_start_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v6

    .line 2257
    .local v6, tag:I
    sparse-switch v6, :sswitch_data_23a

    .line 2262
    invoke-virtual {p0, p1, p2, v6}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_e

    .line 2264
    const/4 v0, 0x1

    goto :goto_e

    .line 2259
    :sswitch_1f
    const/4 v0, 0x1

    .line 2260
    goto :goto_e

    .line 2269
    :sswitch_21
    const/4 v5, 0x0

    .line 2270
    .local v5, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2f

    .line 2271
    iget-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v7}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v5

    .line 2273
    :cond_2f
    sget-object v7, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 2274
    if-eqz v5, :cond_46

    .line 2275
    iget-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v5, v7}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    .line 2276
    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v7

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 2278
    :cond_46
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I
    :try_end_4c
    .catchall {:try_start_10 .. :try_end_4c} :catchall_53
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_4c} :catch_4d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_4c} :catch_af

    goto :goto_e

    .line 2381
    .end local v5           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .end local v6           #tag:I
    :catch_4d
    move-exception v1

    .line 2382
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_53

    .line 2387
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_53
    move-exception v7

    and-int/lit8 v8, v4, 0x10

    const/16 v9, 0x10

    if-ne v8, v9, :cond_63

    .line 2388
    new-instance v8, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v9, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v8, v9}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v8, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    .line 2390
    :cond_63
    and-int/lit8 v8, v4, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_72

    .line 2391
    new-instance v8, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v9, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v8, v9}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v8, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    .line 2393
    :cond_72
    and-int/lit8 v8, v4, 0x40

    const/16 v9, 0x40

    if-ne v8, v9, :cond_80

    .line 2394
    iget-object v8, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->label_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->label_:Ljava/util/List;

    .line 2396
    :cond_80
    and-int/lit16 v8, v4, 0x400

    const/16 v9, 0x400

    if-ne v8, v9, :cond_8e

    .line 2397
    iget-object v8, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->validAmount_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->validAmount_:Ljava/util/List;

    .line 2399
    :cond_8e
    and-int/lit16 v8, v4, 0x4000

    const/16 v9, 0x4000

    if-ne v8, v9, :cond_9d

    .line 2400
    new-instance v8, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v9, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v8, v9}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v8, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    .line 2402
    :cond_9d
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->makeExtensionsImmutable()V

    throw v7

    .line 2282
    .restart local v6       #tag:I
    :sswitch_a1
    :try_start_a1
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    .line 2283
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v7

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->type_:I
    :try_end_ad
    .catchall {:try_start_a1 .. :try_end_ad} :catchall_53
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_a1 .. :try_end_ad} :catch_4d
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_ad} :catch_af

    goto/16 :goto_e

    .line 2383
    .end local v6           #tag:I
    :catch_af
    move-exception v1

    .line 2384
    .local v1, e:Ljava/io/IOException;
    :try_start_b0
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_be
    .catchall {:try_start_b0 .. :try_end_be} :catchall_53

    .line 2287
    .end local v1           #e:Ljava/io/IOException;
    .restart local v6       #tag:I
    :sswitch_be
    :try_start_be
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    .line 2288
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->primaryDid_:Ljava/lang/Object;

    goto/16 :goto_e

    .line 2292
    :sswitch_cc
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    .line 2293
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->primaryDidFormatted_:Ljava/lang/Object;

    goto/16 :goto_e

    .line 2297
    :sswitch_da
    and-int/lit8 v7, v4, 0x10

    const/16 v8, 0x10

    if-eq v7, v8, :cond_e9

    .line 2298
    new-instance v7, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v7}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    .line 2299
    or-int/lit8 v4, v4, 0x10

    .line 2301
    :cond_e9
    iget-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_e

    .line 2305
    :sswitch_f4
    and-int/lit8 v7, v4, 0x20

    const/16 v8, 0x20

    if-eq v7, v8, :cond_103

    .line 2306
    new-instance v7, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v7}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    .line 2307
    or-int/lit8 v4, v4, 0x20

    .line 2309
    :cond_103
    iget-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_e

    .line 2313
    :sswitch_10e
    and-int/lit8 v7, v4, 0x40

    const/16 v8, 0x40

    if-eq v7, v8, :cond_11d

    .line 2314
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->label_:Ljava/util/List;

    .line 2315
    or-int/lit8 v4, v4, 0x40

    .line 2317
    :cond_11d
    iget-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->label_:Ljava/util/List;

    sget-object v8, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 2321
    :sswitch_12a
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    .line 2322
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->accountBalance_:I

    goto/16 :goto_e

    .line 2326
    :sswitch_138
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    .line 2327
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->paidCredit_:I

    goto/16 :goto_e

    .line 2331
    :sswitch_146
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    .line 2332
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->maxBalance_:I

    goto/16 :goto_e

    .line 2336
    :sswitch_154
    and-int/lit16 v7, v4, 0x400

    const/16 v8, 0x400

    if-eq v7, v8, :cond_163

    .line 2337
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->validAmount_:Ljava/util/List;

    .line 2338
    or-int/lit16 v4, v4, 0x400

    .line 2340
    :cond_163
    iget-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->validAmount_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 2344
    :sswitch_172
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 2345
    .local v2, length:I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    .line 2346
    .local v3, limit:I
    and-int/lit16 v7, v4, 0x400

    const/16 v8, 0x400

    if-eq v7, v8, :cond_18f

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v7

    if-lez v7, :cond_18f

    .line 2347
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->validAmount_:Ljava/util/List;

    .line 2348
    or-int/lit16 v4, v4, 0x400

    .line 2350
    :cond_18f
    :goto_18f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v7

    if-lez v7, :cond_1a3

    .line 2351
    iget-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->validAmount_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18f

    .line 2353
    :cond_1a3
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_e

    .line 2357
    .end local v2           #length:I
    .end local v3           #limit:I
    :sswitch_1a8
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    or-int/lit16 v7, v7, 0x80

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    .line 2358
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableAccountBalance_:Ljava/lang/Object;

    goto/16 :goto_e

    .line 2362
    :sswitch_1b6
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    or-int/lit16 v7, v7, 0x100

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    .line 2363
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->activeInUse_:Z

    goto/16 :goto_e

    .line 2367
    :sswitch_1c4
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    or-int/lit16 v7, v7, 0x200

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    .line 2368
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableMaxBalance_:Ljava/lang/Object;

    goto/16 :goto_e

    .line 2372
    :sswitch_1d2
    and-int/lit16 v7, v4, 0x4000

    const/16 v8, 0x4000

    if-eq v7, v8, :cond_1e1

    .line 2373
    new-instance v7, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v7}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    .line 2374
    or-int/lit16 v4, v4, 0x4000

    .line 2376
    :cond_1e1
    iget-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
    :try_end_1ea
    .catchall {:try_start_be .. :try_end_1ea} :catchall_53
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_be .. :try_end_1ea} :catch_4d
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_1ea} :catch_af

    goto/16 :goto_e

    .line 2387
    .end local v6           #tag:I
    :cond_1ec
    and-int/lit8 v7, v4, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_1fb

    .line 2388
    new-instance v7, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v8, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v7, v8}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    .line 2390
    :cond_1fb
    and-int/lit8 v7, v4, 0x20

    const/16 v8, 0x20

    if-ne v7, v8, :cond_20a

    .line 2391
    new-instance v7, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v8, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v7, v8}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    .line 2393
    :cond_20a
    and-int/lit8 v7, v4, 0x40

    const/16 v8, 0x40

    if-ne v7, v8, :cond_218

    .line 2394
    iget-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->label_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->label_:Ljava/util/List;

    .line 2396
    :cond_218
    and-int/lit16 v7, v4, 0x400

    const/16 v8, 0x400

    if-ne v7, v8, :cond_226

    .line 2397
    iget-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->validAmount_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->validAmount_:Ljava/util/List;

    .line 2399
    :cond_226
    and-int/lit16 v7, v4, 0x4000

    const/16 v8, 0x4000

    if-ne v7, v8, :cond_235

    .line 2400
    new-instance v7, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v8, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v7, v8}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    .line 2402
    :cond_235
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->makeExtensionsImmutable()V

    .line 2404
    return-void

    .line 2257
    nop

    :sswitch_data_23a
    .sparse-switch
        0x0 -> :sswitch_1f
        0xa -> :sswitch_21
        0x10 -> :sswitch_a1
        0x1a -> :sswitch_be
        0x22 -> :sswitch_cc
        0x2a -> :sswitch_da
        0x32 -> :sswitch_f4
        0x3a -> :sswitch_10e
        0x40 -> :sswitch_12a
        0x48 -> :sswitch_138
        0x50 -> :sswitch_146
        0x58 -> :sswitch_154
        0x5a -> :sswitch_172
        0x62 -> :sswitch_1a8
        0x70 -> :sswitch_1b6
        0x7a -> :sswitch_1c4
        0x82 -> :sswitch_1d2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2228
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2233
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2719
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->memoizedIsInitialized:B

    .line 2796
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->memoizedSerializedSize:I

    .line 2235
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2228
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2236
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2719
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->memoizedIsInitialized:B

    .line 2796
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->memoizedSerializedSize:I

    .line 2236
    return-void
.end method

.method static synthetic access$2902(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2228
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2228
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->type_:I

    return p1
.end method

.method static synthetic access$3100(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->primaryDid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2228
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->primaryDid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->primaryDidFormatted_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2228
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->primaryDidFormatted_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2228
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2228
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->label_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2228
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->label_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2228
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->accountBalance_:I

    return p1
.end method

.method static synthetic access$3702(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2228
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->paidCredit_:I

    return p1
.end method

.method static synthetic access$3802(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2228
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->maxBalance_:I

    return p1
.end method

.method static synthetic access$3900(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->validAmount_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2228
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->validAmount_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableAccountBalance_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2228
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableAccountBalance_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2228
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->activeInUse_:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableMaxBalance_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2228
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableMaxBalance_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2228
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2228
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;
    .registers 1

    .prologue
    .line 2240
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2703
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 2704
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->type_:I

    .line 2705
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->primaryDid_:Ljava/lang/Object;

    .line 2706
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->primaryDidFormatted_:Ljava/lang/Object;

    .line 2707
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    .line 2708
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    .line 2709
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->label_:Ljava/util/List;

    .line 2710
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->accountBalance_:I

    .line 2711
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->paidCredit_:I

    .line 2712
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->maxBalance_:I

    .line 2713
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->validAmount_:Ljava/util/List;

    .line 2714
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableAccountBalance_:Ljava/lang/Object;

    .line 2715
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->activeInUse_:Z

    .line 2716
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableMaxBalance_:Ljava/lang/Object;

    .line 2717
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    .line 2718
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 1

    .prologue
    .line 2945
    #calls: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->access$2700()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2948
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2925
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2931
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2895
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2901
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2936
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2942
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2915
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2921
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2905
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2911
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    return-object v0
.end method


# virtual methods
.method public getAccountBalance()I
    .registers 2

    .prologue
    .line 2571
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->accountBalance_:I

    return v0
.end method

.method public getActiveInUse()Z
    .registers 2

    .prologue
    .line 2648
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->activeInUse_:Z

    return v0
.end method

.method public getAlternateDid(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 2518
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAlternateDidBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAlternateDidCount()I
    .registers 2

    .prologue
    .line 2515
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getAlternateDidFormatted(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 2536
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAlternateDidFormattedBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 2540
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAlternateDidFormattedCount()I
    .registers 2

    .prologue
    .line 2533
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getAlternateDidFormattedList()Ljava/util/List;
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
    .line 2530
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getAlternateDidList()Ljava/util/List;
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
    .line 2512
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;
    .registers 2

    .prologue
    .line 2244
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2228
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayableAccountBalance()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2615
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableAccountBalance_:Ljava/lang/Object;

    .line 2616
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2617
    check-cast v1, Ljava/lang/String;

    .line 2625
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2619
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2621
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2622
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2623
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableAccountBalance_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2625
    goto :goto_8
.end method

.method public getDisplayableAccountBalanceBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2630
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableAccountBalance_:Ljava/lang/Object;

    .line 2631
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2632
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2634
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableAccountBalance_:Ljava/lang/Object;

    .line 2637
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

.method public getDisplayableMaxBalance()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2658
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableMaxBalance_:Ljava/lang/Object;

    .line 2659
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2660
    check-cast v1, Ljava/lang/String;

    .line 2668
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2662
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2664
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2665
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2666
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableMaxBalance_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2668
    goto :goto_8
.end method

.method public getDisplayableMaxBalanceBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2673
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableMaxBalance_:Ljava/lang/Object;

    .line 2674
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2675
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2677
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableMaxBalance_:Ljava/lang/Object;

    .line 2680
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

.method public getDisplayableValidAmount(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 2695
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayableValidAmountBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 2699
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayableValidAmountCount()I
    .registers 2

    .prologue
    .line 2692
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDisplayableValidAmountList()Ljava/util/List;
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
    .line 2689
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getLabel(I)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    .registers 3
    .parameter "index"

    .prologue
    .line 2557
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->label_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    return-object v0
.end method

.method public getLabelCount()I
    .registers 2

    .prologue
    .line 2554
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->label_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLabelList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2547
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->label_:Ljava/util/List;

    return-object v0
.end method

.method public getLabelOrBuilder(I)Lcom/google/grandcentral/api2/Api2$ApiConversationLabelOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 2561
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->label_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabelOrBuilder;

    return-object v0
.end method

.method public getLabelOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/grandcentral/api2/Api2$ApiConversationLabelOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2551
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->label_:Ljava/util/List;

    return-object v0
.end method

.method public getMaxBalance()I
    .registers 2

    .prologue
    .line 2591
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->maxBalance_:I

    return v0
.end method

.method public getPaidCredit()I
    .registers 2

    .prologue
    .line 2581
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->paidCredit_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2417
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPrimaryDid()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2448
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->primaryDid_:Ljava/lang/Object;

    .line 2449
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2450
    check-cast v1, Ljava/lang/String;

    .line 2458
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2452
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2454
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2455
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2456
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->primaryDid_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2458
    goto :goto_8
.end method

.method public getPrimaryDidBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2463
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->primaryDid_:Ljava/lang/Object;

    .line 2464
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2465
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2467
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->primaryDid_:Ljava/lang/Object;

    .line 2470
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

.method public getPrimaryDidFormatted()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2481
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->primaryDidFormatted_:Ljava/lang/Object;

    .line 2482
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2483
    check-cast v1, Ljava/lang/String;

    .line 2491
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2485
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2487
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2488
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2489
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->primaryDidFormatted_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2491
    goto :goto_8
.end method

.method public getPrimaryDidFormattedBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2496
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->primaryDidFormatted_:Ljava/lang/Object;

    .line 2497
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2498
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2500
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->primaryDidFormatted_:Ljava/lang/Object;

    .line 2503
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

.method public getSerializedSize()I
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2798
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->memoizedSerializedSize:I

    .line 2799
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_c

    move v3, v2

    .line 2883
    .end local v2           #size:I
    .local v3, size:I
    :goto_b
    return v3

    .line 2801
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_c
    const/4 v2, 0x0

    .line 2802
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1a

    .line 2803
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2806
    :cond_1a
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_27

    .line 2807
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->type_:I

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2810
    :cond_27
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_37

    .line 2811
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getPrimaryDidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2814
    :cond_37
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v8, :cond_46

    .line 2815
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getPrimaryDidFormattedBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2819
    :cond_46
    const/4 v0, 0x0

    .line 2820
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_48
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5e

    .line 2821
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 2820
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 2824
    :cond_5e
    add-int/2addr v2, v0

    .line 2825
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getAlternateDidList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 2828
    const/4 v0, 0x0

    .line 2829
    const/4 v1, 0x0

    :goto_6c
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_82

    .line 2830
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 2829
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    .line 2833
    :cond_82
    add-int/2addr v2, v0

    .line 2834
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getAlternateDidFormattedList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 2836
    const/4 v1, 0x0

    :goto_8f
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->label_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_a8

    .line 2837
    const/4 v5, 0x7

    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->label_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2836
    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    .line 2840
    :cond_a8
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_b7

    .line 2841
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->accountBalance_:I

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2844
    :cond_b7
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_c8

    .line 2845
    const/16 v4, 0x9

    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->paidCredit_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2848
    :cond_c8
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_d9

    .line 2849
    const/16 v4, 0xa

    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->maxBalance_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2853
    :cond_d9
    const/4 v0, 0x0

    .line 2854
    const/4 v1, 0x0

    :goto_db
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->validAmount_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_f7

    .line 2855
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->validAmount_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 2854
    add-int/lit8 v1, v1, 0x1

    goto :goto_db

    .line 2858
    :cond_f7
    add-int/2addr v2, v0

    .line 2859
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getValidAmountList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 2861
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_116

    .line 2862
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getDisplayableAccountBalanceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2865
    :cond_116
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_127

    .line 2866
    const/16 v4, 0xe

    iget-boolean v5, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->activeInUse_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 2869
    :cond_127
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_13a

    .line 2870
    const/16 v4, 0xf

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getDisplayableMaxBalanceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2874
    :cond_13a
    const/4 v0, 0x0

    .line 2875
    const/4 v1, 0x0

    :goto_13c
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_152

    .line 2876
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 2875
    add-int/lit8 v1, v1, 0x1

    goto :goto_13c

    .line 2879
    :cond_152
    add-int/2addr v2, v0

    .line 2880
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getDisplayableValidAmountList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 2882
    iput v2, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->memoizedSerializedSize:I

    move v3, v2

    .line 2883
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_b
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 2428
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 2438
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->type_:I

    return v0
.end method

.method public getValidAmount(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 2605
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->validAmount_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getValidAmountCount()I
    .registers 2

    .prologue
    .line 2602
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->validAmount_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getValidAmountList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2599
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->validAmount_:Ljava/util/List;

    return-object v0
.end method

.method public hasAccountBalance()Z
    .registers 3

    .prologue
    .line 2568
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

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

.method public hasActiveInUse()Z
    .registers 3

    .prologue
    .line 2645
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDisplayableAccountBalance()Z
    .registers 3

    .prologue
    .line 2612
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

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

.method public hasDisplayableMaxBalance()Z
    .registers 3

    .prologue
    .line 2655
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasMaxBalance()Z
    .registers 3

    .prologue
    .line 2588
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

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

.method public hasPaidCredit()Z
    .registers 3

    .prologue
    .line 2578
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

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

.method public hasPrimaryDid()Z
    .registers 3

    .prologue
    .line 2445
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

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

.method public hasPrimaryDidFormatted()Z
    .registers 3

    .prologue
    .line 2478
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2425
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasType()Z
    .registers 3

    .prologue
    .line 2435
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

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
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2721
    iget-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->memoizedIsInitialized:B

    .line 2722
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_d

    if-ne v1, v2, :cond_b

    :goto_9
    move v3, v2

    .line 2743
    :goto_a
    return v3

    :cond_b
    move v2, v3

    .line 2722
    goto :goto_9

    .line 2724
    :cond_d
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->hasStatus()Z

    move-result v4

    if-nez v4, :cond_16

    .line 2725
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 2728
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->hasType()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 2729
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 2732
    :cond_1f
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 2733
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 2736
    :cond_2c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2d
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getLabelCount()I

    move-result v4

    if-ge v0, v4, :cond_43

    .line 2737
    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getLabel(I)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_40

    .line 2738
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 2736
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 2742
    :cond_43
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->memoizedIsInitialized:B

    move v3, v2

    .line 2743
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 2

    .prologue
    .line 2946
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2228
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 2

    .prologue
    .line 2950
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2228
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

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
    .line 2889
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 9
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2748
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getSerializedSize()I

    .line 2749
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 2750
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2752
    :cond_15
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_20

    .line 2753
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->type_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 2755
    :cond_20
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2e

    .line 2756
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getPrimaryDidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2758
    :cond_2e
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3b

    .line 2759
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getPrimaryDidFormattedBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2761
    :cond_3b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3c
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_51

    .line 2762
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2761
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 2764
    :cond_51
    const/4 v0, 0x0

    :goto_52
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_67

    .line 2765
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2764
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 2767
    :cond_67
    const/4 v0, 0x0

    :goto_68
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->label_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7f

    .line 2768
    const/4 v2, 0x7

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->label_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2767
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    .line 2770
    :cond_7f
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_8a

    .line 2771
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->accountBalance_:I

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2773
    :cond_8a
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_99

    .line 2774
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->paidCredit_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2776
    :cond_99
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_a8

    .line 2777
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->maxBalance_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2779
    :cond_a8
    const/4 v0, 0x0

    :goto_a9
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->validAmount_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c5

    .line 2780
    const/16 v2, 0xb

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->validAmount_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2779
    add-int/lit8 v0, v0, 0x1

    goto :goto_a9

    .line 2782
    :cond_c5
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_d6

    .line 2783
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getDisplayableAccountBalanceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2785
    :cond_d6
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_e5

    .line 2786
    const/16 v1, 0xe

    iget-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->activeInUse_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2788
    :cond_e5
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_f6

    .line 2789
    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getDisplayableMaxBalanceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2791
    :cond_f6
    const/4 v0, 0x0

    :goto_f7
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_10b

    .line 2792
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2791
    add-int/lit8 v0, v0, 0x1

    goto :goto_f7

    .line 2794
    :cond_10b
    return-void
.end method
