.class public Lwn;
.super Lcom/google/android/apps/docs/editors/jsvm/JSObject;
.source "Kix.java"

# interfaces
.implements Lwm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/docs/editors/jsvm/JSObject",
        "<",
        "LvF;",
        ">;",
        "Lwm;"
    }
.end annotation


# direct methods
.method constructor <init>(LvF;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 4682
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/JSObject;-><init>(Lvo;J)V

    .line 4683
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 4688
    invoke-virtual {p0}, Lwn;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->g(J)Ljava/lang/String;

    move-result-object v0

    .line 4690
    return-object v0
.end method
