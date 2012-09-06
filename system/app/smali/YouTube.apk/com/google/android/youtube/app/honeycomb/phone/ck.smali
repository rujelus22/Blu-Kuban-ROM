.class final Lcom/google/android/youtube/app/honeycomb/phone/ck;
.super Lcom/google/android/youtube/app/ui/eh;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;ZLcom/google/android/youtube/app/a;ZLcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V
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
    .line 152
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ck;->a:Lcom/google/android/youtube/app/honeycomb/phone/WatchLaterActivity;

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v7, p8

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Lcom/google/android/youtube/app/ui/eh;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;ZLcom/google/android/youtube/app/a;ZLcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/ui/eh;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ck;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->c(Landroid/content/Context;)V

    .line 157
    return-void
.end method
