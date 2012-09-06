.class public LtD;
.super Ljava/lang/Object;
.source "ItemToUpload.java"


# instance fields
.field private final a:LtB;


# direct methods
.method public constructor <init>(LanD;LanD;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<+",
            "Landroid/content/Context;",
            ">;",
            "LanD",
            "<+",
            "LXP;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, LtB;

    invoke-direct {v0, p1, p2}, LtB;-><init>(LanD;LanD;)V

    iput-object v0, p0, LtD;->a:LtB;

    .line 55
    return-void
.end method

.method public constructor <init>(LtB;)V
    .registers 5
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, LtB;

    invoke-static {p1}, LtB;->a(LtB;)LanD;

    move-result-object v1

    invoke-static {p1}, LtB;->b(LtB;)LanD;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LtB;-><init>(LanD;LanD;)V

    iput-object v0, p0, LtD;->a:LtB;

    .line 60
    invoke-static {p1}, LtB;->c(LtB;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LtD;->a(Ljava/lang/String;)LtD;

    move-result-object v0

    invoke-static {p1}, LtB;->a(LtB;)LZz;

    move-result-object v1

    invoke-virtual {v0, v1}, LtD;->a(LZz;)LtD;

    move-result-object v0

    invoke-static {p1}, LtB;->a(LtB;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, LtD;->a(Landroid/net/Uri;)LtD;

    move-result-object v0

    invoke-static {p1}, LtB;->b(LtB;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LtD;->b(Ljava/lang/String;)LtD;

    move-result-object v0

    invoke-static {p1}, LtB;->a(LtB;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LtD;->c(Ljava/lang/String;)LtD;

    move-result-object v0

    invoke-static {p1}, LtB;->b(LtB;)Z

    move-result v1

    invoke-virtual {v0, v1}, LtD;->a(Z)LtD;

    move-result-object v0

    invoke-static {p1}, LtB;->a(LtB;)Z

    move-result v1

    invoke-virtual {v0, v1}, LtD;->b(Z)LtD;

    move-result-object v0

    invoke-static {p1}, LtB;->a(LtB;)I

    move-result v1

    invoke-virtual {v0, v1}, LtD;->a(I)LtD;

    .line 68
    return-void
.end method


# virtual methods
.method public a()LtB;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, LtD;->a:LtB;

    return-object v0
.end method

.method public a(I)LtD;
    .registers 3
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, LtD;->a:LtB;

    invoke-static {v0, p1}, LtB;->a(LtB;I)I

    .line 121
    return-object p0
.end method

.method public a(LZz;)LtD;
    .registers 3
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, LtD;->a:LtB;

    invoke-static {v0, p1}, LtB;->a(LtB;LZz;)LZz;

    .line 79
    return-object p0
.end method

.method public a(Landroid/net/Uri;)LtD;
    .registers 3
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, LtD;->a:LtB;

    invoke-static {v0, p1}, LtB;->a(LtB;Landroid/net/Uri;)Landroid/net/Uri;

    .line 84
    return-object p0
.end method

.method public a(Ljava/lang/String;)LtD;
    .registers 3
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, LtD;->a:LtB;

    invoke-static {v0, p1}, LtB;->a(LtB;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public a(Z)LtD;
    .registers 3
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, LtD;->a:LtB;

    invoke-static {v0, p1}, LtB;->a(LtB;Z)Z

    .line 104
    return-object p0
.end method

.method public b(Ljava/lang/String;)LtD;
    .registers 3
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, LtD;->a:LtB;

    invoke-static {v0, p1}, LtB;->b(LtB;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public b(Z)LtD;
    .registers 3
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, LtD;->a:LtB;

    invoke-static {v0, p1}, LtB;->b(LtB;Z)Z

    .line 112
    return-object p0
.end method

.method public c(Ljava/lang/String;)LtD;
    .registers 3
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, LtD;->a:LtB;

    invoke-static {v0, p1}, LtB;->c(LtB;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    return-object p0
.end method
