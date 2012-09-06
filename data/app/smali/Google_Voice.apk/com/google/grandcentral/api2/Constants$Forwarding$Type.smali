.class public final enum Lcom/google/grandcentral/api2/Constants$Forwarding$Type;
.super Ljava/lang/Enum;
.source "Constants.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Constants$Forwarding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/grandcentral/api2/Constants$Forwarding$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/grandcentral/api2/Constants$Forwarding$Type; = null

.field public static final enum CELL:Lcom/google/grandcentral/api2/Constants$Forwarding$Type; = null

.field public static final CELL_VALUE:I = 0x2

.field public static final enum GIZMO:Lcom/google/grandcentral/api2/Constants$Forwarding$Type; = null

.field public static final GIZMO_VALUE:I = 0x7

.field public static final enum GOOGLE_TALK:Lcom/google/grandcentral/api2/Constants$Forwarding$Type; = null

.field public static final GOOGLE_TALK_VALUE:I = 0x9

.field public static final enum HOME:Lcom/google/grandcentral/api2/Constants$Forwarding$Type; = null

.field public static final HOME_VALUE:I = 0x1

.field public static final enum QUICK_ADD:Lcom/google/grandcentral/api2/Constants$Forwarding$Type; = null

.field public static final QUICK_ADD_VALUE:I = 0x63

.field public static final enum SIP:Lcom/google/grandcentral/api2/Constants$Forwarding$Type; = null

.field public static final SIP_VALUE:I = 0x4

.field public static final enum UNKNOWN:Lcom/google/grandcentral/api2/Constants$Forwarding$Type; = null

.field public static final UNKNOWN_VALUE:I = 0x0

.field public static final enum WORK:Lcom/google/grandcentral/api2/Constants$Forwarding$Type; = null

.field public static final WORK_VALUE:I = 0x3

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Constants$Forwarding$Type;",
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

    .line 81
    new-instance v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->UNKNOWN:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    .line 82
    new-instance v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->HOME:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    .line 83
    new-instance v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    const-string v1, "CELL"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->CELL:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    .line 84
    new-instance v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    const-string v1, "WORK"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->WORK:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    .line 85
    new-instance v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    const-string v1, "SIP"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->SIP:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    .line 86
    new-instance v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    const-string v1, "GIZMO"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->GIZMO:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    .line 87
    new-instance v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    const-string v1, "GOOGLE_TALK"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->GOOGLE_TALK:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    .line 88
    new-instance v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    const-string v1, "QUICK_ADD"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x63

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->QUICK_ADD:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    .line 79
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    sget-object v1, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->UNKNOWN:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->HOME:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->CELL:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->WORK:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->SIP:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->GIZMO:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->GOOGLE_TALK:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->QUICK_ADD:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->$VALUES:[Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    .line 122
    new-instance v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Constants$Forwarding$Type$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    iput p4, p0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->value:I

    .line 133
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Constants$Forwarding$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/grandcentral/api2/Constants$Forwarding$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 104
    sparse-switch p0, :sswitch_data_1e

    .line 113
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 105
    :sswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->UNKNOWN:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    goto :goto_4

    .line 106
    :sswitch_8
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->HOME:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    goto :goto_4

    .line 107
    :sswitch_b
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->CELL:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    goto :goto_4

    .line 108
    :sswitch_e
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->WORK:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    goto :goto_4

    .line 109
    :sswitch_11
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->SIP:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    goto :goto_4

    .line 110
    :sswitch_14
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->GIZMO:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    goto :goto_4

    .line 111
    :sswitch_17
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->GOOGLE_TALK:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    goto :goto_4

    .line 112
    :sswitch_1a
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->QUICK_ADD:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    goto :goto_4

    .line 104
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_8
        0x2 -> :sswitch_b
        0x3 -> :sswitch_e
        0x4 -> :sswitch_11
        0x7 -> :sswitch_14
        0x9 -> :sswitch_17
        0x63 -> :sswitch_1a
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/grandcentral/api2/Constants$Forwarding$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 79
    const-class v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/grandcentral/api2/Constants$Forwarding$Type;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->$VALUES:[Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    invoke-virtual {v0}, [Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->value:I

    return v0
.end method
