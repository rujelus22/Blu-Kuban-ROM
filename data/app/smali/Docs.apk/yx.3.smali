.class Lyx;
.super Ljava/lang/Object;
.source "SpanList.java"

# interfaces
.implements LFs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LFs",
        "<",
        "LyD",
        "<TT;>;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic a:Landroid/text/Spannable;

.field final synthetic a:Lyu;


# direct methods
.method constructor <init>(Lyu;ILandroid/text/Spannable;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lyx;->a:Lyu;

    iput p2, p0, Lyx;->a:I

    iput-object p3, p0, Lyx;->a:Landroid/text/Spannable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(LFr;I)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Lyx;->a(LFr;I)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public a(LFr;I)Ljava/lang/Void;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFr",
            "<",
            "LyD",
            "<TT;>;>;I)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 137
    iget v0, p0, Lyx;->a:I

    .line 139
    if-lez p2, :cond_16

    .line 140
    invoke-interface {p1}, LFr;->b()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 141
    neg-int v2, v1

    invoke-interface {p1, v2}, LFr;->a(I)V

    .line 142
    sub-int/2addr v0, v1

    .line 143
    invoke-interface {p1}, LFr;->a()LFr;

    move-result-object p1

    .line 147
    :cond_16
    :goto_16
    invoke-interface {p1}, LFr;->b()I

    move-result v1

    if-lt v0, v1, :cond_4b

    .line 148
    iget-object v1, p0, Lyx;->a:Lyu;

    invoke-static {v1}, Lyu;->a(Lyu;)LEY;

    move-result-object v1

    invoke-virtual {v1}, LEY;->b()LFb;

    move-result-object v1

    if-ne p1, v1, :cond_30

    .line 149
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Deleted past the end of SpanList"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_30
    invoke-interface {p1}, LFr;->b()I

    move-result v1

    sub-int v1, v0, v1

    .line 153
    invoke-interface {p1}, LFr;->a()LFr;

    move-result-object v2

    .line 155
    invoke-interface {p1}, LFr;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LyD;

    iget-object v3, p0, Lyx;->a:Landroid/text/Spannable;

    invoke-interface {v0, v3}, LyD;->a(Landroid/text/Spannable;)V

    .line 156
    invoke-interface {p1}, LFr;->a()V

    move v0, v1

    move-object p1, v2

    .line 157
    goto :goto_16

    .line 160
    :cond_4b
    neg-int v0, v0

    invoke-interface {p1, v0}, LFr;->a(I)V

    .line 161
    iget-object v0, p0, Lyx;->a:Lyu;

    iget-object v1, p0, Lyx;->a:Landroid/text/Spannable;

    invoke-static {v0, p1, v1}, Lyu;->a(Lyu;LFr;Landroid/text/Spannable;)LFr;

    .line 162
    const/4 v0, 0x0

    return-object v0
.end method
