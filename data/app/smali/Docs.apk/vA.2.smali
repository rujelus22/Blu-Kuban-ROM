.class public LvA;
.super Lcom/google/android/apps/docs/editors/jsvm/JSObject;
.source "Kix.java"

# interfaces
.implements Lvz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/docs/editors/jsvm/JSObject",
        "<",
        "LvF;",
        ">;",
        "Lvz;"
    }
.end annotation


# direct methods
.method constructor <init>(LvF;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2116
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/JSObject;-><init>(Lvo;J)V

    .line 2117
    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 2122
    invoke-virtual {p0}, LvA;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->a(J)[Ljava/lang/String;

    move-result-object v0

    .line 2124
    return-object v0
.end method
