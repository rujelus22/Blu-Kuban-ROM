.class final Lcom/google/android/youtube/app/honeycomb/phone/ar;
.super Lcom/google/android/youtube/app/ui/cv;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/aq;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/aq;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V
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
    .line 101
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ar;->a:Lcom/google/android/youtube/app/honeycomb/phone/aq;

    const/4 v8, 0x0

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
.method protected final a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/ui/cv;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ar;->a:Lcom/google/android/youtube/app/honeycomb/phone/aq;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/aq;->a(Lcom/google/android/youtube/app/honeycomb/phone/aq;)Lcom/google/android/youtube/app/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ar;->c:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/ah;->a(Landroid/content/Context;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ar;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/app/b/d;->a(Landroid/content/Context;)V

    .line 108
    return-void
.end method
