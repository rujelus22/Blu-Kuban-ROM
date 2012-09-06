.class Lwd;
.super Lvq;
.source "Kix.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/docs/editors/jsvm/JSObject",
        "<",
        "LvF;",
        ">.vq<",
        "LvD;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lwc;


# direct methods
.method constructor <init>(Lwc;)V
    .registers 2
    .parameter

    .prologue
    .line 3947
    iput-object p1, p0, Lwd;->a:Lwc;

    invoke-direct {p0, p1}, Lvq;-><init>(Lcom/google/android/apps/docs/editors/jsvm/JSObject;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(J)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 3947
    invoke-virtual {p0, p1, p2}, Lwd;->a(J)LvD;

    move-result-object v0

    return-object v0
.end method

.method public a(J)LvD;
    .registers 5
    .parameter

    .prologue
    .line 3947
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v1, LvE;

    iget-object v0, p0, Lwd;->a:Lwc;

    iget-object v0, v0, Lwc;->a:Lvo;

    check-cast v0, LvF;

    invoke-direct {v1, v0, p1, p2}, LvE;-><init>(LvF;J)V

    move-object v0, v1

    goto :goto_7
.end method
