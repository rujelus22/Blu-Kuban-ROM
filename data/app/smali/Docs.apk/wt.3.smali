.class public Lwt;
.super Lcom/google/android/apps/docs/editors/jsvm/JSObject;
.source "Trix.java"

# interfaces
.implements Lws;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/docs/editors/jsvm/JSObject",
        "<",
        "LwA;",
        ">;",
        "Lws;"
    }
.end annotation


# direct methods
.method constructor <init>(LwA;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1336
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/JSObject;-><init>(Lvo;J)V

    .line 1337
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    .prologue
    .line 1364
    invoke-virtual {p0}, Lwt;->a()J

    move-result-wide v0

    .line 1365
    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Trix;->a(J)Z

    move-result v0

    .line 1368
    return v0
.end method
