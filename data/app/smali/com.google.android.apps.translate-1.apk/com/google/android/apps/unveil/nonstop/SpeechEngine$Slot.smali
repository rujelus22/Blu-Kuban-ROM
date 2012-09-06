.class public final enum Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;
.super Ljava/lang/Enum;
.source "SpeechEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/nonstop/SpeechEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Slot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;

.field public static final enum RESULT:Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;

.field public static final enum SONAR_PING:Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;

.field public static final enum STATUS:Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;

    const-string v1, "STATUS"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;->STATUS:Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;

    .line 44
    new-instance v0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;

    const-string v1, "RESULT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;->RESULT:Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;

    .line 48
    new-instance v0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;

    const-string v1, "SONAR_PING"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;->SONAR_PING:Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;

    sget-object v1, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;->STATUS:Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;->RESULT:Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;->SONAR_PING:Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;->$VALUES:[Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;
    .registers 2
    .parameter "name"

    .prologue
    .line 36
    const-class v0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;->$VALUES:[Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;

    invoke-virtual {v0}, [Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/unveil/nonstop/SpeechEngine$Slot;

    return-object v0
.end method
