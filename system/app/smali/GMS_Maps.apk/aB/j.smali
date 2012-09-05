.class public LaB/j;
.super LaB/h;


# static fields
.field public static final a:LaB/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LaB/j;

    invoke-direct {v0}, LaB/j;-><init>()V

    sput-object v0, LaB/j;->a:LaB/j;

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

    const-string v0, "Danny E."

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/D;)V
    .registers 3

    invoke-super {p0, p1}, LaB/h;->a(Lcom/google/googlenav/ui/D;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/D;->ax()Lcom/google/googlenav/ui/bP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bP;->c()V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/D;Z)V
    .registers 4

    invoke-super {p0, p1, p2}, LaB/h;->a(Lcom/google/googlenav/ui/D;Z)V

    if-nez p2, :cond_c

    invoke-virtual {p1}, Lcom/google/googlenav/ui/D;->ax()Lcom/google/googlenav/ui/bP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bP;->c()V

    :cond_c
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x519

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x518

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    const/16 v0, 0x22

    return v0
.end method
