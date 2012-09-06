.class public final enum LE/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LE/n;

.field public static final enum b:LE/n;

.field public static final enum c:LE/n;

.field private static final synthetic d:[LE/n;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, LE/n;

    const-string v1, "NAVIGATION_LOCATION_KNOWN"

    invoke-direct {v0, v1, v2}, LE/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, LE/n;->a:LE/n;

    .line 32
    new-instance v0, LE/n;

    const-string v1, "NAVIGATION_LOCATION_LOST"

    invoke-direct {v0, v1, v3}, LE/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, LE/n;->b:LE/n;

    .line 33
    new-instance v0, LE/n;

    const-string v1, "NAVIGATION_OFF_ROUTE"

    invoke-direct {v0, v1, v4}, LE/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, LE/n;->c:LE/n;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [LE/n;

    sget-object v1, LE/n;->a:LE/n;

    aput-object v1, v0, v2

    sget-object v1, LE/n;->b:LE/n;

    aput-object v1, v0, v3

    sget-object v1, LE/n;->c:LE/n;

    aput-object v1, v0, v4

    sput-object v0, LE/n;->d:[LE/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LE/n;
    .registers 2
    .parameter

    .prologue
    .line 30
    const-class v0, LE/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LE/n;

    return-object v0
.end method

.method public static values()[LE/n;
    .registers 1

    .prologue
    .line 30
    sget-object v0, LE/n;->d:[LE/n;

    invoke-virtual {v0}, [LE/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LE/n;

    return-object v0
.end method
