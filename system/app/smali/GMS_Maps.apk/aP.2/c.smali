.class final enum LaP/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LaP/c;

.field public static final enum b:LaP/c;

.field private static final synthetic c:[LaP/c;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, LaP/c;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v2}, LaP/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaP/c;->a:LaP/c;

    new-instance v0, LaP/c;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v3}, LaP/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaP/c;->b:LaP/c;

    const/4 v0, 0x2

    new-array v0, v0, [LaP/c;

    sget-object v1, LaP/c;->a:LaP/c;

    aput-object v1, v0, v2

    sget-object v1, LaP/c;->b:LaP/c;

    aput-object v1, v0, v3

    sput-object v0, LaP/c;->c:[LaP/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LaP/c;
    .registers 2

    const-class v0, LaP/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LaP/c;

    return-object v0
.end method

.method public static values()[LaP/c;
    .registers 1

    sget-object v0, LaP/c;->c:[LaP/c;

    invoke-virtual {v0}, [LaP/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaP/c;

    return-object v0
.end method
