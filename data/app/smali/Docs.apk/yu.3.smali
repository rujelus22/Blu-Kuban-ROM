.class public Lyu;
.super Ljava/lang/Object;
.source "SpanList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "LBj;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "LFr",
        "<",
        "LyD",
        "<TT;>;>;>;"
    }
.end annotation


# instance fields
.field private final a:LEY;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LEY",
            "<",
            "LyD",
            "<TT;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, LEY;

    invoke-direct {v0}, LEY;-><init>()V

    iput-object v0, p0, Lyu;->a:LEY;

    .line 35
    return-void
.end method

.method static synthetic a(LFr;)LBj;
    .registers 2
    .parameter

    .prologue
    .line 26
    invoke-static {p0}, Lyu;->b(LFr;)LBj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lyu;)LEY;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lyu;->a:LEY;

    return-object v0
.end method

.method private a(LFr;Landroid/text/Spannable;)LFr;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFr",
            "<",
            "LyD",
            "<TT;>;>;",
            "Landroid/text/Spannable;",
            ")",
            "LFr",
            "<",
            "LyD",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-interface {p1}, LFr;->b()LFr;

    move-result-object v1

    .line 54
    invoke-static {p1}, Lyu;->b(LFr;)LBj;

    move-result-object v0

    .line 55
    invoke-static {v1}, Lyu;->b(LFr;)LBj;

    move-result-object v2

    .line 56
    if-eqz v0, :cond_28

    invoke-interface {v0, v2}, LBj;->a(LBj;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 57
    invoke-interface {p1}, LFr;->b()I

    move-result v0

    invoke-interface {v1, v0}, LFr;->a(I)V

    .line 59
    invoke-interface {p1}, LFr;->a()V

    .line 60
    invoke-interface {p1}, LFr;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LyD;

    invoke-interface {v0, p2}, LyD;->a(Landroid/text/Spannable;)V

    move-object p1, v1

    .line 63
    :cond_28
    return-object p1
.end method

.method static synthetic a(Lyu;LFr;Landroid/text/Spannable;)LFr;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lyu;->a(LFr;Landroid/text/Spannable;)LFr;

    move-result-object v0

    return-object v0
.end method

.method private static b(LFr;)LBj;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "LBj;",
            ">(",
            "LFr",
            "<",
            "LyD",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-interface {p0}, LFr;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {p0}, LFr;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LyD;

    invoke-interface {v0}, LyD;->a()LBj;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public a(IILBj;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .prologue
    .line 86
    if-ltz p2, :cond_9

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, LafQ;->a(Z)V

    .line 87
    if-nez p2, :cond_b

    .line 120
    :goto_8
    return-void

    .line 86
    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    .line 90
    :cond_b
    iget-object v0, p0, Lyu;->a:LEY;

    new-instance v1, Lyw;

    invoke-direct {v1, p0, p3, p2}, Lyw;-><init>(Lyu;LBj;I)V

    invoke-virtual {v0, p1, v1}, LEY;->a(ILFs;)Ljava/lang/Object;

    goto :goto_8
.end method

.method public a(IILandroid/text/Spannable;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    if-ltz p2, :cond_9

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, LafQ;->a(Z)V

    .line 128
    if-nez p2, :cond_b

    .line 165
    :cond_8
    :goto_8
    return-void

    .line 127
    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    .line 131
    :cond_b
    iget-object v0, p0, Lyu;->a:LEY;

    invoke-virtual {v0}, LEY;->a()I

    move-result v0

    if-eqz v0, :cond_8

    .line 134
    iget-object v0, p0, Lyu;->a:LEY;

    new-instance v1, Lyx;

    invoke-direct {v1, p0, p2, p3}, Lyx;-><init>(Lyu;ILandroid/text/Spannable;)V

    invoke-virtual {v0, p1, v1}, LEY;->a(ILFs;)Ljava/lang/Object;

    goto :goto_8
.end method

.method public a(IILyz;)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lyz",
            "<",
            "LyD",
            "<TT;>;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 204
    if-ltz p2, :cond_10

    move v0, v1

    :goto_4
    invoke-static {v0}, LafQ;->a(Z)V

    .line 205
    iget-object v0, p0, Lyu;->a:LEY;

    invoke-virtual {v0}, LEY;->a()I

    move-result v0

    if-nez v0, :cond_12

    .line 209
    :goto_f
    return v1

    .line 204
    :cond_10
    const/4 v0, 0x0

    goto :goto_4

    .line 208
    :cond_12
    add-int v0, p1, p2

    .line 209
    iget-object v1, p0, Lyu;->a:LEY;

    new-instance v2, Lyy;

    invoke-direct {v2, p0, v0, p3}, Lyy;-><init>(Lyu;ILyz;)V

    invoke-virtual {v1, p1, v2}, LEY;->a(ILFs;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_f
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "LFr",
            "<",
            "LyD",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 266
    new-instance v0, LyA;

    iget-object v1, p0, Lyu;->a:LEY;

    invoke-virtual {v1}, LEY;->a()LFb;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, LyA;-><init>(Lyu;LFr;Lyv;)V

    return-object v0
.end method
