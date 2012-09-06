.class public final enum Lcom/google/goggles/RestrictsProtos$Category$Domain;
.super Ljava/lang/Enum;
.source "RestrictsProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/RestrictsProtos$Category;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Domain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/goggles/RestrictsProtos$Category$Domain;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/goggles/RestrictsProtos$Category$Domain; = null

.field public static final enum PRETTY_NAME:Lcom/google/goggles/RestrictsProtos$Category$Domain; = null

.field public static final PRETTY_NAME_VALUE:I = 0x0

.field public static final enum PRODUCT:Lcom/google/goggles/RestrictsProtos$Category$Domain; = null

.field public static final PRODUCT_VALUE:I = 0x1

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/RestrictsProtos$Category$Domain;",
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

    .line 818
    new-instance v0, Lcom/google/goggles/RestrictsProtos$Category$Domain;

    const-string v1, "PRETTY_NAME"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/goggles/RestrictsProtos$Category$Domain;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/RestrictsProtos$Category$Domain;->PRETTY_NAME:Lcom/google/goggles/RestrictsProtos$Category$Domain;

    .line 819
    new-instance v0, Lcom/google/goggles/RestrictsProtos$Category$Domain;

    const-string v1, "PRODUCT"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/goggles/RestrictsProtos$Category$Domain;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/RestrictsProtos$Category$Domain;->PRODUCT:Lcom/google/goggles/RestrictsProtos$Category$Domain;

    .line 816
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/goggles/RestrictsProtos$Category$Domain;

    sget-object v1, Lcom/google/goggles/RestrictsProtos$Category$Domain;->PRETTY_NAME:Lcom/google/goggles/RestrictsProtos$Category$Domain;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/goggles/RestrictsProtos$Category$Domain;->PRODUCT:Lcom/google/goggles/RestrictsProtos$Category$Domain;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/goggles/RestrictsProtos$Category$Domain;->$VALUES:[Lcom/google/goggles/RestrictsProtos$Category$Domain;

    .line 841
    new-instance v0, Lcom/google/goggles/RestrictsProtos$Category$Domain$1;

    invoke-direct {v0}, Lcom/google/goggles/RestrictsProtos$Category$Domain$1;-><init>()V

    sput-object v0, Lcom/google/goggles/RestrictsProtos$Category$Domain;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 850
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 851
    iput p4, p0, Lcom/google/goggles/RestrictsProtos$Category$Domain;->value:I

    .line 852
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/RestrictsProtos$Category$Domain;",
            ">;"
        }
    .end annotation

    .prologue
    .line 838
    sget-object v0, Lcom/google/goggles/RestrictsProtos$Category$Domain;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/goggles/RestrictsProtos$Category$Domain;
    .registers 2
    .parameter

    .prologue
    .line 829
    packed-switch p0, :pswitch_data_c

    .line 832
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 830
    :pswitch_5
    sget-object v0, Lcom/google/goggles/RestrictsProtos$Category$Domain;->PRETTY_NAME:Lcom/google/goggles/RestrictsProtos$Category$Domain;

    goto :goto_4

    .line 831
    :pswitch_8
    sget-object v0, Lcom/google/goggles/RestrictsProtos$Category$Domain;->PRODUCT:Lcom/google/goggles/RestrictsProtos$Category$Domain;

    goto :goto_4

    .line 829
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/goggles/RestrictsProtos$Category$Domain;
    .registers 2
    .parameter

    .prologue
    .line 816
    const-class v0, Lcom/google/goggles/RestrictsProtos$Category$Domain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Category$Domain;

    return-object v0
.end method

.method public static values()[Lcom/google/goggles/RestrictsProtos$Category$Domain;
    .registers 1

    .prologue
    .line 816
    sget-object v0, Lcom/google/goggles/RestrictsProtos$Category$Domain;->$VALUES:[Lcom/google/goggles/RestrictsProtos$Category$Domain;

    invoke-virtual {v0}, [Lcom/google/goggles/RestrictsProtos$Category$Domain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/goggles/RestrictsProtos$Category$Domain;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 826
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category$Domain;->value:I

    return v0
.end method
