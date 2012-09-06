.class public final enum Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;
.super Ljava/lang/Enum;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

.field public static final enum CLEAR_USER_PREFS:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 55390
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    const-string v1, "CLEAR_USER_PREFS"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;->CLEAR_USER_PREFS:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    .line 55388
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;->CLEAR_USER_PREFS:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    .line 55410
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 55419
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55420
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;->value:I

    .line 55421
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 55399
    packed-switch p0, :pswitch_data_8

    .line 55401
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 55400
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;->CLEAR_USER_PREFS:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    goto :goto_4

    .line 55399
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 55388
    const-class v0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;
    .registers 1

    .prologue
    .line 55388
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 55396
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;->value:I

    return v0
.end method
