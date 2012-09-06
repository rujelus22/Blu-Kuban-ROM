.class public LQC;
.super Ljava/lang/Object;
.source "SharingListElement.java"

# interfaces
.implements LQH;


# instance fields
.field private final a:LPh;

.field private a:LQl;


# direct methods
.method public constructor <init>(LPh;LQl;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, LQC;->a:LPh;

    .line 25
    iput-object p2, p0, LQC;->a:LQl;

    .line 26
    return-void
.end method


# virtual methods
.method public a()LPh;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, LQC;->a:LPh;

    return-object v0
.end method

.method public a()LQl;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, LQC;->a:LQl;

    return-object v0
.end method

.method public a()Ldq;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, LQC;->a:LQl;

    invoke-virtual {v0}, LQl;->a()Ldq;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, LQC;->a:LPh;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, LQC;->a:LPh;

    invoke-interface {v0}, LPh;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public a(LQl;)V
    .registers 2
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, LQC;->a:LQl;

    .line 38
    return-void
.end method
