.class public final enum Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;
.super Ljava/lang/Enum;
.source "Webclient.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Webclient$FetchStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

.field public static final enum DONE:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

.field public static final enum STARTING:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

.field public static final enum WRITING:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;",
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

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 430
    new-instance v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;->STARTING:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    .line 431
    new-instance v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    const-string v1, "WRITING"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;->WRITING:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    .line 432
    new-instance v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;->DONE:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    .line 428
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    sget-object v1, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;->STARTING:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;->WRITING:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;->DONE:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;->$VALUES:[Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    .line 456
    new-instance v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage$1;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage$1;-><init>()V

    sput-object v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 465
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 466
    iput p4, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;->value:I

    .line 467
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;
    .registers 2
    .parameter "value"

    .prologue
    .line 443
    packed-switch p0, :pswitch_data_e

    .line 447
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 444
    :pswitch_5
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;->STARTING:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    goto :goto_4

    .line 445
    :pswitch_8
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;->WRITING:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    goto :goto_4

    .line 446
    :pswitch_b
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;->DONE:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    goto :goto_4

    .line 443
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;
    .registers 2
    .parameter "name"

    .prologue
    .line 428
    const-class v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;
    .registers 1

    .prologue
    .line 428
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;->$VALUES:[Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    invoke-virtual {v0}, [Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 440
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Stage;->value:I

    return v0
.end method
