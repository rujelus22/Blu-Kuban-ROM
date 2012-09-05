.class public LaC/b;
.super LaB/h;


# static fields
.field public static final a:LaC/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LaC/b;

    invoke-direct {v0}, LaC/b;-><init>()V

    sput-object v0, LaC/b;->a:LaC/b;

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

    const-string v0, "Ronghui Z."

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/D;)V
    .registers 3

    invoke-super {p0, p1}, LaB/h;->a(Lcom/google/googlenav/ui/D;)V

    invoke-virtual {p0}, LaC/b;->e()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cS;->a(Z)V

    invoke-virtual {p0}, LaC/b;->e()Z

    move-result v0

    invoke-static {v0}, LaJ/d;->a(Z)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/D;Z)V
    .registers 4

    invoke-super {p0, p1, p2}, LaB/h;->a(Lcom/google/googlenav/ui/D;Z)V

    invoke-virtual {p0}, LaC/b;->e()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cS;->a(Z)V

    invoke-virtual {p0}, LaC/b;->e()Z

    move-result v0

    invoke-static {v0}, LaJ/d;->a(Z)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x4b6

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x4b5

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    const/16 v0, 0x17

    return v0
.end method
