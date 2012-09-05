.class public final enum Lcom/google/android/youtube/core/model/LiveEvent$Status;
.super Ljava/lang/Enum;
.source "LiveEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/LiveEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/core/model/LiveEvent$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/model/LiveEvent$Status;

.field public static final enum ACTIVE:Lcom/google/android/youtube/core/model/LiveEvent$Status;

.field public static final enum CANCELLED:Lcom/google/android/youtube/core/model/LiveEvent$Status;

.field public static final enum COMPLETED:Lcom/google/android/youtube/core/model/LiveEvent$Status;

.field public static final enum DELAYED:Lcom/google/android/youtube/core/model/LiveEvent$Status;

.field public static final enum PENDING:Lcom/google/android/youtube/core/model/LiveEvent$Status;

.field public static final enum REJECTED:Lcom/google/android/youtube/core/model/LiveEvent$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/google/android/youtube/core/model/LiveEvent$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/core/model/LiveEvent$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/LiveEvent$Status;->PENDING:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    .line 26
    new-instance v0, Lcom/google/android/youtube/core/model/LiveEvent$Status;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/core/model/LiveEvent$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/LiveEvent$Status;->ACTIVE:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    .line 27
    new-instance v0, Lcom/google/android/youtube/core/model/LiveEvent$Status;

    const-string v1, "DELAYED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/core/model/LiveEvent$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/LiveEvent$Status;->DELAYED:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    .line 28
    new-instance v0, Lcom/google/android/youtube/core/model/LiveEvent$Status;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/core/model/LiveEvent$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/LiveEvent$Status;->COMPLETED:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    .line 29
    new-instance v0, Lcom/google/android/youtube/core/model/LiveEvent$Status;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v7}, Lcom/google/android/youtube/core/model/LiveEvent$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/LiveEvent$Status;->CANCELLED:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    .line 30
    new-instance v0, Lcom/google/android/youtube/core/model/LiveEvent$Status;

    const-string v1, "REJECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/model/LiveEvent$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/core/model/LiveEvent$Status;->REJECTED:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/youtube/core/model/LiveEvent$Status;

    sget-object v1, Lcom/google/android/youtube/core/model/LiveEvent$Status;->PENDING:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/model/LiveEvent$Status;->ACTIVE:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/model/LiveEvent$Status;->DELAYED:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/model/LiveEvent$Status;->COMPLETED:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/model/LiveEvent$Status;->CANCELLED:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/model/LiveEvent$Status;->REJECTED:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/model/LiveEvent$Status;->$VALUES:[Lcom/google/android/youtube/core/model/LiveEvent$Status;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/LiveEvent$Status;
    .registers 2
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/google/android/youtube/core/model/LiveEvent$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/LiveEvent$Status;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/LiveEvent$Status;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/android/youtube/core/model/LiveEvent$Status;->$VALUES:[Lcom/google/android/youtube/core/model/LiveEvent$Status;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/model/LiveEvent$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/model/LiveEvent$Status;

    return-object v0
.end method
