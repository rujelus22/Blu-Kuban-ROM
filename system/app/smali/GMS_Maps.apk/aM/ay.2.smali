.class public final enum LaM/ay;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LaM/ay;

.field public static final enum b:LaM/ay;

.field public static final enum c:LaM/ay;

.field public static final enum d:LaM/ay;

.field public static final enum e:LaM/ay;

.field private static final synthetic f:[LaM/ay;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, LaM/ay;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, LaM/ay;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaM/ay;->a:LaM/ay;

    .line 60
    new-instance v0, LaM/ay;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v3}, LaM/ay;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaM/ay;->b:LaM/ay;

    .line 61
    new-instance v0, LaM/ay;

    const-string v1, "DIRECTIONS"

    invoke-direct {v0, v1, v4}, LaM/ay;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaM/ay;->c:LaM/ay;

    .line 62
    new-instance v0, LaM/ay;

    const-string v1, "LATITUDE"

    invoke-direct {v0, v1, v5}, LaM/ay;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaM/ay;->d:LaM/ay;

    .line 63
    new-instance v0, LaM/ay;

    const-string v1, "TRANSIT"

    invoke-direct {v0, v1, v6}, LaM/ay;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaM/ay;->e:LaM/ay;

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [LaM/ay;

    sget-object v1, LaM/ay;->a:LaM/ay;

    aput-object v1, v0, v2

    sget-object v1, LaM/ay;->b:LaM/ay;

    aput-object v1, v0, v3

    sget-object v1, LaM/ay;->c:LaM/ay;

    aput-object v1, v0, v4

    sget-object v1, LaM/ay;->d:LaM/ay;

    aput-object v1, v0, v5

    sget-object v1, LaM/ay;->e:LaM/ay;

    aput-object v1, v0, v6

    sput-object v0, LaM/ay;->f:[LaM/ay;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LaM/ay;
    .registers 2
    .parameter

    .prologue
    .line 58
    const-class v0, LaM/ay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LaM/ay;

    return-object v0
.end method

.method public static values()[LaM/ay;
    .registers 1

    .prologue
    .line 58
    sget-object v0, LaM/ay;->f:[LaM/ay;

    invoke-virtual {v0}, [LaM/ay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaM/ay;

    return-object v0
.end method
