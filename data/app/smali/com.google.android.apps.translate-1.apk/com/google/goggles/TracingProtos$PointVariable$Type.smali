.class public final enum Lcom/google/goggles/TracingProtos$PointVariable$Type;
.super Ljava/lang/Enum;
.source "TracingProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/TracingProtos$PointVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/goggles/TracingProtos$PointVariable$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/goggles/TracingProtos$PointVariable$Type; = null

.field public static final enum BARCODE:Lcom/google/goggles/TracingProtos$PointVariable$Type; = null

.field public static final BARCODE_VALUE:I = 0x3

.field public static final enum CAMERA_PREVIEW_START:Lcom/google/goggles/TracingProtos$PointVariable$Type; = null

.field public static final CAMERA_PREVIEW_START_VALUE:I = 0x6

.field public static final enum CLIENT_ANNOTATION_SENT:Lcom/google/goggles/TracingProtos$PointVariable$Type; = null

.field public static final CLIENT_ANNOTATION_SENT_VALUE:I = 0x8

.field public static final enum HISTORY:Lcom/google/goggles/TracingProtos$PointVariable$Type; = null

.field public static final HISTORY_VALUE:I = 0x7

.field public static final enum PUGGLE:Lcom/google/goggles/TracingProtos$PointVariable$Type; = null

.field public static final PUGGLE_VALUE:I = 0x9

.field public static final enum PULL:Lcom/google/goggles/TracingProtos$PointVariable$Type; = null

.field public static final PULL_VALUE:I = 0x5

.field public static final enum PUSH:Lcom/google/goggles/TracingProtos$PointVariable$Type; = null

.field public static final PUSH_VALUE:I = 0x4

.field public static final enum SUBSEQUENT_RESPONSE:Lcom/google/goggles/TracingProtos$PointVariable$Type; = null

.field public static final SUBSEQUENT_RESPONSE_VALUE:I = 0x1

.field public static final enum USER:Lcom/google/goggles/TracingProtos$PointVariable$Type; = null

.field public static final USER_VALUE:I = 0x2

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/TracingProtos$PointVariable$Type;",
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

    .line 551
    new-instance v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;

    const-string v1, "SUBSEQUENT_RESPONSE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/goggles/TracingProtos$PointVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->SUBSEQUENT_RESPONSE:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    .line 552
    new-instance v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;

    const-string v1, "USER"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/goggles/TracingProtos$PointVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->USER:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    .line 553
    new-instance v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;

    const-string v1, "BARCODE"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/goggles/TracingProtos$PointVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->BARCODE:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    .line 554
    new-instance v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;

    const-string v1, "PUSH"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/goggles/TracingProtos$PointVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->PUSH:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    .line 555
    new-instance v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;

    const-string v1, "PULL"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/goggles/TracingProtos$PointVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->PULL:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    .line 556
    new-instance v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;

    const-string v1, "CAMERA_PREVIEW_START"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/goggles/TracingProtos$PointVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->CAMERA_PREVIEW_START:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    .line 557
    new-instance v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;

    const-string v1, "HISTORY"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/TracingProtos$PointVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->HISTORY:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    .line 558
    new-instance v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;

    const-string v1, "PUGGLE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/TracingProtos$PointVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->PUGGLE:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    .line 559
    new-instance v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;

    const-string v1, "CLIENT_ANNOTATION_SENT"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/TracingProtos$PointVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->CLIENT_ANNOTATION_SENT:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    .line 549
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/goggles/TracingProtos$PointVariable$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/goggles/TracingProtos$PointVariable$Type;->SUBSEQUENT_RESPONSE:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/goggles/TracingProtos$PointVariable$Type;->USER:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/goggles/TracingProtos$PointVariable$Type;->BARCODE:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/goggles/TracingProtos$PointVariable$Type;->PUSH:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/goggles/TracingProtos$PointVariable$Type;->PULL:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/goggles/TracingProtos$PointVariable$Type;->CAMERA_PREVIEW_START:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/goggles/TracingProtos$PointVariable$Type;->HISTORY:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/goggles/TracingProtos$PointVariable$Type;->PUGGLE:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/goggles/TracingProtos$PointVariable$Type;->CLIENT_ANNOTATION_SENT:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->$VALUES:[Lcom/google/goggles/TracingProtos$PointVariable$Type;

    .line 595
    new-instance v0, Lcom/google/goggles/TracingProtos$PointVariable$Type$1;

    invoke-direct {v0}, Lcom/google/goggles/TracingProtos$PointVariable$Type$1;-><init>()V

    sput-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 604
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 605
    iput p4, p0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->value:I

    .line 606
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/TracingProtos$PointVariable$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 592
    sget-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/goggles/TracingProtos$PointVariable$Type;
    .registers 2
    .parameter

    .prologue
    .line 576
    packed-switch p0, :pswitch_data_20

    .line 586
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 577
    :pswitch_5
    sget-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->SUBSEQUENT_RESPONSE:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    goto :goto_4

    .line 578
    :pswitch_8
    sget-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->USER:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    goto :goto_4

    .line 579
    :pswitch_b
    sget-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->BARCODE:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    goto :goto_4

    .line 580
    :pswitch_e
    sget-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->PUSH:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    goto :goto_4

    .line 581
    :pswitch_11
    sget-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->PULL:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    goto :goto_4

    .line 582
    :pswitch_14
    sget-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->CAMERA_PREVIEW_START:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    goto :goto_4

    .line 583
    :pswitch_17
    sget-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->HISTORY:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    goto :goto_4

    .line 584
    :pswitch_1a
    sget-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->PUGGLE:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    goto :goto_4

    .line 585
    :pswitch_1d
    sget-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->CLIENT_ANNOTATION_SENT:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    goto :goto_4

    .line 576
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/goggles/TracingProtos$PointVariable$Type;
    .registers 2
    .parameter

    .prologue
    .line 549
    const-class v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/goggles/TracingProtos$PointVariable$Type;
    .registers 1

    .prologue
    .line 549
    sget-object v0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->$VALUES:[Lcom/google/goggles/TracingProtos$PointVariable$Type;

    invoke-virtual {v0}, [Lcom/google/goggles/TracingProtos$PointVariable$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/goggles/TracingProtos$PointVariable$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 573
    iget v0, p0, Lcom/google/goggles/TracingProtos$PointVariable$Type;->value:I

    return v0
.end method
