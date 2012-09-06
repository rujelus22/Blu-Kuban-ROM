.class public LeH;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

.field final synthetic a:LkG;

.field final synthetic a:LkR;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;LkG;LkR;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, LeH;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    iput-object p2, p0, LeH;->a:LkG;

    iput-object p3, p0, LeH;->a:LkR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .registers 7
    .parameter

    .prologue
    .line 297
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 298
    iget-object v0, p0, LeH;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;)V

    .line 299
    iget-object v0, p0, LeH;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    iget-object v1, p0, LeH;->a:LkG;

    iget-object v2, p0, LeH;->a:LkR;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;LkG;LkT;)Z

    .line 300
    iget-object v0, p0, LeH;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LdE;

    const-string v1, "docList"

    const-string v2, "documentOpened"

    iget-object v3, p0, LeH;->a:LkR;

    invoke-virtual {v3}, LkR;->a()LkU;

    move-result-object v3

    invoke-virtual {v3}, LkU;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 309
    :goto_2a
    return-void

    .line 303
    :cond_2b
    iget-object v0, p0, LeH;->a:LkR;

    invoke-virtual {v0}, LkR;->g()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, LeH;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a:LZU;

    invoke-interface {v0}, LZU;->a()Z

    move-result v0

    if-nez v0, :cond_45

    .line 304
    iget-object v0, p0, LeH;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    sget-object v1, LpQ;->e:LpQ;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;LpQ;)V

    goto :goto_2a

    .line 306
    :cond_45
    iget-object v0, p0, LeH;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    sget-object v1, LpQ;->c:LpQ;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;LpQ;)V

    goto :goto_2a
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 280
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, LeH;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 4
    .parameter

    .prologue
    .line 283
    const-string v0, "DocumentOpenerActivity"

    const-string v1, "Abort open document"

    invoke-static {v0, v1, p1}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_11

    .line 286
    iget-object v0, p0, LeH;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->finish()V

    .line 293
    :goto_10
    return-void

    .line 287
    :cond_11
    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_1b

    .line 289
    iget-object v0, p0, LeH;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->finish()V

    goto :goto_10

    .line 291
    :cond_1b
    iget-object v0, p0, LeH;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    sget-object v1, LpQ;->h:LpQ;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(LpQ;Ljava/lang/Throwable;)V

    goto :goto_10
.end method
