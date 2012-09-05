.class final enum Lcom/samsung/wimax/napid/EapMethodType$Type;
.super Ljava/lang/Enum;
.source "EapMethodType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/EapMethodType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/wimax/napid/EapMethodType$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/wimax/napid/EapMethodType$Type;

.field public static final enum EMT_READ:Lcom/samsung/wimax/napid/EapMethodType$Type;

.field public static final enum EMT_UPDT:Lcom/samsung/wimax/napid/EapMethodType$Type;

.field public static final enum EMT_WRT:Lcom/samsung/wimax/napid/EapMethodType$Type;

.field public static final enum MAC_READ:Lcom/samsung/wimax/napid/EapMethodType$Type;

.field public static final enum PASS_READ:Lcom/samsung/wimax/napid/EapMethodType$Type;

.field public static final enum PASS_UPDT:Lcom/samsung/wimax/napid/EapMethodType$Type;

.field public static final enum PASS_WRT:Lcom/samsung/wimax/napid/EapMethodType$Type;

.field public static final enum UNKNOWN:Lcom/samsung/wimax/napid/EapMethodType$Type;

.field public static final enum USER_READ:Lcom/samsung/wimax/napid/EapMethodType$Type;

.field public static final enum USER_UPDT:Lcom/samsung/wimax/napid/EapMethodType$Type;

.field public static final enum USER_WRT:Lcom/samsung/wimax/napid/EapMethodType$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    new-instance v0, Lcom/samsung/wimax/napid/EapMethodType$Type;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/samsung/wimax/napid/EapMethodType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/EapMethodType$Type;->UNKNOWN:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 70
    new-instance v0, Lcom/samsung/wimax/napid/EapMethodType$Type;

    const-string v1, "EMT_READ"

    invoke-direct {v0, v1, v4}, Lcom/samsung/wimax/napid/EapMethodType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/EapMethodType$Type;->EMT_READ:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 71
    new-instance v0, Lcom/samsung/wimax/napid/EapMethodType$Type;

    const-string v1, "EMT_WRT"

    invoke-direct {v0, v1, v5}, Lcom/samsung/wimax/napid/EapMethodType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/EapMethodType$Type;->EMT_WRT:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 72
    new-instance v0, Lcom/samsung/wimax/napid/EapMethodType$Type;

    const-string v1, "EMT_UPDT"

    invoke-direct {v0, v1, v6}, Lcom/samsung/wimax/napid/EapMethodType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/EapMethodType$Type;->EMT_UPDT:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 73
    new-instance v0, Lcom/samsung/wimax/napid/EapMethodType$Type;

    const-string v1, "USER_READ"

    invoke-direct {v0, v1, v7}, Lcom/samsung/wimax/napid/EapMethodType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/EapMethodType$Type;->USER_READ:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 74
    new-instance v0, Lcom/samsung/wimax/napid/EapMethodType$Type;

    const-string v1, "USER_WRT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/EapMethodType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/EapMethodType$Type;->USER_WRT:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 75
    new-instance v0, Lcom/samsung/wimax/napid/EapMethodType$Type;

    const-string v1, "USER_UPDT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/EapMethodType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/EapMethodType$Type;->USER_UPDT:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 76
    new-instance v0, Lcom/samsung/wimax/napid/EapMethodType$Type;

    const-string v1, "PASS_READ"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/EapMethodType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/EapMethodType$Type;->PASS_READ:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 77
    new-instance v0, Lcom/samsung/wimax/napid/EapMethodType$Type;

    const-string v1, "PASS_WRT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/EapMethodType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/EapMethodType$Type;->PASS_WRT:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 78
    new-instance v0, Lcom/samsung/wimax/napid/EapMethodType$Type;

    const-string v1, "PASS_UPDT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/EapMethodType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/EapMethodType$Type;->PASS_UPDT:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 79
    new-instance v0, Lcom/samsung/wimax/napid/EapMethodType$Type;

    const-string v1, "MAC_READ"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/EapMethodType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/EapMethodType$Type;->MAC_READ:Lcom/samsung/wimax/napid/EapMethodType$Type;

    .line 68
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/samsung/wimax/napid/EapMethodType$Type;

    sget-object v1, Lcom/samsung/wimax/napid/EapMethodType$Type;->UNKNOWN:Lcom/samsung/wimax/napid/EapMethodType$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/wimax/napid/EapMethodType$Type;->EMT_READ:Lcom/samsung/wimax/napid/EapMethodType$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/wimax/napid/EapMethodType$Type;->EMT_WRT:Lcom/samsung/wimax/napid/EapMethodType$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/wimax/napid/EapMethodType$Type;->EMT_UPDT:Lcom/samsung/wimax/napid/EapMethodType$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/wimax/napid/EapMethodType$Type;->USER_READ:Lcom/samsung/wimax/napid/EapMethodType$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/wimax/napid/EapMethodType$Type;->USER_WRT:Lcom/samsung/wimax/napid/EapMethodType$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/wimax/napid/EapMethodType$Type;->USER_UPDT:Lcom/samsung/wimax/napid/EapMethodType$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/wimax/napid/EapMethodType$Type;->PASS_READ:Lcom/samsung/wimax/napid/EapMethodType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/wimax/napid/EapMethodType$Type;->PASS_WRT:Lcom/samsung/wimax/napid/EapMethodType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/wimax/napid/EapMethodType$Type;->PASS_UPDT:Lcom/samsung/wimax/napid/EapMethodType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/wimax/napid/EapMethodType$Type;->MAC_READ:Lcom/samsung/wimax/napid/EapMethodType$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/wimax/napid/EapMethodType$Type;->$VALUES:[Lcom/samsung/wimax/napid/EapMethodType$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/wimax/napid/EapMethodType$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 68
    const-class v0, Lcom/samsung/wimax/napid/EapMethodType$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/wimax/napid/EapMethodType$Type;

    return-object v0
.end method

.method public static values()[Lcom/samsung/wimax/napid/EapMethodType$Type;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/samsung/wimax/napid/EapMethodType$Type;->$VALUES:[Lcom/samsung/wimax/napid/EapMethodType$Type;

    invoke-virtual {v0}, [Lcom/samsung/wimax/napid/EapMethodType$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/wimax/napid/EapMethodType$Type;

    return-object v0
.end method
