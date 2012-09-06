.class public final enum Lcom/google/android/apps/googlevoice/UpdateStateManager$State;
.super Ljava/lang/Enum;
.source "UpdateStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/UpdateStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/googlevoice/UpdateStateManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

.field public static final enum FAILED:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

.field public static final enum OK:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

.field public static final enum UPDATING:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;->OK:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    new-instance v0, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    const-string v1, "UPDATING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;->UPDATING:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    new-instance v0, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;->FAILED:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    sget-object v1, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;->OK:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;->UPDATING:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;->FAILED:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;->$VALUES:[Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/UpdateStateManager$State;
    .registers 2
    .parameter "name"

    .prologue
    .line 21
    const-class v0, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/googlevoice/UpdateStateManager$State;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;->$VALUES:[Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    invoke-virtual {v0}, [Lcom/google/android/apps/googlevoice/UpdateStateManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    return-object v0
.end method
