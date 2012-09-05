.class public final enum Lbl/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbl/c;

.field public static final enum b:Lbl/c;

.field public static final enum c:Lbl/c;

.field private static final synthetic e:[Lbl/c;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lbl/c;

    const-string v1, "RAIN_LIGHT"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v3, v2}, Lbl/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbl/c;->a:Lbl/c;

    new-instance v0, Lbl/c;

    const-string v1, "RAIN_NORMAL"

    const/16 v2, 0x40

    invoke-direct {v0, v1, v4, v2}, Lbl/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbl/c;->b:Lbl/c;

    new-instance v0, Lbl/c;

    const-string v1, "RAIN_HEAVY"

    const/16 v2, 0x80

    invoke-direct {v0, v1, v5, v2}, Lbl/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbl/c;->c:Lbl/c;

    const/4 v0, 0x3

    new-array v0, v0, [Lbl/c;

    sget-object v1, Lbl/c;->a:Lbl/c;

    aput-object v1, v0, v3

    sget-object v1, Lbl/c;->b:Lbl/c;

    aput-object v1, v0, v4

    sget-object v1, Lbl/c;->c:Lbl/c;

    aput-object v1, v0, v5

    sput-object v0, Lbl/c;->e:[Lbl/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbl/c;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbl/c;
    .registers 2

    const-class v0, Lbl/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbl/c;

    return-object v0
.end method

.method public static values()[Lbl/c;
    .registers 1

    sget-object v0, Lbl/c;->e:[Lbl/c;

    invoke-virtual {v0}, [Lbl/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbl/c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lbl/c;->d:I

    return v0
.end method
