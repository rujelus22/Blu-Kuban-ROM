.class final enum Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;
.super Ljava/lang/Enum;
.source "SendEventRsvpOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/api/SendEventRsvpOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;

.field public static final enum REJECTED_OFF_NETWORK_DISPLAY_NAME:Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;

.field public static final enum SUCCESS:Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;

.field public static final enum UNKNOWN:Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;->UNKNOWN:Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;

    .line 34
    new-instance v0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;->SUCCESS:Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;

    .line 35
    new-instance v0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;

    const-string v1, "REJECTED_OFF_NETWORK_DISPLAY_NAME"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;->REJECTED_OFF_NETWORK_DISPLAY_NAME:Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;

    sget-object v1, Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;->UNKNOWN:Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;->SUCCESS:Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;->REJECTED_OFF_NETWORK_DISPLAY_NAME:Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;->$VALUES:[Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;
    .registers 2
    .parameter "name"

    .prologue
    .line 32
    const-class v0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;->$VALUES:[Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/api/SendEventRsvpOperation$Status;

    return-object v0
.end method
