.class public final enum Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Explanation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

.field public static final enum CHECKIN:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

.field public static final enum OFFER:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

.field public static final enum POPULAR_IN_CIRCLE:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

.field public static final enum POPULAR_TOPIC:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

.field public static final enum POSTED_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

.field public static final enum RECOMMENDED_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

.field public static final enum SHARED_AD_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

.field public static final enum SHARED_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

.field public static final enum SHARED_PLUS_PAGE_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

.field public static final enum UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

.field public static final enum YOU_ARE_AT:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;",
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

    .line 2237
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    const-string v1, "POSTED_BY"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->POSTED_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2238
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    const-string v1, "SHARED_BY"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->SHARED_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2239
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    const-string v1, "POPULAR_TOPIC"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->POPULAR_TOPIC:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2240
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    const-string v1, "POPULAR_IN_CIRCLE"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->POPULAR_IN_CIRCLE:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2241
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    const-string v1, "YOU_ARE_AT"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->YOU_ARE_AT:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2242
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    const-string v1, "OFFER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->OFFER:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2243
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    const-string v1, "RECOMMENDED_BY"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->RECOMMENDED_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2244
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2245
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    const-string v1, "SHARED_AD_BY"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->SHARED_AD_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2246
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    const-string v1, "CHECKIN"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->CHECKIN:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2247
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    const-string v1, "SHARED_PLUS_PAGE_BY"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->SHARED_PLUS_PAGE_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2235
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->POSTED_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->SHARED_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->POPULAR_TOPIC:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->POPULAR_IN_CIRCLE:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->YOU_ARE_AT:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->OFFER:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->RECOMMENDED_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->SHARED_AD_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->CHECKIN:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->SHARED_PLUS_PAGE_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2287
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 2296
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2297
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->value:I

    .line 2298
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 2266
    packed-switch p0, :pswitch_data_26

    .line 2278
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 2267
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->POSTED_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    goto :goto_4

    .line 2268
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->SHARED_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    goto :goto_4

    .line 2269
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->POPULAR_TOPIC:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    goto :goto_4

    .line 2270
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->POPULAR_IN_CIRCLE:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    goto :goto_4

    .line 2271
    :pswitch_11
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->YOU_ARE_AT:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    goto :goto_4

    .line 2272
    :pswitch_14
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->OFFER:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    goto :goto_4

    .line 2273
    :pswitch_17
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->RECOMMENDED_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    goto :goto_4

    .line 2274
    :pswitch_1a
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    goto :goto_4

    .line 2275
    :pswitch_1d
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->SHARED_AD_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    goto :goto_4

    .line 2276
    :pswitch_20
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->CHECKIN:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    goto :goto_4

    .line 2277
    :pswitch_23
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->SHARED_PLUS_PAGE_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    goto :goto_4

    .line 2266
    :pswitch_data_26
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
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 2235
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;
    .registers 1

    .prologue
    .line 2235
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 2263
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->value:I

    return v0
.end method
