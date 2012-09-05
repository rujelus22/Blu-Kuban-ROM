.class public Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;
.super Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/youtube/core/client/ad;

.field private b:Lcom/google/android/youtube/core/client/af;

.field private c:Lcom/google/android/youtube/app/honeycomb/phone/t;

.field private d:Lcom/google/android/youtube/app/honeycomb/phone/t;

.field private e:Lcom/google/android/youtube/app/honeycomb/phone/t;

.field private f:Lcom/google/android/youtube/core/async/GDataRequest;

.field private g:Lcom/google/android/youtube/core/e;


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
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->a:Lcom/google/android/youtube/core/client/ad;

    .line 46
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/core/client/af;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->b:Lcom/google/android/youtube/core/client/af;

    .line 47
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->g:Lcom/google/android/youtube/core/e;

    .line 48
    return-void
.end method

.method protected final c()V
    .registers 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->e()Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->c(I)V

    .line 87
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->setContentView(I)V

    .line 54
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->b(I)V

    .line 55
    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->d(I)V

    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->a:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->b()Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->f:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 57
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/t;

    const v2, 0x7f090051

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->a:Lcom/google/android/youtube/core/client/ad;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->b:Lcom/google/android/youtube/core/client/af;

    sget-object v6, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Live:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v7, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->LIVE:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    new-instance v8, Lcom/google/android/youtube/app/honeycomb/phone/q;

    invoke-direct {v8, p0}, Lcom/google/android/youtube/app/honeycomb/phone/q;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;)V

    iget-object v9, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->g:Lcom/google/android/youtube/core/e;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/youtube/app/honeycomb/phone/t;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;ILcom/google/android/youtube/app/ui/ToolbarHelper;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/utils/l;Lcom/google/android/youtube/core/e;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->c:Lcom/google/android/youtube/app/honeycomb/phone/t;

    .line 64
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/t;

    const v2, 0x7f090052

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->a:Lcom/google/android/youtube/core/client/ad;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->b:Lcom/google/android/youtube/core/client/af;

    sget-object v6, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Live:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v7, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->LIVE:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    new-instance v8, Lcom/google/android/youtube/app/honeycomb/phone/r;

    invoke-direct {v8, p0}, Lcom/google/android/youtube/app/honeycomb/phone/r;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;)V

    iget-object v9, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->g:Lcom/google/android/youtube/core/e;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/youtube/app/honeycomb/phone/t;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;ILcom/google/android/youtube/app/ui/ToolbarHelper;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/utils/l;Lcom/google/android/youtube/core/e;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->d:Lcom/google/android/youtube/app/honeycomb/phone/t;

    .line 71
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/t;

    const v2, 0x7f090028

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->a:Lcom/google/android/youtube/core/client/ad;

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->b:Lcom/google/android/youtube/core/client/af;

    sget-object v6, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Live:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    sget-object v7, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->LIVE:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    new-instance v8, Lcom/google/android/youtube/app/honeycomb/phone/s;

    invoke-direct {v8, p0}, Lcom/google/android/youtube/app/honeycomb/phone/s;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;)V

    iget-object v9, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->g:Lcom/google/android/youtube/core/e;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/youtube/app/honeycomb/phone/t;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;ILcom/google/android/youtube/app/ui/ToolbarHelper;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/utils/l;Lcom/google/android/youtube/core/e;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->e:Lcom/google/android/youtube/app/honeycomb/phone/t;

    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->c:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/ap;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->d:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/ap;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->e:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/ap;)V

    .line 82
    return-void
.end method

.method protected onStart()V
    .registers 5

    .prologue
    .line 91
    invoke-super {p0}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->onStart()V

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->a:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->c:Lcom/google/android/youtube/app/honeycomb/phone/t;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->f:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->c()Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 95
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;->NEXT_7_DAYS:Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->d:Lcom/google/android/youtube/app/honeycomb/phone/t;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->f:Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->a:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v3}, Lcom/google/android/youtube/core/client/ad;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Lcom/google/android/youtube/core/async/GDataRequestFactory$UpcomingTimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 96
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->e:Lcom/google/android/youtube/app/honeycomb/phone/t;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;->f:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->d()Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 97
    return-void
.end method
