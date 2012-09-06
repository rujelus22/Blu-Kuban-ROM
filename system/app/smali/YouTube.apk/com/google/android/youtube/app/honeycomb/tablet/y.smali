.class final Lcom/google/android/youtube/app/honeycomb/tablet/y;
.super Lcom/google/android/youtube/app/ui/ec;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/x;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/x;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;ZZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V
    .registers 29
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
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->a:Lcom/google/android/youtube/app/honeycomb/tablet/x;

    const/4 v8, 0x1

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    invoke-direct/range {v0 .. v13}, Lcom/google/android/youtube/app/ui/ec;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;ZZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->a:Lcom/google/android/youtube/app/honeycomb/tablet/x;

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/x;->d:Lcom/google/android/youtube/app/a;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->a:Lcom/google/android/youtube/app/honeycomb/tablet/x;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/tablet/x;->a(Lcom/google/android/youtube/app/honeycomb/tablet/x;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/y;->a:Lcom/google/android/youtube/app/honeycomb/tablet/x;

    invoke-static {v2}, Lcom/google/android/youtube/app/honeycomb/tablet/x;->b(Lcom/google/android/youtube/app/honeycomb/tablet/x;)Z

    move-result v2

    sget-object v3, Lcom/google/android/youtube/app/m;->M:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, p3, v2, v3}, Lcom/google/android/youtube/app/a;->a(Landroid/net/Uri;IZLcom/google/android/youtube/core/b/aj;)V

    .line 142
    return-void
.end method
