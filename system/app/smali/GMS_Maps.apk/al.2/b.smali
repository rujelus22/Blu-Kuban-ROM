.class public Lal/b;
.super Lak/i;
.source "SourceFile"


# static fields
.field public static final a:Lal/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    new-instance v0, Lal/b;

    invoke-direct {v0}, Lal/b;-><init>()V

    sput-object v0, Lal/b;->a:Lal/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lak/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    const-string v0, "Ronghui Z."

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/v;)V
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Lak/i;->a(Lcom/google/googlenav/ui/v;)V

    .line 50
    invoke-virtual {p0}, Lal/b;->e()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/dD;->a(Z)V

    .line 51
    invoke-virtual {p0}, Lal/b;->e()Z

    move-result v0

    invoke-static {v0}, Lat/d;->a(Z)V

    .line 52
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/v;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Lak/i;->a(Lcom/google/googlenav/ui/v;Z)V

    .line 43
    invoke-virtual {p0}, Lal/b;->e()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/dD;->a(Z)V

    .line 44
    invoke-virtual {p0}, Lal/b;->e()Z

    move-result v0

    invoke-static {v0}, Lat/d;->a(Z)V

    .line 45
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    const/16 v0, 0x5af

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    const/16 v0, 0x5ae

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 22
    const/16 v0, 0x17

    return v0
.end method
