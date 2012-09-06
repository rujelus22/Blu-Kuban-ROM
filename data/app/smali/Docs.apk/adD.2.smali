.class public final LadD;
.super Lado;
.source "NetHttpTransport.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lado;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)LadB;
    .registers 4
    .parameter

    .prologue
    .line 48
    new-instance v0, LadB;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, p1}, LadB;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;)Ladr;
    .registers 3
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0, p1}, LadD;->a(Ljava/lang/String;)LadB;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/String;)LadB;
    .registers 4
    .parameter

    .prologue
    .line 53
    new-instance v0, LadB;

    const-string v1, "GET"

    invoke-direct {v0, v1, p1}, LadB;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/String;)Ladr;
    .registers 3
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0, p1}, LadD;->b(Ljava/lang/String;)LadB;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)LadB;
    .registers 4
    .parameter

    .prologue
    .line 58
    new-instance v0, LadB;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, p1}, LadB;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/String;)Ladr;
    .registers 3
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0, p1}, LadD;->c(Ljava/lang/String;)LadB;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)LadB;
    .registers 4
    .parameter

    .prologue
    .line 63
    new-instance v0, LadB;

    const-string v1, "POST"

    invoke-direct {v0, v1, p1}, LadB;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public e(Ljava/lang/String;)LadB;
    .registers 4
    .parameter

    .prologue
    .line 68
    new-instance v0, LadB;

    const-string v1, "PUT"

    invoke-direct {v0, v1, p1}, LadB;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic e(Ljava/lang/String;)Ladr;
    .registers 3
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0, p1}, LadD;->d(Ljava/lang/String;)LadB;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f(Ljava/lang/String;)Ladr;
    .registers 3
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0, p1}, LadD;->e(Ljava/lang/String;)LadB;

    move-result-object v0

    return-object v0
.end method
