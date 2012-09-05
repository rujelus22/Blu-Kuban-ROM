.class final Lcom/google/android/youtube/app/honeycomb/tablet/m;
.super Lcom/google/android/youtube/app/ui/cv;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/l;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/l;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V
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
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a:Lcom/google/android/youtube/app/honeycomb/tablet/l;

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

    invoke-direct/range {v0 .. v11}, Lcom/google/android/youtube/app/ui/cv;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/ui/cv;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V

    .line 93
    invoke-virtual {p0, v0, v0, v0}, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a(III)V

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->a:Lcom/google/android/youtube/app/honeycomb/tablet/l;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/l;->a(Lcom/google/android/youtube/app/honeycomb/tablet/l;)Lcom/google/android/youtube/app/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/m;->c:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/ah;->a(Landroid/content/Context;)V

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
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/youtube/app/ui/cv;->a(Ljava/lang/String;ZZ)V

    .line 106
    :cond_5
    return-void
.end method
