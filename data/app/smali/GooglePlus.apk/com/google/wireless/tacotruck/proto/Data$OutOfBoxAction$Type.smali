.class public final enum Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

.field public static final enum BACK:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

.field public static final enum CAMERASYNC:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

.field public static final enum CHANGE_PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

.field public static final enum CLOSE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

.field public static final enum CONTINUE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

.field public static final enum CREATE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

.field public static final enum EDIT_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

.field public static final enum SKIP_PHONE_VERIFICATION:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

.field public static final enum URL:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 36116
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    const-string v1, "CHANGE_PHONE_NUMBER"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CHANGE_PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    .line 36117
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    const-string v1, "CLOSE"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CLOSE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    .line 36118
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    const-string v1, "CONTINUE"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CONTINUE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    .line 36119
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CREATE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    .line 36120
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    const-string v1, "SKIP_PHONE_VERIFICATION"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->SKIP_PHONE_VERIFICATION:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    .line 36121
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    const-string v1, "EDIT_NAME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->EDIT_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    .line 36122
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    const-string v1, "URL"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->URL:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    .line 36123
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    const-string v1, "BACK"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->BACK:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    .line 36124
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    const-string v1, "CAMERASYNC"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CAMERASYNC:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    .line 36114
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CHANGE_PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CLOSE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CONTINUE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CREATE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->SKIP_PHONE_VERIFICATION:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->EDIT_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->URL:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->BACK:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CAMERASYNC:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    .line 36160
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 36169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36170
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->value:I

    .line 36171
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 36141
    packed-switch p0, :pswitch_data_20

    .line 36151
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 36142
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CHANGE_PHONE_NUMBER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    goto :goto_4

    .line 36143
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CLOSE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    goto :goto_4

    .line 36144
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CONTINUE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    goto :goto_4

    .line 36145
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CREATE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    goto :goto_4

    .line 36146
    :pswitch_11
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->SKIP_PHONE_VERIFICATION:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    goto :goto_4

    .line 36147
    :pswitch_14
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->EDIT_NAME:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    goto :goto_4

    .line 36148
    :pswitch_17
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->URL:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    goto :goto_4

    .line 36149
    :pswitch_1a
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->BACK:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    goto :goto_4

    .line 36150
    :pswitch_1d
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CAMERASYNC:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    goto :goto_4

    .line 36141
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 36114
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    .registers 1

    .prologue
    .line 36114
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 36138
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->value:I

    return v0
.end method
