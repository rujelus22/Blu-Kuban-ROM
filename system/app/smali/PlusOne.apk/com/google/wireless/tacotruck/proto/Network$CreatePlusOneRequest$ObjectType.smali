.class public final enum Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
.super Ljava/lang/Enum;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ObjectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

.field public static final enum AD:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

.field public static final enum COMMENT:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

.field public static final enum ENTITY:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

.field public static final enum TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

.field public static final enum TORTILLA:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

.field public static final enum URL:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 22820
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    const-string v1, "TACO"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 22821
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    const-string v1, "TORTILLA"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TORTILLA:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 22822
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    const-string v1, "URL"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->URL:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 22823
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    const-string v1, "AD"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->AD:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 22824
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    const-string v1, "COMMENT"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->COMMENT:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 22825
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    const-string v1, "ENTITY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->ENTITY:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 22818
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TORTILLA:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->URL:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->AD:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->COMMENT:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->ENTITY:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    .line 22855
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 22864
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22865
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->value:I

    .line 22866
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    .registers 2
    .parameter "value"

    .prologue
    .line 22839
    packed-switch p0, :pswitch_data_18

    .line 22846
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 22840
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    goto :goto_4

    .line 22841
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TORTILLA:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    goto :goto_4

    .line 22842
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->URL:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    goto :goto_4

    .line 22843
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->AD:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    goto :goto_4

    .line 22844
    :pswitch_11
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->COMMENT:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    goto :goto_4

    .line 22845
    :pswitch_14
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->ENTITY:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    goto :goto_4

    .line 22839
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    .registers 2
    .parameter

    .prologue
    .line 22818
    const-class v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    .registers 1

    .prologue
    .line 22818
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 22836
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->value:I

    return v0
.end method
