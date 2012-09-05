.class public final enum LaP/j;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LaP/j;

.field public static final enum b:LaP/j;

.field public static final enum c:LaP/j;

.field private static final synthetic e:[LaP/j;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, LaP/j;

    const-string v1, "UPDATE_FREQUENCY_NONE"

    invoke-direct {v0, v1, v3, v3}, LaP/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, LaP/j;->a:LaP/j;

    new-instance v0, LaP/j;

    const-string v1, "UPDATE_FREQUENCY_SLOW"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v4, v2}, LaP/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, LaP/j;->b:LaP/j;

    new-instance v0, LaP/j;

    const-string v1, "UPDATE_FREQUENCY_FAST"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v5, v2}, LaP/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, LaP/j;->c:LaP/j;

    const/4 v0, 0x3

    new-array v0, v0, [LaP/j;

    sget-object v1, LaP/j;->a:LaP/j;

    aput-object v1, v0, v3

    sget-object v1, LaP/j;->b:LaP/j;

    aput-object v1, v0, v4

    sget-object v1, LaP/j;->c:LaP/j;

    aput-object v1, v0, v5

    sput-object v0, LaP/j;->e:[LaP/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    if-nez p3, :cond_9

    const/4 v0, 0x0

    :goto_6
    iput v0, p0, LaP/j;->d:I

    return-void

    :cond_9
    const v0, 0xf4240

    div-int/2addr v0, p3

    goto :goto_6
.end method

.method public static valueOf(Ljava/lang/String;)LaP/j;
    .registers 2

    const-class v0, LaP/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LaP/j;

    return-object v0
.end method

.method public static values()[LaP/j;
    .registers 1

    sget-object v0, LaP/j;->e:[LaP/j;

    invoke-virtual {v0}, [LaP/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaP/j;

    return-object v0
.end method
