.class public final enum Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;
.super Ljava/lang/Enum;
.source "Constants.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Constants$AccountConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignupSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource; = null

.field public static final enum GIZMO:Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource; = null

.field public static final GIZMO_VALUE:I = 0x1

.field public static final enum GOOGLE_TALK:Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource; = null

.field public static final GOOGLE_TALK_VALUE:I = 0x2

.field public static final enum UNKNOWN:Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource; = null

.field public static final UNKNOWN_VALUE:I = 0xff

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1036
    new-instance v0, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;

    const-string v1, "GIZMO"

    invoke-direct {v0, v1, v5, v5, v3}, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;->GIZMO:Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;

    .line 1037
    new-instance v0, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;

    const-string v1, "GOOGLE_TALK"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;->GOOGLE_TALK:Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;

    .line 1038
    new-instance v0, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xff

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;->UNKNOWN:Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;

    .line 1034
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;

    sget-object v1, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;->GIZMO:Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;->GOOGLE_TALK:Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;->UNKNOWN:Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;->$VALUES:[Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;

    .line 1062
    new-instance v0, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1071
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1072
    iput p4, p0, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;->value:I

    .line 1073
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1059
    sget-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;
    .registers 2
    .parameter "value"

    .prologue
    .line 1049
    sparse-switch p0, :sswitch_data_e

    .line 1053
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1050
    :sswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;->GIZMO:Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;

    goto :goto_4

    .line 1051
    :sswitch_8
    sget-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;->GOOGLE_TALK:Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;

    goto :goto_4

    .line 1052
    :sswitch_b
    sget-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;->UNKNOWN:Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;

    goto :goto_4

    .line 1049
    :sswitch_data_e
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_8
        0xff -> :sswitch_b
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;
    .registers 2
    .parameter "name"

    .prologue
    .line 1034
    const-class v0, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;

    return-object v0
.end method

.method public static values()[Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;
    .registers 1

    .prologue
    .line 1034
    sget-object v0, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;->$VALUES:[Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;

    invoke-virtual {v0}, [Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 1046
    iget v0, p0, Lcom/google/grandcentral/api2/Constants$AccountConstants$SignupSource;->value:I

    return v0
.end method
