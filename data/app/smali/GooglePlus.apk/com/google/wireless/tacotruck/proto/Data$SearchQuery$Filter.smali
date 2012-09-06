.class public final enum Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Filter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

.field public static final enum ALL:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

.field public static final enum PEOPLE:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

.field public static final enum TACOS:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

.field public static final enum TORTILLAS:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 40008
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->ALL:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    .line 40009
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    const-string v1, "PEOPLE"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->PEOPLE:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    .line 40010
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    const-string v1, "TACOS"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->TACOS:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    .line 40011
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    const-string v1, "TORTILLAS"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->TORTILLAS:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    .line 40006
    new-array v0, v6, [Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->ALL:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->PEOPLE:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->TACOS:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->TORTILLAS:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    .line 40037
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 40046
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40047
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->value:I

    .line 40048
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;
    .registers 2
    .parameter "value"

    .prologue
    .line 40023
    packed-switch p0, :pswitch_data_12

    .line 40028
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 40024
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->ALL:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    goto :goto_4

    .line 40025
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->PEOPLE:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    goto :goto_4

    .line 40026
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->TACOS:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    goto :goto_4

    .line 40027
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->TORTILLAS:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    goto :goto_4

    .line 40023
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;
    .registers 2
    .parameter "name"

    .prologue
    .line 40006
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;
    .registers 1

    .prologue
    .line 40006
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 40020
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->value:I

    return v0
.end method
