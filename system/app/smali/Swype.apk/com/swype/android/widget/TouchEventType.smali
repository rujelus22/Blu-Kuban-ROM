.class public final enum Lcom/swype/android/widget/TouchEventType;
.super Ljava/lang/Enum;
.source "TouchEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/swype/android/widget/TouchEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swype/android/widget/TouchEventType;

.field public static final enum DOWN:Lcom/swype/android/widget/TouchEventType;

.field public static final enum MOVE:Lcom/swype/android/widget/TouchEventType;

.field public static final enum UP:Lcom/swype/android/widget/TouchEventType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/swype/android/widget/TouchEventType;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/swype/android/widget/TouchEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/swype/android/widget/TouchEventType;->DOWN:Lcom/swype/android/widget/TouchEventType;

    .line 7
    new-instance v0, Lcom/swype/android/widget/TouchEventType;

    const-string v1, "MOVE"

    invoke-direct {v0, v1, v3, v3}, Lcom/swype/android/widget/TouchEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/swype/android/widget/TouchEventType;->MOVE:Lcom/swype/android/widget/TouchEventType;

    .line 8
    new-instance v0, Lcom/swype/android/widget/TouchEventType;

    const-string v1, "UP"

    invoke-direct {v0, v1, v4, v4}, Lcom/swype/android/widget/TouchEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/swype/android/widget/TouchEventType;->UP:Lcom/swype/android/widget/TouchEventType;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/swype/android/widget/TouchEventType;

    sget-object v1, Lcom/swype/android/widget/TouchEventType;->DOWN:Lcom/swype/android/widget/TouchEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/swype/android/widget/TouchEventType;->MOVE:Lcom/swype/android/widget/TouchEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/swype/android/widget/TouchEventType;->UP:Lcom/swype/android/widget/TouchEventType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/swype/android/widget/TouchEventType;->$VALUES:[Lcom/swype/android/widget/TouchEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/swype/android/widget/TouchEventType;->value:I

    .line 14
    return-void
.end method

.method public static fromMotionEvent(I)Lcom/swype/android/widget/TouchEventType;
    .registers 2
    .parameter "evtType"

    .prologue
    .line 31
    and-int/lit16 v0, p0, 0xff

    packed-switch v0, :pswitch_data_14

    .line 45
    :pswitch_5
    const/4 v0, 0x0

    :goto_6
    return-object v0

    .line 33
    :pswitch_7
    sget-object v0, Lcom/swype/android/widget/TouchEventType;->MOVE:Lcom/swype/android/widget/TouchEventType;

    goto :goto_6

    .line 36
    :pswitch_a
    sget-object v0, Lcom/swype/android/widget/TouchEventType;->DOWN:Lcom/swype/android/widget/TouchEventType;

    goto :goto_6

    .line 39
    :pswitch_d
    sget-object v0, Lcom/swype/android/widget/TouchEventType;->UP:Lcom/swype/android/widget/TouchEventType;

    goto :goto_6

    .line 43
    :pswitch_10
    sget-object v0, Lcom/swype/android/widget/TouchEventType;->UP:Lcom/swype/android/widget/TouchEventType;

    goto :goto_6

    .line 31
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_a
        :pswitch_d
        :pswitch_7
        :pswitch_10
        :pswitch_5
        :pswitch_a
        :pswitch_d
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swype/android/widget/TouchEventType;
    .registers 2
    .parameter

    .prologue
    .line 5
    const-class v0, Lcom/swype/android/widget/TouchEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swype/android/widget/TouchEventType;

    return-object p0
.end method

.method public static values()[Lcom/swype/android/widget/TouchEventType;
    .registers 1

    .prologue
    .line 5
    sget-object v0, Lcom/swype/android/widget/TouchEventType;->$VALUES:[Lcom/swype/android/widget/TouchEventType;

    invoke-virtual {v0}, [Lcom/swype/android/widget/TouchEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swype/android/widget/TouchEventType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 2

    .prologue
    .line 17
    iget v0, p0, Lcom/swype/android/widget/TouchEventType;->value:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget v0, p0, Lcom/swype/android/widget/TouchEventType;->value:I

    packed-switch v0, :pswitch_data_12

    .line 26
    const-string v0, ""

    :goto_7
    return-object v0

    .line 22
    :pswitch_8
    const-string v0, "DOWN"

    goto :goto_7

    .line 23
    :pswitch_b
    const-string v0, "MOVE"

    goto :goto_7

    .line 24
    :pswitch_e
    const-string v0, "UP"

    goto :goto_7

    .line 21
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method
