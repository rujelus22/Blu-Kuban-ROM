.class public final enum Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;
.super Ljava/lang/Enum;
.source "Profile.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

.field public static final enum BRAND:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

.field public static final enum CAUSE:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

.field public static final enum CELEBRITY:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

.field public static final enum COMPANY:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

.field public static final enum ENTERTAINMENT:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

.field public static final enum LOCAL:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2234
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->LOCAL:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    .line 2235
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    const-string v1, "COMPANY"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->COMPANY:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    .line 2236
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    const-string v1, "BRAND"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->BRAND:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    .line 2237
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    const-string v1, "CELEBRITY"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->CELEBRITY:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    .line 2238
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    const-string v1, "CAUSE"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->CAUSE:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    .line 2239
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    const-string v1, "ENTERTAINMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->ENTERTAINMENT:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    .line 2232
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->LOCAL:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->COMPANY:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->BRAND:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->CELEBRITY:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->CAUSE:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->ENTERTAINMENT:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->$VALUES:[Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    .line 2269
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType$1;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 2278
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2279
    iput p4, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->value:I

    .line 2280
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;
    .registers 2
    .parameter "value"

    .prologue
    .line 2253
    packed-switch p0, :pswitch_data_18

    .line 2260
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 2254
    :pswitch_5
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->LOCAL:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    goto :goto_4

    .line 2255
    :pswitch_8
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->COMPANY:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    goto :goto_4

    .line 2256
    :pswitch_b
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->BRAND:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    goto :goto_4

    .line 2257
    :pswitch_e
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->CELEBRITY:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    goto :goto_4

    .line 2258
    :pswitch_11
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->CAUSE:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    goto :goto_4

    .line 2259
    :pswitch_14
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->ENTERTAINMENT:Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    goto :goto_4

    .line 2253
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;
    .registers 2
    .parameter

    .prologue
    .line 2232
    const-class v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;
    .registers 1

    .prologue
    .line 2232
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->$VALUES:[Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    invoke-virtual {v0}, [Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 2250
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$PlusPageInfo$EntityType;->value:I

    return v0
.end method
