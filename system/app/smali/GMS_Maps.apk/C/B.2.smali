.class public final enum LC/B;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LC/B;

.field public static final enum b:LC/B;

.field public static final enum c:LC/B;

.field private static final synthetic d:[LC/B;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, LC/B;

    const-string v1, "MISSED_STOP"

    invoke-direct {v0, v1, v2}, LC/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC/B;->a:LC/B;

    .line 40
    new-instance v0, LC/B;

    const-string v1, "WRONG_WAY"

    invoke-direct {v0, v1, v3}, LC/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC/B;->b:LC/B;

    .line 45
    new-instance v0, LC/B;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, LC/B;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC/B;->c:LC/B;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [LC/B;

    sget-object v1, LC/B;->a:LC/B;

    aput-object v1, v0, v2

    sget-object v1, LC/B;->b:LC/B;

    aput-object v1, v0, v3

    sget-object v1, LC/B;->c:LC/B;

    aput-object v1, v0, v4

    sput-object v0, LC/B;->d:[LC/B;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LC/B;
    .registers 2
    .parameter

    .prologue
    .line 28
    const-class v0, LC/B;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LC/B;

    return-object v0
.end method

.method public static values()[LC/B;
    .registers 1

    .prologue
    .line 28
    sget-object v0, LC/B;->d:[LC/B;

    invoke-virtual {v0}, [LC/B;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LC/B;

    return-object v0
.end method
