.class public final enum Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
.super Ljava/lang/Enum;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

.field public static final enum ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

.field public static final enum ALL_MEDIA:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

.field public static final enum CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

.field public static final enum COUPONS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

.field public static final enum GAMES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

.field public static final enum MAIN:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

.field public static final enum NEARBY:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

.field public static final enum NEARBY_PLACES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

.field public static final enum NEARBY_POSTS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

.field public static final enum NEWS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

.field public static final enum NOTIFICATIONS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

.field public static final enum PHOTOS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

.field public static final enum PLACES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

.field public static final enum STRANGERS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

.field public static final enum VIDEOS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

.field public static final enum WHATS_HOT:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;",
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

    .line 3044
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    const-string v1, "ALL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3045
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    const-string v1, "NEARBY"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->NEARBY:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3046
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    const-string v1, "PHOTOS"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->PHOTOS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3047
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    const-string v1, "VIDEOS"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->VIDEOS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3048
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    const-string v1, "NEWS"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->NEWS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3049
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    const-string v1, "NOTIFICATIONS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->NOTIFICATIONS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3050
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    const-string v1, "COUPONS"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->COUPONS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3051
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    const-string v1, "PLACES"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->PLACES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3052
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    const-string v1, "MAIN"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->MAIN:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3053
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    const-string v1, "CIRCLES"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3054
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    const-string v1, "ALL_MEDIA"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->ALL_MEDIA:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3055
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    const-string v1, "NEARBY_PLACES"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->NEARBY_PLACES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3056
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    const-string v1, "NEARBY_POSTS"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->NEARBY_POSTS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3057
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    const-string v1, "STRANGERS"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->STRANGERS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3058
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    const-string v1, "GAMES"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->GAMES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3059
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    const-string v1, "WHATS_HOT"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->WHATS_HOT:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3042
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->NEARBY:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->PHOTOS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->VIDEOS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->NEWS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->NOTIFICATIONS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->COUPONS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->PLACES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->MAIN:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->ALL_MEDIA:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->NEARBY_PLACES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->NEARBY_POSTS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->STRANGERS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->GAMES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->WHATS_HOT:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3109
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 3118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3119
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->value:I

    .line 3120
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    .registers 2
    .parameter "value"

    .prologue
    .line 3083
    packed-switch p0, :pswitch_data_36

    .line 3100
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 3084
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    goto :goto_4

    .line 3085
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->NEARBY:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    goto :goto_4

    .line 3086
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->PHOTOS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    goto :goto_4

    .line 3087
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->VIDEOS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    goto :goto_4

    .line 3088
    :pswitch_11
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->NEWS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    goto :goto_4

    .line 3089
    :pswitch_14
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->NOTIFICATIONS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    goto :goto_4

    .line 3090
    :pswitch_17
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->COUPONS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    goto :goto_4

    .line 3091
    :pswitch_1a
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->PLACES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    goto :goto_4

    .line 3092
    :pswitch_1d
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->MAIN:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    goto :goto_4

    .line 3093
    :pswitch_20
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    goto :goto_4

    .line 3094
    :pswitch_23
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->ALL_MEDIA:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    goto :goto_4

    .line 3095
    :pswitch_26
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->NEARBY_PLACES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    goto :goto_4

    .line 3096
    :pswitch_29
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->NEARBY_POSTS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    goto :goto_4

    .line 3097
    :pswitch_2c
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->STRANGERS:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    goto :goto_4

    .line 3098
    :pswitch_2f
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->GAMES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    goto :goto_4

    .line 3099
    :pswitch_32
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->WHATS_HOT:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    goto :goto_4

    .line 3083
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    .registers 2
    .parameter "name"

    .prologue
    .line 3042
    const-class v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    .registers 1

    .prologue
    .line 3042
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 3080
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->value:I

    return v0
.end method
