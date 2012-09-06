.class final enum Lcom/google/googlenav/ui/android/ag;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/ui/android/ag;

.field public static final enum b:Lcom/google/googlenav/ui/android/ag;

.field public static final enum c:Lcom/google/googlenav/ui/android/ag;

.field public static final enum d:Lcom/google/googlenav/ui/android/ag;

.field private static final synthetic e:[Lcom/google/googlenav/ui/android/ag;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/google/googlenav/ui/android/ag;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/android/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/android/ag;->a:Lcom/google/googlenav/ui/android/ag;

    new-instance v0, Lcom/google/googlenav/ui/android/ag;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/ui/android/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/android/ag;->b:Lcom/google/googlenav/ui/android/ag;

    new-instance v0, Lcom/google/googlenav/ui/android/ag;

    const-string v1, "MIDDLE"

    invoke-direct {v0, v1, v4}, Lcom/google/googlenav/ui/android/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/android/ag;->c:Lcom/google/googlenav/ui/android/ag;

    new-instance v0, Lcom/google/googlenav/ui/android/ag;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v5}, Lcom/google/googlenav/ui/android/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/ui/android/ag;->d:Lcom/google/googlenav/ui/android/ag;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/googlenav/ui/android/ag;

    sget-object v1, Lcom/google/googlenav/ui/android/ag;->a:Lcom/google/googlenav/ui/android/ag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/ui/android/ag;->b:Lcom/google/googlenav/ui/android/ag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/ui/android/ag;->c:Lcom/google/googlenav/ui/android/ag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlenav/ui/android/ag;->d:Lcom/google/googlenav/ui/android/ag;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/googlenav/ui/android/ag;->e:[Lcom/google/googlenav/ui/android/ag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/ui/android/ag;
    .registers 2
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/google/googlenav/ui/android/ag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/ag;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/ui/android/ag;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/googlenav/ui/android/ag;->e:[Lcom/google/googlenav/ui/android/ag;

    invoke-virtual {v0}, [Lcom/google/googlenav/ui/android/ag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ui/android/ag;

    return-object v0
.end method
