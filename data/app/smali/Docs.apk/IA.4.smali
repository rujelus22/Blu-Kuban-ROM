.class public LIA;
.super Labr;
.source "HoneycombActionBarHelper.java"


# instance fields
.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lck;",
            ">;"
        }
    .end annotation
.end field

.field private final a:LdQ;


# direct methods
.method public constructor <init>(LanD;LdQ;)V
    .registers 4
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "LdL;",
            ">;",
            "LdQ;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-interface {p1}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    invoke-direct {p0, v0}, Labr;-><init>(LdL;)V

    .line 61
    iput-object p2, p0, LIA;->a:LdQ;

    .line 62
    iput-object p1, p0, LIA;->a:LanD;

    .line 63
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;LIC;Ljava/lang/String;)LIi;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    new-instance v0, LIu;

    iget-object v1, p0, LIA;->a:LdQ;

    sget v2, LcY;->logo_title:I

    invoke-virtual {v1, v2}, LdQ;->a(I)I

    move-result v3

    iget-object v5, p0, LIA;->a:LanD;

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, LIu;-><init>(Landroid/app/Activity;Ljava/lang/String;ILIC;LanD;)V

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 74
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 75
    return-void
.end method
