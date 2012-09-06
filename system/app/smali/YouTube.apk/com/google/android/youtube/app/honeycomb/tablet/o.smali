.class final Lcom/google/android/youtube/app/honeycomb/tablet/o;
.super Lcom/google/android/youtube/app/ui/ec;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/m;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/m;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V
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
    .line 230
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/o;->a:Lcom/google/android/youtube/app/honeycomb/tablet/m;

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

    invoke-direct/range {v0 .. v12}, Lcom/google/android/youtube/app/ui/ec;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bt;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/b/ai;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/d;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/o;->a:Lcom/google/android/youtube/app/honeycomb/tablet/m;

    iget-object v0, v0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->d:Lcom/google/android/youtube/app/a;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/youtube/app/m;->H:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/app/a;->a(Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/b/aj;)V

    .line 234
    return-void
.end method
