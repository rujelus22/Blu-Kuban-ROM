.class final Lcom/google/android/youtube/app/honeycomb/phone/w;
.super Lcom/google/android/youtube/app/ui/cv;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V
    .registers 27
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
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/w;->a:Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Lcom/google/android/youtube/app/ui/cv;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/w;->a:Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/MyFavoritesActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->MY_FAVORITES:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/app/o;->a(Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/client/al;)V

    .line 108
    return-void
.end method
