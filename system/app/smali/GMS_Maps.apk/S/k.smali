.class public abstract LS/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS/b;


# instance fields
.field private a:LS/l;

.field private b:LS/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method private a()LS/g;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, LS/k;->b:LS/g;

    if-nez v0, :cond_10

    iget-object v0, p0, LS/k;->a:LS/l;

    if-eqz v0, :cond_10

    .line 37
    iget-object v0, p0, LS/k;->a:LS/l;

    invoke-interface {v0}, LS/l;->a()LS/g;

    move-result-object v0

    iput-object v0, p0, LS/k;->b:LS/g;

    .line 39
    :cond_10
    iget-object v0, p0, LS/k;->b:LS/g;

    return-object v0
.end method


# virtual methods
.method protected a(LS/d;)LS/d;
    .registers 4
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, LS/k;->a()LS/g;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    new-instance v0, LS/m;

    invoke-direct {p0}, LS/k;->a()LS/g;

    move-result-object v1

    invoke-direct {v0, p1, v1}, LS/m;-><init>(LS/d;LS/g;)V

    move-object p1, v0

    goto :goto_6
.end method

.method public a(LS/l;)V
    .registers 2
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, LS/k;->a:LS/l;

    .line 33
    return-void
.end method
