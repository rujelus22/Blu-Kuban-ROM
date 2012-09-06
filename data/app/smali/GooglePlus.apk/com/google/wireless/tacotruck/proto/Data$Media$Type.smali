.class public final enum Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Media$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

.field public static final enum ADDRESS:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

.field public static final enum CLUSTER_ID:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

.field public static final enum DOCUMENT:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

.field public static final enum GADGET:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

.field public static final enum IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

.field public static final enum NEWS_SOURCE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

.field public static final enum OFFER:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

.field public static final enum PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

.field public static final enum POST:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

.field public static final enum REVIEW:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

.field public static final enum REVIEW_COUNT:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

.field public static final enum SKYJAM_ALBUM:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

.field public static final enum SKYJAM_SONG:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

.field public static final enum STAR_RATING:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

.field public static final enum TITLE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

.field public static final enum VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Media$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 6359
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    const-string v1, "POST"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 6360
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    const-string v1, "TITLE"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->TITLE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 6361
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    const-string v1, "DOCUMENT"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->DOCUMENT:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 6362
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 6363
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 6364
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    const-string v1, "ADDRESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->ADDRESS:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 6365
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    const-string v1, "OFFER"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->OFFER:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 6366
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    const-string v1, "PHONE_NUMBER"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 6367
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    const-string v1, "REVIEW_COUNT"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->REVIEW_COUNT:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 6368
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    const-string v1, "STAR_RATING"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->STAR_RATING:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 6369
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    const-string v1, "REVIEW"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->REVIEW:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 6370
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    const-string v1, "CLUSTER_ID"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->CLUSTER_ID:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 6371
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    const-string v1, "NEWS_SOURCE"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->NEWS_SOURCE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 6372
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    const-string v1, "SKYJAM_SONG"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->SKYJAM_SONG:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 6373
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    const-string v1, "SKYJAM_ALBUM"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->SKYJAM_ALBUM:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 6374
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    const-string v1, "GADGET"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->GADGET:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 6357
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->TITLE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->DOCUMENT:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->ADDRESS:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->OFFER:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->REVIEW_COUNT:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->STAR_RATING:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->REVIEW:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->CLUSTER_ID:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->NEWS_SOURCE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->SKYJAM_SONG:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->SKYJAM_ALBUM:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->GADGET:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    .line 6424
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 6433
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6434
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->value:I

    .line 6435
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 6398
    packed-switch p0, :pswitch_data_36

    .line 6415
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 6399
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    goto :goto_4

    .line 6400
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->TITLE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    goto :goto_4

    .line 6401
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->DOCUMENT:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    goto :goto_4

    .line 6402
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    goto :goto_4

    .line 6403
    :pswitch_11
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    goto :goto_4

    .line 6404
    :pswitch_14
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->ADDRESS:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    goto :goto_4

    .line 6405
    :pswitch_17
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->OFFER:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    goto :goto_4

    .line 6406
    :pswitch_1a
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    goto :goto_4

    .line 6407
    :pswitch_1d
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->REVIEW_COUNT:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    goto :goto_4

    .line 6408
    :pswitch_20
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->STAR_RATING:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    goto :goto_4

    .line 6409
    :pswitch_23
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->REVIEW:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    goto :goto_4

    .line 6410
    :pswitch_26
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->CLUSTER_ID:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    goto :goto_4

    .line 6411
    :pswitch_29
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->NEWS_SOURCE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    goto :goto_4

    .line 6412
    :pswitch_2c
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->SKYJAM_SONG:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    goto :goto_4

    .line 6413
    :pswitch_2f
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->SKYJAM_ALBUM:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    goto :goto_4

    .line 6414
    :pswitch_32
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->GADGET:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    goto :goto_4

    .line 6398
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 6357
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$Media$Type;
    .registers 1

    .prologue
    .line 6357
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 6395
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->value:I

    return v0
.end method
