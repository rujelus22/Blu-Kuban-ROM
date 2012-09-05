.class public final enum Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

.field public static final enum BAD_BIRTHDAY:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

.field public static final enum BAD_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

.field public static final enum BAD_PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

.field public static final enum CANT_VERIFY_PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

.field public static final enum DASHER_ADMIN_DISABLED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

.field public static final NAME_NOT_PUBLIC:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

.field public static final enum NON_GA_PLUS_DASHER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

.field public static final enum NO_AGE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

.field public static final enum NO_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

.field public static final enum OTHER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

.field public static final enum PHONE_VERIFICATION_FAILED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

.field public static final enum PROFILE_BLOCKED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

.field public static final enum REQUIRES_VERIFICATION:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

.field public static final enum SIGNUPS_DISABLED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

.field public static final enum UNDERAGE_BLOCKED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

.field public static final enum UNDER_AGE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;",
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
    const/4 v9, 0x6

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 32217
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    const-string v1, "NO_AGE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->NO_AGE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 32218
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    const-string v1, "UNDER_AGE"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->UNDER_AGE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 32219
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    const-string v1, "BAD_BIRTHDAY"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->BAD_BIRTHDAY:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 32220
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    const-string v1, "NO_NAME"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->NO_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 32221
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    const-string v1, "BAD_NAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->BAD_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 32222
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    const-string v1, "DASHER_ADMIN_DISABLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v9, v9}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->DASHER_ADMIN_DISABLED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 32223
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    const-string v1, "NON_GA_PLUS_DASHER"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->NON_GA_PLUS_DASHER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 32224
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    const-string v1, "PROFILE_BLOCKED"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->PROFILE_BLOCKED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 32225
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    const-string v1, "BAD_PHONE_NUMBER"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->BAD_PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 32226
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    const-string v1, "CANT_VERIFY_PHONE_NUMBER"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->CANT_VERIFY_PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 32227
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    const-string v1, "PHONE_VERIFICATION_FAILED"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->PHONE_VERIFICATION_FAILED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 32228
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    const-string v1, "SIGNUPS_DISABLED"

    const/16 v2, 0xb

    const/16 v3, 0xc

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->SIGNUPS_DISABLED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 32229
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    const-string v1, "OTHER"

    const/16 v2, 0xc

    const/16 v3, 0xd

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->OTHER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 32230
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    const-string v1, "REQUIRES_VERIFICATION"

    const/16 v2, 0xd

    const/16 v3, 0xe

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->REQUIRES_VERIFICATION:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 32231
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    const-string v1, "UNDERAGE_BLOCKED"

    const/16 v2, 0xe

    const/16 v3, 0xf

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->UNDERAGE_BLOCKED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 32215
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->NO_AGE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->UNDER_AGE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->BAD_BIRTHDAY:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->NO_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->BAD_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->DASHER_ADMIN_DISABLED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->NON_GA_PLUS_DASHER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x7

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->PROFILE_BLOCKED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->BAD_PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->CANT_VERIFY_PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->PHONE_VERIFICATION_FAILED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->SIGNUPS_DISABLED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->OTHER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->REQUIRES_VERIFICATION:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->UNDERAGE_BLOCKED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 32234
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->BAD_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->NAME_NOT_PUBLIC:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 32281
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 32290
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32291
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->value:I

    .line 32292
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 32256
    packed-switch p0, :pswitch_data_32

    .line 32272
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 32257
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->NO_AGE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    goto :goto_4

    .line 32258
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->UNDER_AGE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    goto :goto_4

    .line 32259
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->BAD_BIRTHDAY:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    goto :goto_4

    .line 32260
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->NO_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    goto :goto_4

    .line 32261
    :pswitch_11
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->BAD_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    goto :goto_4

    .line 32262
    :pswitch_14
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->DASHER_ADMIN_DISABLED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    goto :goto_4

    .line 32263
    :pswitch_17
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->NON_GA_PLUS_DASHER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    goto :goto_4

    .line 32264
    :pswitch_1a
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->PROFILE_BLOCKED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    goto :goto_4

    .line 32265
    :pswitch_1d
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->BAD_PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    goto :goto_4

    .line 32266
    :pswitch_20
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->CANT_VERIFY_PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    goto :goto_4

    .line 32267
    :pswitch_23
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->PHONE_VERIFICATION_FAILED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    goto :goto_4

    .line 32268
    :pswitch_26
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->SIGNUPS_DISABLED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    goto :goto_4

    .line 32269
    :pswitch_29
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->OTHER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    goto :goto_4

    .line 32270
    :pswitch_2c
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->REQUIRES_VERIFICATION:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    goto :goto_4

    .line 32271
    :pswitch_2f
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->UNDERAGE_BLOCKED:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    goto :goto_4

    .line 32256
    :pswitch_data_32
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
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;
    .registers 2
    .parameter

    .prologue
    .line 32215
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;
    .registers 1

    .prologue
    .line 32215
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 32253
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->value:I

    return v0
.end method
