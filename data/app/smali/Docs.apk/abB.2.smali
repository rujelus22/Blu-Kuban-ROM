.class LabB;
.super Labr;
.source "PreHoneycombActionBarHelper.java"


# instance fields
.field a:LdQ;


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
    .line 41
    invoke-interface {p1}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    invoke-direct {p0, v0}, Labr;-><init>(LdL;)V

    .line 42
    iput-object p2, p0, LabB;->a:LdQ;

    .line 43
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;LIC;Ljava/lang/String;)LIi;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    new-instance v0, LabA;

    iget-object v1, p0, LabB;->a:LdQ;

    sget v2, LcY;->logo_title:I

    invoke-virtual {v1, v2}, LdQ;->a(I)I

    move-result v1

    invoke-direct {v0, p1, p3, v1, p2}, LabA;-><init>(Landroid/app/Activity;Ljava/lang/String;ILIC;)V

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 2
    .parameter

    .prologue
    .line 54
    return-void
.end method
