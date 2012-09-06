.class public final enum LC/H;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LC/H;

.field public static final enum b:LC/H;

.field public static final enum c:LC/H;

.field public static final enum d:LC/H;

.field public static final enum e:LC/H;

.field private static final synthetic f:[LC/H;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, LC/H;

    const-string v1, "UNAVAIL"

    invoke-direct {v0, v1, v2}, LC/H;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC/H;->a:LC/H;

    .line 29
    new-instance v0, LC/H;

    const-string v1, "OFF_ROUTE"

    invoke-direct {v0, v1, v3}, LC/H;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC/H;->b:LC/H;

    .line 35
    new-instance v0, LC/H;

    const-string v1, "NEEDS_MORE_FIXES"

    invoke-direct {v0, v1, v4}, LC/H;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC/H;->c:LC/H;

    .line 40
    new-instance v0, LC/H;

    const-string v1, "ALMOST_SURE"

    invoke-direct {v0, v1, v5}, LC/H;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC/H;->d:LC/H;

    .line 45
    new-instance v0, LC/H;

    const-string v1, "CERTAIN"

    invoke-direct {v0, v1, v6}, LC/H;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC/H;->e:LC/H;

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [LC/H;

    sget-object v1, LC/H;->a:LC/H;

    aput-object v1, v0, v2

    sget-object v1, LC/H;->b:LC/H;

    aput-object v1, v0, v3

    sget-object v1, LC/H;->c:LC/H;

    aput-object v1, v0, v4

    sget-object v1, LC/H;->d:LC/H;

    aput-object v1, v0, v5

    sget-object v1, LC/H;->e:LC/H;

    aput-object v1, v0, v6

    sput-object v0, LC/H;->f:[LC/H;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LC/H;
    .registers 2
    .parameter

    .prologue
    .line 20
    const-class v0, LC/H;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LC/H;

    return-object v0
.end method

.method public static values()[LC/H;
    .registers 1

    .prologue
    .line 20
    sget-object v0, LC/H;->f:[LC/H;

    invoke-virtual {v0}, [LC/H;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LC/H;

    return-object v0
.end method
