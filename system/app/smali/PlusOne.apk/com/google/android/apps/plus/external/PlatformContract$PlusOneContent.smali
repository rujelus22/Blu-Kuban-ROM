.class public Lcom/google/android/apps/plus/external/PlatformContract$PlusOneContent;
.super Lcom/google/android/apps/plus/external/PlatformContract$ContentBase;
.source "PlatformContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/external/PlatformContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlusOneContent"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;

.field public static final STATE_ANONYMOUS:Ljava/lang/Integer;

.field public static final STATE_NOTPLUSONED:Ljava/lang/Integer;

.field public static final STATE_PLUSONED:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/external/PlatformContract$PlusOneContent;->STATE_PLUSONED:Ljava/lang/Integer;

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/external/PlatformContract$PlusOneContent;->STATE_NOTPLUSONED:Ljava/lang/Integer;

    .line 110
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/external/PlatformContract$PlusOneContent;->STATE_ANONYMOUS:Ljava/lang/Integer;

    .line 122
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "uri"

    aput-object v1, v0, v2

    const-string v1, "count"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "token"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/external/PlatformContract$PlusOneContent;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/google/android/apps/plus/external/PlatformContract$ContentBase;-><init>()V

    .line 126
    return-void
.end method
