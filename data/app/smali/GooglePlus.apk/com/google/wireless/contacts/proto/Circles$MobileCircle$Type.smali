.class public final enum Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
.super Ljava/lang/Enum;
.source "Circles.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

.field public static final enum ALL_CIRCLES:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

.field public static final enum BLOCKED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

.field public static final enum DOMAIN:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

.field public static final enum EXTENDED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

.field public static final enum FOLLOWING:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

.field public static final enum MY_CIRCLES:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

.field public static final enum PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

.field public static final enum PRIVATE_SHARED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

.field public static final enum PUBLIC:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

.field public static final enum PUBLIC_SHARED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

.field public static final enum VISIBLE_CIRCLE_MEMBERS:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;",
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

    .line 58
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    const-string v1, "PERSONAL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 59
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    const-string v1, "PRIVATE_SHARED"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PRIVATE_SHARED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 60
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    const-string v1, "PUBLIC_SHARED"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PUBLIC_SHARED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 61
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    const-string v1, "FOLLOWING"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->FOLLOWING:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 62
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    const-string v1, "MY_CIRCLES"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->MY_CIRCLES:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 63
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    const-string v1, "VISIBLE_CIRCLE_MEMBERS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->VISIBLE_CIRCLE_MEMBERS:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 64
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    const-string v1, "EXTENDED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->EXTENDED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 65
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    const-string v1, "DOMAIN"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->DOMAIN:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 66
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    const-string v1, "PUBLIC"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PUBLIC:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 67
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    const-string v1, "BLOCKED"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->BLOCKED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 68
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    const-string v1, "ALL_CIRCLES"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->ALL_CIRCLES:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 56
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PRIVATE_SHARED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PUBLIC_SHARED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->FOLLOWING:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->MY_CIRCLES:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->VISIBLE_CIRCLE_MEMBERS:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->EXTENDED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->DOMAIN:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PUBLIC:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->BLOCKED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->ALL_CIRCLES:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->$VALUES:[Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 108
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    iput p4, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->value:I

    .line 119
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 87
    packed-switch p0, :pswitch_data_26

    .line 99
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 88
    :pswitch_5
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    goto :goto_4

    .line 89
    :pswitch_8
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PRIVATE_SHARED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    goto :goto_4

    .line 90
    :pswitch_b
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PUBLIC_SHARED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    goto :goto_4

    .line 91
    :pswitch_e
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->FOLLOWING:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    goto :goto_4

    .line 92
    :pswitch_11
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->MY_CIRCLES:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    goto :goto_4

    .line 93
    :pswitch_14
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->VISIBLE_CIRCLE_MEMBERS:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    goto :goto_4

    .line 94
    :pswitch_17
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->EXTENDED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    goto :goto_4

    .line 95
    :pswitch_1a
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->DOMAIN:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    goto :goto_4

    .line 96
    :pswitch_1d
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PUBLIC:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    goto :goto_4

    .line 97
    :pswitch_20
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->BLOCKED:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    goto :goto_4

    .line 98
    :pswitch_23
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->ALL_CIRCLES:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    goto :goto_4

    .line 87
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 56
    const-class v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->$VALUES:[Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->value:I

    return v0
.end method
