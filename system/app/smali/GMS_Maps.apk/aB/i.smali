.class public LaB/i;
.super LaB/h;


# static fields
.field public static final a:LaB/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LaB/i;

    invoke-direct {v0}, LaB/i;-><init>()V

    sput-object v0, LaB/i;->a:LaB/i;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, LaB/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "Andrew M."

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/D;)V
    .registers 3

    invoke-super {p0, p1}, LaB/h;->a(Lcom/google/googlenav/ui/D;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/maps/driveabout/vector/ce;->a:Z

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/D;Z)V
    .registers 4

    invoke-super {p0, p1, p2}, LaB/h;->a(Lcom/google/googlenav/ui/D;Z)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/maps/driveabout/vector/ce;->a:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x4b2

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x4b1

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    const/16 v0, 0x23

    return v0
.end method
