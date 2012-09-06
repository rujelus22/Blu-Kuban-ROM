.class public Lak/h;
.super Lak/i;
.source "SourceFile"


# static fields
.field public static final a:Lak/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Lak/h;

    invoke-direct {v0}, Lak/h;-><init>()V

    sput-object v0, Lak/h;->a:Lak/h;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lak/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    const-string v0, "Ole C., James S."

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/v;)V
    .registers 3
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1}, Lak/i;->a(Lcom/google/googlenav/ui/v;)V

    .line 50
    invoke-virtual {p1}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->o()V

    .line 52
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/v;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lak/i;->a(Lcom/google/googlenav/ui/v;Z)V

    .line 40
    if-nez p2, :cond_d

    .line 41
    invoke-virtual {p1}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->m()LaM/az;

    .line 43
    :cond_d
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    const/16 v0, 0x2bc

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    const/16 v0, 0x2bd

    .line 32
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 20
    const/16 v0, 0x15

    return v0
.end method
