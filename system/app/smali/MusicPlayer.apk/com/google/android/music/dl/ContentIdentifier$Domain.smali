.class public final enum Lcom/google/android/music/dl/ContentIdentifier$Domain;
.super Ljava/lang/Enum;
.source "ContentIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/ContentIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Domain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/dl/ContentIdentifier$Domain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/dl/ContentIdentifier$Domain;

.field public static final enum AT_HOME_PARTY:Lcom/google/android/music/dl/ContentIdentifier$Domain;

.field public static final enum AT_HOME_SINGLE:Lcom/google/android/music/dl/ContentIdentifier$Domain;

.field public static final enum DEFAULT:Lcom/google/android/music/dl/ContentIdentifier$Domain;

.field public static final enum SHARED:Lcom/google/android/music/dl/ContentIdentifier$Domain;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/google/android/music/dl/ContentIdentifier$Domain;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/dl/ContentIdentifier$Domain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/dl/ContentIdentifier$Domain;->DEFAULT:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    .line 27
    new-instance v0, Lcom/google/android/music/dl/ContentIdentifier$Domain;

    const-string v1, "SHARED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/dl/ContentIdentifier$Domain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/dl/ContentIdentifier$Domain;->SHARED:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    .line 28
    new-instance v0, Lcom/google/android/music/dl/ContentIdentifier$Domain;

    const-string v1, "AT_HOME_SINGLE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/dl/ContentIdentifier$Domain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/dl/ContentIdentifier$Domain;->AT_HOME_SINGLE:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    .line 29
    new-instance v0, Lcom/google/android/music/dl/ContentIdentifier$Domain;

    const-string v1, "AT_HOME_PARTY"

    invoke-direct {v0, v1, v5}, Lcom/google/android/music/dl/ContentIdentifier$Domain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/dl/ContentIdentifier$Domain;->AT_HOME_PARTY:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/music/dl/ContentIdentifier$Domain;

    sget-object v1, Lcom/google/android/music/dl/ContentIdentifier$Domain;->DEFAULT:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/dl/ContentIdentifier$Domain;->SHARED:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/dl/ContentIdentifier$Domain;->AT_HOME_SINGLE:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/music/dl/ContentIdentifier$Domain;->AT_HOME_PARTY:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/music/dl/ContentIdentifier$Domain;->$VALUES:[Lcom/google/android/music/dl/ContentIdentifier$Domain;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/dl/ContentIdentifier$Domain;
    .registers 2
    .parameter

    .prologue
    .line 25
    const-class v0, Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/ContentIdentifier$Domain;

    return-object v0
.end method

.method public static values()[Lcom/google/android/music/dl/ContentIdentifier$Domain;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/music/dl/ContentIdentifier$Domain;->$VALUES:[Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-virtual {v0}, [Lcom/google/android/music/dl/ContentIdentifier$Domain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/dl/ContentIdentifier$Domain;

    return-object v0
.end method


# virtual methods
.method public isAtHomeDomain()Z
    .registers 2

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/music/dl/ContentIdentifier$Domain;->AT_HOME_SINGLE:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/google/android/music/dl/ContentIdentifier$Domain;->AT_HOME_PARTY:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
