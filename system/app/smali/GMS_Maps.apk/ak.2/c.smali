.class public Lak/c;
.super Lak/i;
.source "SourceFile"


# static fields
.field public static final a:Lak/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    new-instance v0, Lak/c;

    invoke-direct {v0}, Lak/c;-><init>()V

    sput-object v0, Lak/c;->a:Lak/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lak/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    const-string v0, "James S."

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/v;)V
    .registers 3
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Lak/i;->a(Lcom/google/googlenav/ui/v;)V

    .line 43
    invoke-virtual {p1}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->v()LaM/O;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 44
    invoke-virtual {p1}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->v()LaM/O;

    move-result-object v0

    invoke-virtual {v0}, LaM/O;->bs()V

    .line 46
    :cond_18
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/v;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Lak/i;->a(Lcom/google/googlenav/ui/v;Z)V

    .line 35
    invoke-virtual {p1}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->v()LaM/O;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 36
    invoke-virtual {p1}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->v()LaM/O;

    move-result-object v0

    invoke-virtual {v0}, LaM/O;->br()V

    .line 38
    :cond_18
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    const/16 v0, 0xf2

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    const/16 v0, 0xf1

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 19
    const/16 v0, 0x2b

    return v0
.end method
