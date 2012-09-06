.class public final enum Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Circle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

.field public static final enum PERSONAL:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

.field public static final enum SHARED_PRIVATE:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;",
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

    .line 11938
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    const-string v1, "PERSONAL"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->PERSONAL:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    .line 11939
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    const-string v1, "SHARED_PRIVATE"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->SHARED_PRIVATE:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    .line 11936
    new-array v0, v4, [Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->PERSONAL:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->SHARED_PRIVATE:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    .line 11961
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 11970
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11971
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->value:I

    .line 11972
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 11949
    packed-switch p0, :pswitch_data_c

    .line 11952
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 11950
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->PERSONAL:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    goto :goto_4

    .line 11951
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->SHARED_PRIVATE:Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    goto :goto_4

    .line 11949
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 11936
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;
    .registers 1

    .prologue
    .line 11936
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 11946
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Circle$Type;->value:I

    return v0
.end method
