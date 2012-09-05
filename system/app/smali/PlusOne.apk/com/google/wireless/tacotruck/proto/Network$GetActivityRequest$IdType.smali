.class public final enum Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;
.super Ljava/lang/Enum;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

.field public static final enum DESKTOP:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

.field public static final enum MOBILE:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4541
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->MOBILE:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    .line 4542
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    const-string v1, "DESKTOP"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->DESKTOP:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    .line 4539
    new-array v0, v4, [Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->MOBILE:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->DESKTOP:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    .line 4564
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 4573
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4574
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->value:I

    .line 4575
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;
    .registers 2
    .parameter "value"

    .prologue
    .line 4552
    packed-switch p0, :pswitch_data_c

    .line 4555
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 4553
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->MOBILE:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    goto :goto_4

    .line 4554
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->DESKTOP:Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    goto :goto_4

    .line 4552
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;
    .registers 2
    .parameter

    .prologue
    .line 4539
    const-class v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;
    .registers 1

    .prologue
    .line 4539
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 4549
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;->value:I

    return v0
.end method
