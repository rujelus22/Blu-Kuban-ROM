.class public LadF;
.super Ljava/lang/Object;
.source "JsonHttpClient.java"


# instance fields
.field private a:LacZ;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private a:LadJ;

.field private final a:LadN;

.field private a:LadP;

.field private a:Ladk;

.field private final a:Lado;

.field private a:Ljava/lang/String;

.field private a:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lado;LadN;LacZ;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    iput-object p1, p0, LadF;->a:Lado;

    .line 596
    iput-object p2, p0, LadF;->a:LadN;

    .line 597
    const/4 v0, 0x1

    iput-boolean v0, p0, LadF;->a:Z

    .line 598
    invoke-virtual {p0, p3}, LadF;->a(LacZ;)LadF;

    .line 599
    return-void
.end method


# virtual methods
.method public final a()LacZ;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 715
    iget-boolean v0, p0, LadF;->a:Z

    invoke-static {v0}, LafQ;->a(Z)V

    .line 716
    iget-object v0, p0, LadF;->a:LacZ;

    return-object v0
.end method

.method public a(LacZ;)LadF;
    .registers 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 735
    iget-boolean v0, p0, LadF;->a:Z

    invoke-static {v0}, LafQ;->a(Z)V

    .line 736
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LacZ;

    iput-object v0, p0, LadF;->a:LacZ;

    .line 737
    invoke-virtual {p1}, LacZ;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, LafQ;->a(Z)V

    .line 738
    return-object p0
.end method

.method public a(LadJ;)LadF;
    .registers 2
    .parameter

    .prologue
    .line 828
    iput-object p1, p0, LadF;->a:LadJ;

    .line 829
    return-object p0
.end method

.method public a(Ljava/lang/String;)LadF;
    .registers 2
    .parameter

    .prologue
    .line 856
    iput-object p1, p0, LadF;->c:Ljava/lang/String;

    .line 857
    return-object p0
.end method

.method public a()LadJ;
    .registers 2

    .prologue
    .line 834
    iget-object v0, p0, LadF;->a:LadJ;

    return-object v0
.end method

.method public final a()LadN;
    .registers 2

    .prologue
    .line 663
    iget-object v0, p0, LadF;->a:LadN;

    return-object v0
.end method

.method public final a()LadP;
    .registers 2

    .prologue
    .line 682
    iget-object v0, p0, LadF;->a:LadP;

    return-object v0
.end method

.method public final a()Ladk;
    .registers 2

    .prologue
    .line 848
    iget-object v0, p0, LadF;->a:Ladk;

    return-object v0
.end method

.method public final a()Lado;
    .registers 2

    .prologue
    .line 668
    iget-object v0, p0, LadF;->a:Lado;

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 753
    iget-boolean v0, p0, LadF;->a:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->a(Z)V

    .line 754
    iget-object v0, p0, LadF;->a:Ljava/lang/String;

    return-object v0

    .line 753
    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected final a()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 658
    iget-boolean v0, p0, LadF;->a:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 791
    iget-boolean v0, p0, LadF;->a:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->a(Z)V

    .line 792
    iget-object v0, p0, LadF;->b:Ljava/lang/String;

    return-object v0

    .line 791
    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 865
    iget-object v0, p0, LadF;->c:Ljava/lang/String;

    return-object v0
.end method
