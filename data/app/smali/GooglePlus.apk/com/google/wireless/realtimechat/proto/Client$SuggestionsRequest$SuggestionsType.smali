.class public final enum Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SuggestionsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

.field public static final enum ALL:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

.field public static final enum ONLY_NEW:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;",
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

    .line 39840
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;->ALL:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    .line 39841
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    const-string v1, "ONLY_NEW"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;->ONLY_NEW:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    .line 39838
    new-array v0, v4, [Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;->ALL:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;->ONLY_NEW:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    .line 39863
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 39872
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39873
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;->value:I

    .line 39874
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;
    .registers 2
    .parameter "value"

    .prologue
    .line 39851
    packed-switch p0, :pswitch_data_c

    .line 39854
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 39852
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;->ALL:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    goto :goto_4

    .line 39853
    :pswitch_8
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;->ONLY_NEW:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    goto :goto_4

    .line 39851
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;
    .registers 2
    .parameter "name"

    .prologue
    .line 39838
    const-class v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;
    .registers 1

    .prologue
    .line 39838
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 39848
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;->value:I

    return v0
.end method
