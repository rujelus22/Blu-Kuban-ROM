.class public Li/X;
.super Li/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Li/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 26
    return-void
.end method

.method public a(Li/b;)V
    .registers 2
    .parameter

    .prologue
    .line 14
    if-eqz p1, :cond_5

    .line 15
    invoke-interface {p1, p0}, Li/b;->a(Li/a;)V

    .line 17
    :cond_5
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 30
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method
