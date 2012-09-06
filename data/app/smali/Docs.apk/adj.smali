.class public final Ladj;
.super Ljava/lang/Object;
.source "HttpRequestFactory.java"


# instance fields
.field private final a:Ladk;

.field private final a:Lado;


# direct methods
.method constructor <init>(Lado;Ladk;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Ladj;->a:Lado;

    .line 54
    iput-object p2, p0, Ladj;->a:Ladk;

    .line 55
    return-void
.end method


# virtual methods
.method public a(Ladf;LacZ;Lada;)Ladh;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Ladj;->a:Lado;

    invoke-virtual {v0}, Lado;->a()Ladh;

    move-result-object v0

    .line 90
    iget-object v1, p0, Ladj;->a:Ladk;

    if-eqz v1, :cond_f

    .line 91
    iget-object v1, p0, Ladj;->a:Ladk;

    invoke-interface {v1, v0}, Ladk;->a(Ladh;)V

    .line 93
    :cond_f
    invoke-virtual {v0, p1}, Ladh;->a(Ladf;)Ladh;

    .line 94
    if-eqz p2, :cond_17

    .line 95
    invoke-virtual {v0, p2}, Ladh;->a(LacZ;)Ladh;

    .line 97
    :cond_17
    if-eqz p3, :cond_1c

    .line 98
    invoke-virtual {v0, p3}, Ladh;->a(Lada;)Ladh;

    .line 100
    :cond_1c
    return-object v0
.end method
