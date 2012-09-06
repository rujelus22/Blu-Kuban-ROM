.class public Lwf;
.super Lcom/google/android/apps/docs/editors/jsvm/JSObject;
.source "Kix.java"

# interfaces
.implements Lwe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/docs/editors/jsvm/JSObject",
        "<",
        "LvF;",
        ">;",
        "Lwe;"
    }
.end annotation


# direct methods
.method constructor <init>(LvF;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 4325
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/JSObject;-><init>(Lvo;J)V

    .line 4326
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 4339
    invoke-virtual {p0}, Lwf;->a()J

    move-result-wide v0

    .line 4340
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->d(JLjava/lang/String;)V

    .line 4341
    return-void
.end method
