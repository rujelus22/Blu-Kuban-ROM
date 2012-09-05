.class public final enum Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;
.super Ljava/lang/Enum;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PostRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

.field public static final enum CHECKIN:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

.field public static final enum CREATE_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

.field public static final enum CREATE_COMMENT:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

.field public static final enum EDIT_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

.field public static final enum EDIT_COMMENT:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

.field public static final enum RESHARE:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;",
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

    .line 11141
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    const-string v1, "CREATE_ACTIVITY"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CREATE_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    .line 11142
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    const-string v1, "CREATE_COMMENT"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CREATE_COMMENT:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    .line 11143
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    const-string v1, "EDIT_ACTIVITY"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->EDIT_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    .line 11144
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    const-string v1, "EDIT_COMMENT"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->EDIT_COMMENT:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    .line 11145
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    const-string v1, "RESHARE"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->RESHARE:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    .line 11146
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    const-string v1, "CHECKIN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CHECKIN:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    .line 11139
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CREATE_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CREATE_COMMENT:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->EDIT_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->EDIT_COMMENT:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->RESHARE:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CHECKIN:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    .line 11176
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 11185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11186
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->value:I

    .line 11187
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 11160
    packed-switch p0, :pswitch_data_18

    .line 11167
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 11161
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CREATE_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    goto :goto_4

    .line 11162
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CREATE_COMMENT:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    goto :goto_4

    .line 11163
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->EDIT_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    goto :goto_4

    .line 11164
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->EDIT_COMMENT:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    goto :goto_4

    .line 11165
    :pswitch_11
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->RESHARE:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    goto :goto_4

    .line 11166
    :pswitch_14
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->CHECKIN:Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    goto :goto_4

    .line 11160
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;
    .registers 2
    .parameter

    .prologue
    .line 11139
    const-class v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;
    .registers 1

    .prologue
    .line 11139
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 11157
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;->value:I

    return v0
.end method
