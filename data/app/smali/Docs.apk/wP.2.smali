.class LwP;
.super Ljava/lang/Object;
.source "DocumentWalker.java"

# interfaces
.implements Lyz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyz",
        "<",
        "LyD",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LwM;


# direct methods
.method constructor <init>(LwM;)V
    .registers 2
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, LwP;->a:LwM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LFr;)Z
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFr",
            "<",
            "LyD",
            "<TT;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 233
    invoke-interface {p1}, LFr;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LyD;

    .line 234
    invoke-interface {p1}, LFr;->a()I

    move-result v1

    .line 235
    invoke-interface {p1}, LFr;->b()I

    move-result v2

    add-int/2addr v2, v1

    .line 236
    iget-object v3, p0, LwP;->a:LwM;

    invoke-static {v3}, LwM;->a(LwM;)LwH;

    move-result-object v3

    invoke-interface {v3}, LwH;->a()Landroid/content/Context;

    move-result-object v3

    .line 237
    iget-object v4, p0, LwP;->a:LwM;

    invoke-static {v4}, LwM;->a(LwM;)LBV;

    move-result-object v4

    invoke-interface {v0, v4, v1, v2, v3}, LyD;->a(Landroid/text/Spannable;IILandroid/content/Context;)V

    .line 238
    const/4 v0, 0x1

    return v0
.end method
