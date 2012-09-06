.class public abstract Lyt;
.super Ljava/lang/Object;
.source "SingleSpanStyleRange.java"

# interfaces
.implements LyD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "LBj;",
        ">",
        "Ljava/lang/Object;",
        "LyD",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lyt;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Ljava/lang/Object;
.end method

.method public a(Landroid/text/Spannable;)V
    .registers 3
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lyt;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public a(Landroid/text/Spannable;IILandroid/content/Context;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lyt;->a:Ljava/lang/Object;

    if-nez v0, :cond_a

    .line 30
    invoke-virtual {p0, p4}, Lyt;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lyt;->a:Ljava/lang/Object;

    .line 32
    :cond_a
    iget-object v0, p0, Lyt;->a:Ljava/lang/Object;

    if-eqz v0, :cond_25

    .line 33
    iget-object v0, p0, Lyt;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-ne p2, v0, :cond_1e

    iget-object v0, p0, Lyt;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    if-eq p3, v0, :cond_25

    .line 34
    :cond_1e
    iget-object v0, p0, Lyt;->a:Ljava/lang/Object;

    const/16 v1, 0x21

    invoke-interface {p1, v0, p2, p3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 37
    :cond_25
    return-void
.end method
