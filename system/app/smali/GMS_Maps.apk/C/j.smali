.class public final enum LC/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LC/j;

.field public static final enum b:LC/j;

.field public static final enum c:LC/j;

.field public static final enum d:LC/j;

.field private static final synthetic e:[LC/j;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, LC/j;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v2}, LC/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC/j;->a:LC/j;

    .line 57
    new-instance v0, LC/j;

    const-string v1, "ALMOST_INVALID"

    invoke-direct {v0, v1, v3}, LC/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC/j;->b:LC/j;

    .line 66
    new-instance v0, LC/j;

    const-string v1, "COULD_BE_VALID"

    invoke-direct {v0, v1, v4}, LC/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC/j;->c:LC/j;

    .line 72
    new-instance v0, LC/j;

    const-string v1, "VALID"

    invoke-direct {v0, v1, v5}, LC/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC/j;->d:LC/j;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [LC/j;

    sget-object v1, LC/j;->a:LC/j;

    aput-object v1, v0, v2

    sget-object v1, LC/j;->b:LC/j;

    aput-object v1, v0, v3

    sget-object v1, LC/j;->c:LC/j;

    aput-object v1, v0, v4

    sget-object v1, LC/j;->d:LC/j;

    aput-object v1, v0, v5

    sput-object v0, LC/j;->e:[LC/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LC/j;
    .registers 2
    .parameter

    .prologue
    .line 43
    const-class v0, LC/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LC/j;

    return-object v0
.end method

.method public static values()[LC/j;
    .registers 1

    .prologue
    .line 43
    sget-object v0, LC/j;->e:[LC/j;

    invoke-virtual {v0}, [LC/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LC/j;

    return-object v0
.end method
