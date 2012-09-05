.class public final enum Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;
.super Ljava/lang/Enum;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

.field public static final enum PHOTO:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

.field public static final enum VIDEO:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;",
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

    .line 45094
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    const-string v1, "PHOTO"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->PHOTO:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    .line 45095
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->VIDEO:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    .line 45092
    new-array v0, v4, [Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->PHOTO:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->VIDEO:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    .line 45117
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 45126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45127
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->value:I

    .line 45128
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;
    .registers 2
    .parameter "value"

    .prologue
    .line 45105
    packed-switch p0, :pswitch_data_c

    .line 45108
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 45106
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->PHOTO:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    goto :goto_4

    .line 45107
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->VIDEO:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    goto :goto_4

    .line 45105
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;
    .registers 2
    .parameter

    .prologue
    .line 45092
    const-class v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;
    .registers 1

    .prologue
    .line 45092
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 45102
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->value:I

    return v0
.end method
