.class public final enum Lcom/google/android/apps/googlevoice/CallLogService$StatusType;
.super Ljava/lang/Enum;
.source "CallLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/CallLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/googlevoice/CallLogService$StatusType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

.field public static final enum AUTHENTICATION_FAILURE:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

.field public static final enum CALL_ABANDONED:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

.field public static final enum GOT_ACCESS_NUMBER:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

.field public static final enum INITIATE_CALL_REQUEST:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

.field public static final enum NO_ACCESS_NUMBER:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

.field public static final enum UNKNOWN:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->UNKNOWN:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    .line 53
    new-instance v0, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    const-string v1, "INITIATE_CALL_REQUEST"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->INITIATE_CALL_REQUEST:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    .line 54
    new-instance v0, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    const-string v1, "GOT_ACCESS_NUMBER"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->GOT_ACCESS_NUMBER:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    .line 55
    new-instance v0, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    const-string v1, "NO_ACCESS_NUMBER"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->NO_ACCESS_NUMBER:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    .line 56
    new-instance v0, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    const-string v1, "AUTHENTICATION_FAILURE"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->AUTHENTICATION_FAILURE:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    .line 57
    new-instance v0, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    const-string v1, "CALL_ABANDONED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->CALL_ABANDONED:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    sget-object v1, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->UNKNOWN:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->INITIATE_CALL_REQUEST:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->GOT_ACCESS_NUMBER:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->NO_ACCESS_NUMBER:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->AUTHENTICATION_FAILURE:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->CALL_ABANDONED:Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->$VALUES:[Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/CallLogService$StatusType;
    .registers 2
    .parameter "name"

    .prologue
    .line 51
    const-class v0, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/googlevoice/CallLogService$StatusType;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->$VALUES:[Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    invoke-virtual {v0}, [Lcom/google/android/apps/googlevoice/CallLogService$StatusType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/googlevoice/CallLogService$StatusType;

    return-object v0
.end method
