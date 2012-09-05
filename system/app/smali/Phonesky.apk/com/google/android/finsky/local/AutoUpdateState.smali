.class public final enum Lcom/google/android/finsky/local/AutoUpdateState;
.super Ljava/lang/Enum;
.source "AutoUpdateState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/local/AutoUpdateState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/local/AutoUpdateState;

.field public static final enum DEFAULT:Lcom/google/android/finsky/local/AutoUpdateState;

.field public static final enum DISABLED:Lcom/google/android/finsky/local/AutoUpdateState;

.field public static final enum ENABLED:Lcom/google/android/finsky/local/AutoUpdateState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/google/android/finsky/local/AutoUpdateState;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/local/AutoUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/local/AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/local/AutoUpdateState;

    .line 16
    new-instance v0, Lcom/google/android/finsky/local/AutoUpdateState;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/local/AutoUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/local/AutoUpdateState;->DISABLED:Lcom/google/android/finsky/local/AutoUpdateState;

    .line 21
    new-instance v0, Lcom/google/android/finsky/local/AutoUpdateState;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/local/AutoUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/local/AutoUpdateState;->ENABLED:Lcom/google/android/finsky/local/AutoUpdateState;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/finsky/local/AutoUpdateState;

    sget-object v1, Lcom/google/android/finsky/local/AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/local/AutoUpdateState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/local/AutoUpdateState;->DISABLED:Lcom/google/android/finsky/local/AutoUpdateState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/local/AutoUpdateState;->ENABLED:Lcom/google/android/finsky/local/AutoUpdateState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/finsky/local/AutoUpdateState;->$VALUES:[Lcom/google/android/finsky/local/AutoUpdateState;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/local/AutoUpdateState;
    .registers 2
    .parameter

    .prologue
    .line 5
    const-class v0, Lcom/google/android/finsky/local/AutoUpdateState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/local/AutoUpdateState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/local/AutoUpdateState;
    .registers 1

    .prologue
    .line 5
    sget-object v0, Lcom/google/android/finsky/local/AutoUpdateState;->$VALUES:[Lcom/google/android/finsky/local/AutoUpdateState;

    invoke-virtual {v0}, [Lcom/google/android/finsky/local/AutoUpdateState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/local/AutoUpdateState;

    return-object v0
.end method
