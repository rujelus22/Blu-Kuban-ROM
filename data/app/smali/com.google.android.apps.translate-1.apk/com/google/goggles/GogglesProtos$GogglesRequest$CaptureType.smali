.class public final enum Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;
.super Ljava/lang/Enum;
.source "GogglesProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesProtos$GogglesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType; = null

.field public static final enum CONTINUOUS:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType; = null

.field public static final CONTINUOUS_VALUE:I = 0x1

.field public static final enum SINGLE:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

.field public static final SINGLE_VALUE:I

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;",
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

    .line 2784
    new-instance v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    const-string v1, "SINGLE"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;->SINGLE:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    .line 2785
    new-instance v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    const-string v1, "CONTINUOUS"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;->CONTINUOUS:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    .line 2782
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    sget-object v1, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;->SINGLE:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;->CONTINUOUS:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;->$VALUES:[Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    .line 2807
    new-instance v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType$1;

    invoke-direct {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType$1;-><init>()V

    sput-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 2816
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2817
    iput p4, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;->value:I

    .line 2818
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2804
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;
    .registers 2
    .parameter

    .prologue
    .line 2795
    packed-switch p0, :pswitch_data_c

    .line 2798
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 2796
    :pswitch_5
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;->SINGLE:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    goto :goto_4

    .line 2797
    :pswitch_8
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;->CONTINUOUS:Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    goto :goto_4

    .line 2795
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;
    .registers 2
    .parameter

    .prologue
    .line 2782
    const-class v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    return-object v0
.end method

.method public static values()[Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;
    .registers 1

    .prologue
    .line 2782
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;->$VALUES:[Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    invoke-virtual {v0}, [Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 2792
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$CaptureType;->value:I

    return v0
.end method
