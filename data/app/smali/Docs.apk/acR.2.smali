.class public LacR;
.super LadE;
.source "GoogleClient.java"


# direct methods
.method protected constructor <init>(Lado;LadJ;Ladk;LadN;LadP;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 112
    invoke-direct/range {p0 .. p7}, LadE;-><init>(Lado;LadJ;Ladk;LadN;LadP;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method protected constructor <init>(Lado;LadJ;Ladk;LadN;LadP;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 146
    invoke-direct/range {p0 .. p8}, LadE;-><init>(Lado;LadJ;Ladk;LadN;LadP;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method


# virtual methods
.method protected a(Ladf;LacZ;Ljava/lang/Object;)Ladh;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-super {p0, p1, p2, p3}, LadE;->a(Ladf;LacZ;Ljava/lang/Object;)Ladh;

    move-result-object v0

    .line 169
    new-instance v1, LacN;

    invoke-direct {v1}, LacN;-><init>()V

    invoke-virtual {v1, v0}, LacN;->b(Ladh;)V

    .line 171
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ladh;->b(Z)Ladh;

    .line 172
    return-object v0
.end method

.method protected a(Ladh;)Ladl;
    .registers 3
    .parameter

    .prologue
    .line 237
    invoke-virtual {p0}, LacR;->a()LadN;

    move-result-object v0

    invoke-static {v0, p1}, LacQ;->a(LadN;Ladh;)Ladl;

    move-result-object v0

    return-object v0
.end method
