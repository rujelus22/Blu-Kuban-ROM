.class public final enum Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;
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
    name = "Sort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

.field public static final enum BEST:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

.field public static final enum RECENT:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;",
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

    .line 40055
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    const-string v1, "BEST"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->BEST:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    .line 40056
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    const-string v1, "RECENT"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->RECENT:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    .line 40053
    new-array v0, v4, [Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->BEST:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->RECENT:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    .line 40078
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 40087
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40088
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->value:I

    .line 40089
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;
    .registers 2
    .parameter "value"

    .prologue
    .line 40066
    packed-switch p0, :pswitch_data_c

    .line 40069
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 40067
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->BEST:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    goto :goto_4

    .line 40068
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->RECENT:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    goto :goto_4

    .line 40066
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;
    .registers 2
    .parameter "name"

    .prologue
    .line 40053
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;
    .registers 1

    .prologue
    .line 40053
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 40063
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->value:I

    return v0
.end method
