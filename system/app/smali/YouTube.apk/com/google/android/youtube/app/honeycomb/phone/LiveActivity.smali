.class public Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;
.source "SourceFile"


# instance fields
.field private m:Lcom/google/android/youtube/core/b/ae;

.field private n:Lcom/google/android/youtube/core/b/ag;

.field private o:Lcom/google/android/youtube/app/honeycomb/phone/as;

.field private p:Lcom/google/android/youtube/app/honeycomb/phone/as;

.field private q:Lcom/google/android/youtube/core/async/GDataRequest;

.field private r:Lcom/google/android/youtube/core/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/app/YouTubeApplication;)V
    .registers 3
    .parameter

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->m:Lcom/google/android/youtube/core/b/ae;

    .line 46
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->p()Lcom/google/android/youtube/core/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->n:Lcom/google/android/youtube/core/b/ag;

    .line 47
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->N()Lcom/google/android/youtube/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->r:Lcom/google/android/youtube/core/d;

    .line 48
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f04003d

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->setContentView(I)V

    .line 54
    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->c(I)V

    .line 55
    const v0, 0x7f0b0019

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->e(I)V

    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->m:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b()Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->q:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 57
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/as;

    const v2, 0x7f080087

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->m:Lcom/google/android/youtube/core/b/ae;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->n:Lcom/google/android/youtube/core/b/ag;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v5

    sget-object v1, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Live:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v6, Lcom/google/android/youtube/app/m;->N:Lcom/google/android/youtube/core/b/aj;

    new-instance v7, Lcom/google/android/youtube/app/honeycomb/phone/aq;

    invoke-direct {v7, p0}, Lcom/google/android/youtube/app/honeycomb/phone/aq;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;)V

    iget-object v8, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->r:Lcom/google/android/youtube/core/d;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/youtube/app/honeycomb/phone/as;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;ILcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/utils/o;Lcom/google/android/youtube/core/d;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->o:Lcom/google/android/youtube/app/honeycomb/phone/as;

    .line 87
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/as;

    const v2, 0x7f080031

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->m:Lcom/google/android/youtube/core/b/ae;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->n:Lcom/google/android/youtube/core/b/ag;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v5

    sget-object v1, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Live:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v6, Lcom/google/android/youtube/app/m;->N:Lcom/google/android/youtube/core/b/aj;

    new-instance v7, Lcom/google/android/youtube/app/honeycomb/phone/ar;

    invoke-direct {v7, p0}, Lcom/google/android/youtube/app/honeycomb/phone/ar;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;)V

    iget-object v8, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->r:Lcom/google/android/youtube/core/d;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/youtube/app/honeycomb/phone/as;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;ILcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/utils/o;Lcom/google/android/youtube/core/d;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->p:Lcom/google/android/youtube/app/honeycomb/phone/as;

    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->o:Lcom/google/android/youtube/app/honeycomb/phone/as;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/bv;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->p:Lcom/google/android/youtube/app/honeycomb/phone/as;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/bv;)V

    .line 110
    return-void
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 119
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->onStart()V

    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->m:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v0}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->o:Lcom/google/android/youtube/app/honeycomb/phone/as;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->q:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->c()Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/as;->a(Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 124
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->p:Lcom/google/android/youtube/app/honeycomb/phone/as;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->q:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->d()Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/honeycomb/phone/as;->a(Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 125
    return-void
.end method
