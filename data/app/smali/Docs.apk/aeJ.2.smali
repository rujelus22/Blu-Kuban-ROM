.class public LaeJ;
.super LacR;
.source "Discussions.java"


# direct methods
.method constructor <init>(Lado;LadJ;Ladk;LadN;LadP;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 152
    invoke-direct/range {p0 .. p7}, LacR;-><init>(Lado;LadJ;Ladk;LadN;LadP;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method constructor <init>(Lado;LadJ;Ladk;LadN;LadP;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-direct/range {p0 .. p8}, LacR;-><init>(Lado;LadJ;Ladk;LadN;LadP;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public static a(Lado;LadN;)LaeK;
    .registers 5
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 208
    new-instance v0, LaeK;

    new-instance v1, LacZ;

    const-string v2, "https://www.googleapis.com/discussions/v1/"

    invoke-direct {v1, v2}, LacZ;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, p1, v1}, LaeK;-><init>(Lado;LadN;LacZ;)V

    return-object v0
.end method


# virtual methods
.method public a()LaeL;
    .registers 2

    .prologue
    .line 221
    new-instance v0, LaeL;

    invoke-direct {v0, p0}, LaeL;-><init>(LaeJ;)V

    return-object v0
.end method

.method public a()LaeP;
    .registers 2

    .prologue
    .line 740
    new-instance v0, LaeP;

    invoke-direct {v0, p0}, LaeP;-><init>(LaeJ;)V

    return-object v0
.end method

.method protected a(LadI;)V
    .registers 2
    .parameter

    .prologue
    .line 194
    invoke-super {p0, p1}, LacR;->a(LadI;)V

    .line 195
    return-void
.end method
