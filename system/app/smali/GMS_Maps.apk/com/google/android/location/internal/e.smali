.class public final enum Lcom/google/android/location/internal/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/location/internal/e;

.field public static final enum b:Lcom/google/android/location/internal/e;

.field public static final enum c:Lcom/google/android/location/internal/e;

.field private static final synthetic f:[Lcom/google/android/location/internal/e;


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    new-instance v0, Lcom/google/android/location/internal/e;

    const-string v1, "ANDROID"

    const-string v2, "com.google.android.location"

    const-string v3, "com.google.android.location.internal.server.NetworkLocationService"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/android/location/internal/e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/e;

    .line 31
    new-instance v0, Lcom/google/android/location/internal/e;

    const-string v1, "GMM"

    const-string v2, "com.google.android.apps.maps"

    const-string v3, "com.google.android.location.internal.server.GoogleLocationService"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/android/location/internal/e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/location/internal/e;->b:Lcom/google/android/location/internal/e;

    .line 33
    new-instance v0, Lcom/google/android/location/internal/e;

    const-string v1, "NONE"

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/google/android/location/internal/e;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/location/internal/e;->c:Lcom/google/android/location/internal/e;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/location/internal/e;

    sget-object v1, Lcom/google/android/location/internal/e;->a:Lcom/google/android/location/internal/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/location/internal/e;->b:Lcom/google/android/location/internal/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/location/internal/e;->c:Lcom/google/android/location/internal/e;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/location/internal/e;->f:[Lcom/google/android/location/internal/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/google/android/location/internal/e;->d:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/google/android/location/internal/e;->e:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/internal/e;
    .registers 2
    .parameter

    .prologue
    .line 28
    const-class v0, Lcom/google/android/location/internal/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/e;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/internal/e;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/location/internal/e;->f:[Lcom/google/android/location/internal/e;

    invoke-virtual {v0}, [Lcom/google/android/location/internal/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/internal/e;

    return-object v0
.end method
