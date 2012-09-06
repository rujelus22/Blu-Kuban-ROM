.class public final enum Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;
.super Ljava/lang/Enum;
.source "CheckinHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/CheckinHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

.field public static final enum RETRY_SCHEDULED:Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

.field public static final enum TICKLE_RECEIVED:Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

.field public static final enum UPDATE_COMPLETED:Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

.field public static final enum UPDATE_FAILED:Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

.field public static final enum UPDATE_STARTED:Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    const-string v1, "TICKLE_RECEIVED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;->TICKLE_RECEIVED:Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    .line 18
    new-instance v0, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    const-string v1, "UPDATE_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;->UPDATE_STARTED:Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    .line 19
    new-instance v0, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    const-string v1, "UPDATE_FAILED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;->UPDATE_FAILED:Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    .line 20
    new-instance v0, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    const-string v1, "UPDATE_COMPLETED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;->UPDATE_COMPLETED:Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    .line 21
    new-instance v0, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    const-string v1, "RETRY_SCHEDULED"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;->RETRY_SCHEDULED:Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    sget-object v1, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;->TICKLE_RECEIVED:Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;->UPDATE_STARTED:Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;->UPDATE_FAILED:Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;->UPDATE_COMPLETED:Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;->RETRY_SCHEDULED:Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;->$VALUES:[Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;
    .registers 2
    .parameter "name"

    .prologue
    .line 16
    const-class v0, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;->$VALUES:[Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    invoke-virtual {v0}, [Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    return-object v0
.end method
