.class public final enum Lcom/google/googlenav/ui/wizard/hh;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/googlenav/ui/wizard/hh;

.field public static final enum b:Lcom/google/googlenav/ui/wizard/hh;

.field private static final synthetic d:[Lcom/google/googlenav/ui/wizard/hh;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/googlenav/ui/wizard/hh;

    const-string v1, "WORK"

    const/16 v2, 0x75

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/google/googlenav/ui/wizard/hh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/hh;->a:Lcom/google/googlenav/ui/wizard/hh;

    new-instance v0, Lcom/google/googlenav/ui/wizard/hh;

    const-string v1, "HOME"

    const/16 v2, 0x73

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/google/googlenav/ui/wizard/hh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/hh;->b:Lcom/google/googlenav/ui/wizard/hh;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/googlenav/ui/wizard/hh;

    sget-object v1, Lcom/google/googlenav/ui/wizard/hh;->a:Lcom/google/googlenav/ui/wizard/hh;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/ui/wizard/hh;->b:Lcom/google/googlenav/ui/wizard/hh;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/googlenav/ui/wizard/hh;->d:[Lcom/google/googlenav/ui/wizard/hh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/hh;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/hh;
    .registers 2

    const-class v0, Lcom/google/googlenav/ui/wizard/hh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/hh;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/ui/wizard/hh;
    .registers 1

    sget-object v0, Lcom/google/googlenav/ui/wizard/hh;->d:[Lcom/google/googlenav/ui/wizard/hh;

    invoke-virtual {v0}, [Lcom/google/googlenav/ui/wizard/hh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/ui/wizard/hh;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hh;->c:Ljava/lang/String;

    return-object v0
.end method
