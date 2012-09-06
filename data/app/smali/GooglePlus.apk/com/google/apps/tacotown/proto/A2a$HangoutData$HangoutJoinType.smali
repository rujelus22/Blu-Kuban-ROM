.class public final enum Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;
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
    name = "HangoutJoinType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;

.field public static final enum ORIGINAL:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;

.field public static final enum WITH_UNIQUE_ID:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 496
    new-instance v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;

    const-string v1, "ORIGINAL"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;->ORIGINAL:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;

    .line 497
    new-instance v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;

    const-string v1, "WITH_UNIQUE_ID"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;->WITH_UNIQUE_ID:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;

    .line 494
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;

    sget-object v1, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;->ORIGINAL:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;->WITH_UNIQUE_ID:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;->$VALUES:[Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;

    .line 519
    new-instance v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType$1;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType$1;-><init>()V

    sput-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 528
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 529
    iput p4, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;->value:I

    .line 530
    return-void
.end method

.method public static valueOf(I)Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;
    .registers 2
    .parameter "value"

    .prologue
    .line 507
    packed-switch p0, :pswitch_data_c

    .line 510
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 508
    :pswitch_5
    sget-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;->ORIGINAL:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;

    goto :goto_4

    .line 509
    :pswitch_8
    sget-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;->WITH_UNIQUE_ID:Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;

    goto :goto_4

    .line 507
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;
    .registers 2
    .parameter "name"

    .prologue
    .line 494
    const-class v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;
    .registers 1

    .prologue
    .line 494
    sget-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;->$VALUES:[Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;

    invoke-virtual {v0}, [Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 504
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$HangoutJoinType;->value:I

    return v0
.end method
