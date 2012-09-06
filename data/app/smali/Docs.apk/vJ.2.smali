.class public LvJ;
.super Lcom/google/android/apps/docs/editors/jsvm/JSObject;
.source "Kix.java"

# interfaces
.implements LvI;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/docs/editors/jsvm/JSObject",
        "<",
        "LvF;",
        ">;",
        "LvI;"
    }
.end annotation


# direct methods
.method constructor <init>(LvF;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2319
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/JSObject;-><init>(Lvo;J)V

    .line 2320
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 5

    .prologue
    .line 2323
    iget-object v0, p0, LvJ;->a:Lvo;

    check-cast v0, LvF;

    invoke-static {v0}, LvF;->a(LvF;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 2324
    iget-object v0, p0, LvJ;->a:Lvo;

    check-cast v0, LvF;

    invoke-virtual {p0}, LvJ;->a()J

    move-result-wide v1

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(JI)Z

    move-result v1

    invoke-static {v0, v1}, LvF;->a(LvF;Z)Z

    .line 2327
    iget-object v0, p0, LvJ;->a:Lvo;

    check-cast v0, LvF;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LvF;->b(LvF;Z)Z

    .line 2329
    :cond_22
    iget-object v0, p0, LvJ;->a:Lvo;

    check-cast v0, LvF;

    invoke-static {v0}, LvF;->b(LvF;)Z

    move-result v0

    return v0
.end method
