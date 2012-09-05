.class public final enum LaA/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LaA/f;

.field public static final enum b:LaA/f;

.field public static final enum c:LaA/f;

.field private static final synthetic d:[LaA/f;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, LaA/f;

    const-string v1, "NO"

    invoke-direct {v0, v1, v2}, LaA/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaA/f;->a:LaA/f;

    new-instance v0, LaA/f;

    const-string v1, "MAYBE"

    invoke-direct {v0, v1, v3}, LaA/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaA/f;->b:LaA/f;

    new-instance v0, LaA/f;

    const-string v1, "YES"

    invoke-direct {v0, v1, v4}, LaA/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaA/f;->c:LaA/f;

    const/4 v0, 0x3

    new-array v0, v0, [LaA/f;

    sget-object v1, LaA/f;->a:LaA/f;

    aput-object v1, v0, v2

    sget-object v1, LaA/f;->b:LaA/f;

    aput-object v1, v0, v3

    sget-object v1, LaA/f;->c:LaA/f;

    aput-object v1, v0, v4

    sput-object v0, LaA/f;->d:[LaA/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LaA/f;
    .registers 2

    const-class v0, LaA/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LaA/f;

    return-object v0
.end method

.method public static values()[LaA/f;
    .registers 1

    sget-object v0, LaA/f;->d:[LaA/f;

    invoke-virtual {v0}, [LaA/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaA/f;

    return-object v0
.end method
