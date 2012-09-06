.class LBc;
.super Ljava/lang/Object;
.source "ImageStyle.java"

# interfaces
.implements LyD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LyD",
        "<",
        "LBb;",
        ">;"
    }
.end annotation


# instance fields
.field private a:LAN;

.field final synthetic a:LBb;


# direct methods
.method constructor <init>(LBb;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, LBc;->a:LBb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBb;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, LBc;->a:LBb;

    return-object v0
.end method

.method public bridge synthetic a()LBj;
    .registers 2

    .prologue
    .line 88
    invoke-virtual {p0}, LBc;->a()LBb;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/text/Spannable;)V
    .registers 3
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, LBc;->a:LAN;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public a(Landroid/text/Spannable;IILandroid/content/Context;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, LBc;->a:LAN;

    if-nez v0, :cond_33

    .line 99
    new-instance v6, LBd;

    invoke-direct {v6, p1}, LBd;-><init>(Landroid/text/Spannable;)V

    .line 100
    new-instance v0, LAN;

    iget-object v1, p0, LBc;->a:LBb;

    invoke-static {v1}, LBb;->a(LBb;)LzH;

    move-result-object v1

    iget-object v2, p0, LBc;->a:LBb;

    invoke-static {v2}, LBb;->a(LBb;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LBc;->a:LBb;

    invoke-static {v3}, LBb;->a(LBb;)F

    move-result v3

    iget-object v4, p0, LBc;->a:LBb;

    invoke-static {v4}, LBb;->b(LBb;)F

    move-result v4

    iget-object v5, p0, LBc;->a:LBb;

    invoke-static {v5}, LBb;->a(LBb;)LwH;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, LAN;-><init>(LzH;Ljava/lang/String;FFLwH;LAa;)V

    iput-object v0, p0, LBc;->a:LAN;

    .line 101
    iget-object v0, p0, LBc;->a:LAN;

    invoke-virtual {v6, v0}, LBd;->a(Ljava/lang/Object;)V

    .line 103
    :cond_33
    iget-object v0, p0, LBc;->a:LAN;

    const/16 v1, 0x21

    invoke-interface {p1, v0, p2, p3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 104
    return-void
.end method
