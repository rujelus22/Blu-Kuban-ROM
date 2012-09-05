.class public final Lcom/google/android/youtube/app/honeycomb/phone/t;
.super Lcom/google/android/youtube/app/honeycomb/phone/ap;
.source "SourceFile"


# instance fields
.field private final c:Lcom/google/android/youtube/app/honeycomb/ui/b;

.field private final d:Lcom/google/android/youtube/app/honeycomb/ui/d;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;ILcom/google/android/youtube/app/ui/ToolbarHelper;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/utils/l;Lcom/google/android/youtube/core/e;)V
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/ap;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;)V

    .line 38
    invoke-virtual {p1, p2}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/ui/PagedListView;

    .line 40
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/youtube/app/honeycomb/ui/b;->a(Landroid/content/Context;Lcom/google/android/youtube/app/ui/ToolbarHelper;)Lcom/google/android/youtube/app/honeycomb/ui/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->c:Lcom/google/android/youtube/app/honeycomb/ui/b;

    .line 41
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/u;

    invoke-virtual {p1}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->c:Lcom/google/android/youtube/app/honeycomb/ui/b;

    invoke-virtual {p1}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->n()Lcom/google/android/youtube/core/Analytics;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p9

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-direct/range {v0 .. v12}, Lcom/google/android/youtube/app/honeycomb/phone/u;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/honeycomb/ui/b;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/utils/l;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->d:Lcom/google/android/youtube/app/honeycomb/ui/d;

    .line 58
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/async/GDataRequest;)V
    .registers 5
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->d:Lcom/google/android/youtube/app/honeycomb/ui/d;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/d;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 62
    return-void
.end method

.method protected final c_()V
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->c:Lcom/google/android/youtube/app/honeycomb/ui/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/b;->b()V

    .line 67
    return-void
.end method

.method protected final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    const-string v0, "yt_live"

    return-object v0
.end method

.method protected final e()V
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/t;->c:Lcom/google/android/youtube/app/honeycomb/ui/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/b;->c()V

    .line 72
    return-void
.end method
