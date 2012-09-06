.class public final enum Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

.field public static final enum IGNORE:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

.field public static final enum INCORRECT:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

.field public static final enum NAMED:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

.field public static final enum NAMED_PUBLIC:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

.field public static final enum PENDING:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

.field public static final enum REJECTED:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

.field public static final enum UNNAMED:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;",
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
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 19907
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    const-string v1, "UNNAMED"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->UNNAMED:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    .line 19908
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    const-string v1, "NAMED"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->NAMED:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    .line 19909
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    const-string v1, "IGNORE"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->IGNORE:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    .line 19910
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    const-string v1, "INCORRECT"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->INCORRECT:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    .line 19911
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->PENDING:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    .line 19912
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    const-string v1, "NAMED_PUBLIC"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->NAMED_PUBLIC:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    .line 19913
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    const-string v1, "REJECTED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->REJECTED:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    .line 19905
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->UNNAMED:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->NAMED:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->IGNORE:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->INCORRECT:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->PENDING:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->NAMED_PUBLIC:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->REJECTED:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    .line 19945
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 19954
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19955
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->value:I

    .line 19956
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;
    .registers 2
    .parameter "value"

    .prologue
    .line 19928
    packed-switch p0, :pswitch_data_1a

    .line 19936
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 19929
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->UNNAMED:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    goto :goto_4

    .line 19930
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->NAMED:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    goto :goto_4

    .line 19931
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->IGNORE:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    goto :goto_4

    .line 19932
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->INCORRECT:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    goto :goto_4

    .line 19933
    :pswitch_11
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->PENDING:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    goto :goto_4

    .line 19934
    :pswitch_14
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->NAMED_PUBLIC:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    goto :goto_4

    .line 19935
    :pswitch_17
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->REJECTED:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    goto :goto_4

    .line 19928
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;
    .registers 2
    .parameter "name"

    .prologue
    .line 19905
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;
    .registers 1

    .prologue
    .line 19905
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 19925
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->value:I

    return v0
.end method
