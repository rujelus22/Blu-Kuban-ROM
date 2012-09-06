.class final Lcom/google/android/youtube/app/honeycomb/tablet/l;
.super Lcom/google/android/youtube/app/ui/ec;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/k;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/k;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V
    .registers 25
    .parameter
    .parameter
    .parameter
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
    .line 85
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->a:Lcom/google/android/youtube/app/honeycomb/tablet/k;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Lcom/google/android/youtube/app/ui/ec;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/ui/ec;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V

    .line 93
    invoke-super {p0}, Lcom/google/android/youtube/app/ui/ec;->f()V

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->a:Lcom/google/android/youtube/app/honeycomb/tablet/k;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/k;->a(Lcom/google/android/youtube/app/honeycomb/tablet/k;)Lcom/google/android/youtube/app/YouTubePlatformUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/l;->c:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/YouTubePlatformUtil;->a(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method protected final a(Ljava/lang/String;ZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    if-eqz p3, :cond_5

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/youtube/app/ui/ec;->a(Ljava/lang/String;ZZ)V

    .line 106
    :cond_5
    return-void
.end method
