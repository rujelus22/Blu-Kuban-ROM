.class public final enum Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;
.super Ljava/lang/Enum;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

.field public static final enum NOT_FOUND:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

.field public static final enum NO_PERMISSION:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;",
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

    .line 5909
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    const-string v1, "NOT_FOUND"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;->NOT_FOUND:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    .line 5910
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    const-string v1, "NO_PERMISSION"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;->NO_PERMISSION:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    .line 5907
    new-array v0, v4, [Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;->NOT_FOUND:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;->NO_PERMISSION:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    .line 5932
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 5941
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5942
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;->value:I

    .line 5943
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;
    .registers 2
    .parameter "value"

    .prologue
    .line 5920
    packed-switch p0, :pswitch_data_c

    .line 5923
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 5921
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;->NOT_FOUND:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    goto :goto_4

    .line 5922
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;->NO_PERMISSION:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    goto :goto_4

    .line 5920
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;
    .registers 2
    .parameter "name"

    .prologue
    .line 5907
    const-class v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;
    .registers 1

    .prologue
    .line 5907
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 5917
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$ErrorCode;->value:I

    return v0
.end method
