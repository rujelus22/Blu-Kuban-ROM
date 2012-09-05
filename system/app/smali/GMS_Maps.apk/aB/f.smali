.class public LaB/f;
.super LaB/h;


# static fields
.field public static final a:LaB/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LaB/f;

    invoke-direct {v0}, LaB/f;-><init>()V

    sput-object v0, LaB/f;->a:LaB/f;

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

    const-string v0, "Michelle C."

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/D;)V
    .registers 4

    invoke-super {p0, p1}, LaB/h;->a(Lcom/google/googlenav/ui/D;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lat/h;->b(Z)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/D;->I()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->b()V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/D;Z)V
    .registers 5

    invoke-super {p0, p1, p2}, LaB/h;->a(Lcom/google/googlenav/ui/D;Z)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lat/h;->b(Z)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/D;->I()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->b()V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "Report Quality Feedback"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const-string v0, "Adds a \"Report Quality Feedback\" option under the main menu toreport problems to gmm-search-feedback@google.com. Internal only."

    return-object v0
.end method

.method public d()I
    .registers 2

    const/16 v0, 0x1f

    return v0
.end method
