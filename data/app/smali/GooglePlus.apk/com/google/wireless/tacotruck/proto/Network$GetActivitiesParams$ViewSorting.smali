.class public final enum Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;
.super Ljava/lang/Enum;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewSorting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

.field public static final enum BEST:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

.field public static final enum RECENT:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;",
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

    .line 3003
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    const-string v1, "BEST"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->BEST:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    .line 3004
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    const-string v1, "RECENT"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->RECENT:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    .line 3001
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->BEST:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->RECENT:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    .line 3026
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 3035
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3036
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->value:I

    .line 3037
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;
    .registers 2
    .parameter "value"

    .prologue
    .line 3014
    packed-switch p0, :pswitch_data_c

    .line 3017
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 3015
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->BEST:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    goto :goto_4

    .line 3016
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->RECENT:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    goto :goto_4

    .line 3014
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;
    .registers 2
    .parameter "name"

    .prologue
    .line 3001
    const-class v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;
    .registers 1

    .prologue
    .line 3001
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 3011
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->value:I

    return v0
.end method
