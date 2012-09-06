.class public final enum Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;
.super Ljava/lang/Enum;
.source "A2a.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/tacotown/proto/A2a$HangoutData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HangoutType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

.field public static final enum BROADCAST:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

.field public static final enum BUSINESS:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

.field public static final enum CONSUMER:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

.field public static final enum OPEN_BROADCAST:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 449
    new-instance v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    const-string v1, "CONSUMER"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->CONSUMER:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    .line 450
    new-instance v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    const-string v1, "BUSINESS"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->BUSINESS:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    .line 451
    new-instance v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    const-string v1, "OPEN_BROADCAST"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->OPEN_BROADCAST:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    .line 452
    new-instance v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    const-string v1, "BROADCAST"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->BROADCAST:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    .line 447
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    sget-object v1, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->CONSUMER:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->BUSINESS:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->OPEN_BROADCAST:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->BROADCAST:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->$VALUES:[Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    .line 478
    new-instance v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType$1;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType$1;-><init>()V

    sput-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 487
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 488
    iput p4, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->value:I

    .line 489
    return-void
.end method

.method public static valueOf(I)Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;
    .registers 2
    .parameter "value"

    .prologue
    .line 464
    packed-switch p0, :pswitch_data_12

    .line 469
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 465
    :pswitch_5
    sget-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->CONSUMER:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    goto :goto_4

    .line 466
    :pswitch_8
    sget-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->BUSINESS:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    goto :goto_4

    .line 467
    :pswitch_b
    sget-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->OPEN_BROADCAST:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    goto :goto_4

    .line 468
    :pswitch_e
    sget-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->BROADCAST:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    goto :goto_4

    .line 464
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;
    .registers 2
    .parameter "name"

    .prologue
    .line 447
    const-class v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;
    .registers 1

    .prologue
    .line 447
    sget-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->$VALUES:[Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    invoke-virtual {v0}, [Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 461
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutType;->value:I

    return v0
.end method
