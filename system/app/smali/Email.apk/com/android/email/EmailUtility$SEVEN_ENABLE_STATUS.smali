.class public final enum Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;
.super Ljava/lang/Enum;
.source "EmailUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/EmailUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SEVEN_ENABLE_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;

.field public static final enum DIABLED:Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;

.field public static final enum ENABLED:Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;

.field public static final enum NOT_INITIALIZED:Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;

    const-string v1, "NOT_INITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;->NOT_INITIALIZED:Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;

    new-instance v0, Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1, v3}, Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;->ENABLED:Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;

    new-instance v0, Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;

    const-string v1, "DIABLED"

    invoke-direct {v0, v1, v4}, Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;->DIABLED:Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;

    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;

    sget-object v1, Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;->NOT_INITIALIZED:Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;->ENABLED:Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;->DIABLED:Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;->$VALUES:[Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;

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
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;
    .registers 2
    .parameter

    .prologue
    .line 91
    const-class v0, Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;->$VALUES:[Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;

    invoke-virtual {v0}, [Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/email/EmailUtility$SEVEN_ENABLE_STATUS;

    return-object v0
.end method