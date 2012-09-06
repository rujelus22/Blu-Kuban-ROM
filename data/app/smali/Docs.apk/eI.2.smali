.class public LeI;
.super Ljava/lang/Object;
.source "DocumentOpenerActivity.java"

# interfaces
.implements LalN;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LalN",
        "<",
        "LnQ;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lama;

.field final synthetic a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;Lama;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, LeI;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    iput-object p2, p0, LeI;->a:Lama;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 413
    check-cast p1, LnQ;

    invoke-virtual {p0, p1}, LeI;->a(LnQ;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 4
    .parameter

    .prologue
    .line 415
    iget-object v0, p0, LeI;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;LnQ;)LnQ;

    .line 416
    iget-object v0, p0, LeI;->a:Lama;

    invoke-virtual {v0, p1}, Lama;->a(Ljava/lang/Throwable;)Z

    .line 417
    return-void
.end method

.method public a(LnQ;)V
    .registers 4
    .parameter

    .prologue
    .line 420
    iget-object v0, p0, LeI;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    invoke-static {v0, p1}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;LnQ;)LnQ;

    .line 421
    iget-object v1, p0, LeI;->a:Lama;

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lama;->a(Ljava/lang/Object;)Z

    .line 422
    return-void

    .line 421
    :cond_12
    const/4 v0, 0x0

    goto :goto_a
.end method
