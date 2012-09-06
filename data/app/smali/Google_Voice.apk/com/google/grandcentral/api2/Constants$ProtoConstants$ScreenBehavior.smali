.class public final enum Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;
.super Ljava/lang/Enum;
.source "Constants.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Constants$ProtoConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior; = null

.field public static final enum SCREENING_DISABLED:Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior; = null

.field public static final SCREENING_DISABLED_VALUE:I = 0x1

.field public static final enum SCREEN_ALL_UNKNOWN_CALLERS:Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior; = null

.field public static final SCREEN_ALL_UNKNOWN_CALLERS_VALUE:I = 0x0

.field public static final enum SCREEN_ONLY_BLOCKED_CALLERS:Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior; = null

.field public static final SCREEN_ONLY_BLOCKED_CALLERS_VALUE:I = 0x2

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;",
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

    .line 753
    new-instance v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;

    const-string v1, "SCREEN_ALL_UNKNOWN_CALLERS"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;->SCREEN_ALL_UNKNOWN_CALLERS:Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;

    .line 754
    new-instance v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;

    const-string v1, "SCREENING_DISABLED"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;->SCREENING_DISABLED:Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;

    .line 755
    new-instance v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;

    const-string v1, "SCREEN_ONLY_BLOCKED_CALLERS"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;->SCREEN_ONLY_BLOCKED_CALLERS:Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;

    .line 751
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;

    sget-object v1, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;->SCREEN_ALL_UNKNOWN_CALLERS:Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;->SCREENING_DISABLED:Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;->SCREEN_ONLY_BLOCKED_CALLERS:Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;->$VALUES:[Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;

    .line 779
    new-instance v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 788
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 789
    iput p4, p0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;->value:I

    .line 790
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;",
            ">;"
        }
    .end annotation

    .prologue
    .line 776
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;
    .registers 2
    .parameter "value"

    .prologue
    .line 766
    packed-switch p0, :pswitch_data_e

    .line 770
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 767
    :pswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;->SCREEN_ALL_UNKNOWN_CALLERS:Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;

    goto :goto_4

    .line 768
    :pswitch_8
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;->SCREENING_DISABLED:Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;

    goto :goto_4

    .line 769
    :pswitch_b
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;->SCREEN_ONLY_BLOCKED_CALLERS:Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;

    goto :goto_4

    .line 766
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;
    .registers 2
    .parameter "name"

    .prologue
    .line 751
    const-class v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;

    return-object v0
.end method

.method public static values()[Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;
    .registers 1

    .prologue
    .line 751
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;->$VALUES:[Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;

    invoke-virtual {v0}, [Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 763
    iget v0, p0, Lcom/google/grandcentral/api2/Constants$ProtoConstants$ScreenBehavior;->value:I

    return v0
.end method
