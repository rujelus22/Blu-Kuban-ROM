.class LQK;
.super Ljava/lang/Object;
.source "SingleTokenContactFilterAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "LQK;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:LPb;

.field public final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;LPb;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, LQK;->a:Ljava/lang/String;

    .line 41
    iput-object p2, p0, LQK;->a:LPb;

    .line 42
    return-void
.end method


# virtual methods
.method public a(LQK;)I
    .registers 4
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, LQK;->a:Ljava/lang/String;

    iget-object v1, p1, LQK;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 35
    check-cast p1, LQK;

    invoke-virtual {p0, p1}, LQK;->a(LQK;)I

    move-result v0

    return v0
.end method
