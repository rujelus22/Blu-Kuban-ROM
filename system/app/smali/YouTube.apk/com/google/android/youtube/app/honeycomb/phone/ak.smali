.class final Lcom/google/android/youtube/app/honeycomb/phone/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/t;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/t;)V
    .registers 2
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/t;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/ak;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->t(Lcom/google/android/youtube/app/honeycomb/phone/t;)V

    .line 518
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->v(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/core/ui/j;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v3}, Lcom/google/android/youtube/app/honeycomb/phone/t;->u(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->i(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/j;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 520
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ak;->e_()V

    .line 530
    return-void
.end method

.method public final e_()V
    .registers 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->v(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/core/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/j;->e()V

    .line 524
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Lcom/google/android/youtube/app/honeycomb/phone/t;Z)Z

    .line 525
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ak;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->w(Lcom/google/android/youtube/app/honeycomb/phone/t;)V

    .line 526
    return-void
.end method
