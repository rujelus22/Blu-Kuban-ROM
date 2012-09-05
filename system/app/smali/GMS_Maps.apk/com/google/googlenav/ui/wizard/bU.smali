.class public final enum Lcom/google/googlenav/ui/wizard/bU;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/googlenav/ui/wizard/bU;

.field public static final enum b:Lcom/google/googlenav/ui/wizard/bU;

.field public static final enum c:Lcom/google/googlenav/ui/wizard/bU;

.field public static final enum d:Lcom/google/googlenav/ui/wizard/bU;

.field private static final synthetic g:[Lcom/google/googlenav/ui/wizard/bU;


# instance fields
.field private e:I

.field private f:Lai/f;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/googlenav/ui/wizard/bU;

    const-string v1, "HOME_GRAPH"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/google/googlenav/ui/wizard/bU;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/bU;->a:Lcom/google/googlenav/ui/wizard/bU;

    new-instance v0, Lcom/google/googlenav/ui/wizard/bU;

    const-string v1, "WORK_GRAPH"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v4, v2}, Lcom/google/googlenav/ui/wizard/bU;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/bU;

    new-instance v0, Lcom/google/googlenav/ui/wizard/bU;

    const-string v1, "OUT_GRAPH"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v5, v2}, Lcom/google/googlenav/ui/wizard/bU;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/bU;->c:Lcom/google/googlenav/ui/wizard/bU;

    new-instance v0, Lcom/google/googlenav/ui/wizard/bU;

    const-string v1, "LAST_WEEK_GRAPH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v6, v2}, Lcom/google/googlenav/ui/wizard/bU;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/bU;->d:Lcom/google/googlenav/ui/wizard/bU;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/googlenav/ui/wizard/bU;

    sget-object v1, Lcom/google/googlenav/ui/wizard/bU;->a:Lcom/google/googlenav/ui/wizard/bU;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/ui/wizard/bU;->b:Lcom/google/googlenav/ui/wizard/bU;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlenav/ui/wizard/bU;->c:Lcom/google/googlenav/ui/wizard/bU;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/googlenav/ui/wizard/bU;->d:Lcom/google/googlenav/ui/wizard/bU;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/googlenav/ui/wizard/bU;->g:[Lcom/google/googlenav/ui/wizard/bU;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/googlenav/ui/wizard/bU;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/bU;
    .registers 2

    const-class v0, Lcom/google/googlenav/ui/wizard/bU;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/bU;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/ui/wizard/bU;
    .registers 1

    sget-object v0, Lcom/google/googlenav/ui/wizard/bU;->g:[Lcom/google/googlenav/ui/wizard/bU;

    invoke-virtual {v0}, [Lcom/google/googlenav/ui/wizard/bU;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ui/wizard/bU;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bU;->e:I

    return v0
.end method

.method public a(Lai/f;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bU;->f:Lai/f;

    return-void
.end method

.method public b()Lai/f;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bU;->f:Lai/f;

    return-object v0
.end method
