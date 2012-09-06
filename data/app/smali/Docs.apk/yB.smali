.class public abstract LyB;
.super Ljava/lang/Object;
.source "SpanStyleRange.java"

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
.field private a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, LyB;->a:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public a(Landroid/text/Spannable;)V
    .registers 4
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, LyB;->a:Ljava/util/Collection;

    if-eqz v0, :cond_18

    .line 44
    iget-object v0, p0, LyB;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 45
    invoke-interface {p1, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_a

    .line 48
    :cond_18
    return-void
.end method

.method public a(Landroid/text/Spannable;IILandroid/content/Context;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, LyB;->a:Ljava/util/Collection;

    if-nez v0, :cond_a

    .line 30
    invoke-virtual {p0, p4}, LyB;->a(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, LyB;->a:Ljava/util/Collection;

    .line 32
    :cond_a
    iget-object v0, p0, LyB;->a:Ljava/util/Collection;

    if-eqz v0, :cond_30

    .line 33
    iget-object v0, p0, LyB;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 34
    invoke-interface {p1, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    if-ne p2, v2, :cond_2a

    invoke-interface {p1, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-eq p3, v2, :cond_14

    .line 35
    :cond_2a
    const/16 v2, 0x21

    invoke-interface {p1, v1, p2, p3, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_14

    .line 39
    :cond_30
    return-void
.end method
