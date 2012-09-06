.class public final enum Lcom/google/android/apps/common/offerslib/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/apps/common/offerslib/x;

.field public static final enum b:Lcom/google/android/apps/common/offerslib/x;

.field public static final enum c:Lcom/google/android/apps/common/offerslib/x;

.field private static final synthetic d:[Lcom/google/android/apps/common/offerslib/x;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    new-instance v0, Lcom/google/android/apps/common/offerslib/x;

    const-string v1, "LIST_VIEW"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/common/offerslib/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/common/offerslib/x;->a:Lcom/google/android/apps/common/offerslib/x;

    .line 135
    new-instance v0, Lcom/google/android/apps/common/offerslib/x;

    const-string v1, "MAP_VIEW"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/common/offerslib/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/common/offerslib/x;->b:Lcom/google/android/apps/common/offerslib/x;

    .line 136
    new-instance v0, Lcom/google/android/apps/common/offerslib/x;

    const-string v1, "PLACE_VIEW"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/common/offerslib/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/common/offerslib/x;->c:Lcom/google/android/apps/common/offerslib/x;

    .line 133
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/common/offerslib/x;

    sget-object v1, Lcom/google/android/apps/common/offerslib/x;->a:Lcom/google/android/apps/common/offerslib/x;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/common/offerslib/x;->b:Lcom/google/android/apps/common/offerslib/x;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/common/offerslib/x;->c:Lcom/google/android/apps/common/offerslib/x;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/common/offerslib/x;->d:[Lcom/google/android/apps/common/offerslib/x;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/common/offerslib/x;
    .registers 2
    .parameter

    .prologue
    .line 133
    const-class v0, Lcom/google/android/apps/common/offerslib/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/offerslib/x;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/common/offerslib/x;
    .registers 1

    .prologue
    .line 133
    sget-object v0, Lcom/google/android/apps/common/offerslib/x;->d:[Lcom/google/android/apps/common/offerslib/x;

    invoke-virtual {v0}, [Lcom/google/android/apps/common/offerslib/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/common/offerslib/x;

    return-object v0
.end method
