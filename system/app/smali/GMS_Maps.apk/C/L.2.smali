.class public final enum LC/L;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LC/L;

.field public static final enum b:LC/L;

.field public static final enum c:LC/L;

.field private static final synthetic d:[LC/L;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, LC/L;

    const-string v1, "RANDOMIZE_EVENTS"

    invoke-direct {v0, v1, v2}, LC/L;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC/L;->a:LC/L;

    .line 48
    new-instance v0, LC/L;

    const-string v1, "CONSTANT_PROGRESS_INCREMENT"

    invoke-direct {v0, v1, v3}, LC/L;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC/L;->b:LC/L;

    .line 54
    new-instance v0, LC/L;

    const-string v1, "CONSTANT_SPEED"

    invoke-direct {v0, v1, v4}, LC/L;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC/L;->c:LC/L;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [LC/L;

    sget-object v1, LC/L;->a:LC/L;

    aput-object v1, v0, v2

    sget-object v1, LC/L;->b:LC/L;

    aput-object v1, v0, v3

    sget-object v1, LC/L;->c:LC/L;

    aput-object v1, v0, v4

    sput-object v0, LC/L;->d:[LC/L;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LC/L;
    .registers 2
    .parameter

    .prologue
    .line 37
    const-class v0, LC/L;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LC/L;

    return-object v0
.end method

.method public static values()[LC/L;
    .registers 1

    .prologue
    .line 37
    sget-object v0, LC/L;->d:[LC/L;

    invoke-virtual {v0}, [LC/L;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LC/L;

    return-object v0
.end method
