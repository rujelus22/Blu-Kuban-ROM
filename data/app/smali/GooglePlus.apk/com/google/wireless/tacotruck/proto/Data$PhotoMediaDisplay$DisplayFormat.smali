.class public final enum Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

.field public static final enum LIGHTBOX:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

.field public static final enum LINKED_THUMBS:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;",
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

    .line 8439
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    const-string v1, "LINKED_THUMBS"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;->LINKED_THUMBS:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    .line 8440
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    const-string v1, "LIGHTBOX"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;->LIGHTBOX:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    .line 8437
    new-array v0, v4, [Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;->LINKED_THUMBS:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;->LIGHTBOX:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    .line 8462
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 8471
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8472
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;->value:I

    .line 8473
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;
    .registers 2
    .parameter "value"

    .prologue
    .line 8450
    packed-switch p0, :pswitch_data_c

    .line 8453
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 8451
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;->LINKED_THUMBS:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    goto :goto_4

    .line 8452
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;->LIGHTBOX:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    goto :goto_4

    .line 8450
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;
    .registers 2
    .parameter "name"

    .prologue
    .line 8437
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;
    .registers 1

    .prologue
    .line 8437
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 8447
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;->value:I

    return v0
.end method
