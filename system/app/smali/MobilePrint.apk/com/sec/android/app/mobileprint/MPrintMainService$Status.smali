.class final enum Lcom/sec/android/app/mobileprint/MPrintMainService$Status;
.super Ljava/lang/Enum;
.source "MPrintMainService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/mobileprint/MPrintMainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/mobileprint/MPrintMainService$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

.field public static final enum CANCELLING:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

.field public static final enum IDLE:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

.field public static final enum REQUESTING:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

.field public static final enum RUNNING:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->IDLE:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    .line 78
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    const-string v1, "REQUESTING"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->REQUESTING:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    .line 79
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->RUNNING:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    .line 80
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    const-string v1, "CANCELLING"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->CANCELLING:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    sget-object v1, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->IDLE:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->REQUESTING:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->RUNNING:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->CANCELLING:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->$VALUES:[Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

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
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/mobileprint/MPrintMainService$Status;
    .registers 2
    .parameter "name"

    .prologue
    .line 76
    const-class v0, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/mobileprint/MPrintMainService$Status;
    .registers 1

    .prologue
    .line 76
    sget-object v0, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->$VALUES:[Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    invoke-virtual {v0}, [Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    return-object v0
.end method
