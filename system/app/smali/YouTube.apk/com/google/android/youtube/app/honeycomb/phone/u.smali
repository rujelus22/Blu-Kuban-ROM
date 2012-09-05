.class final Lcom/google/android/youtube/app/honeycomb/phone/u;
.super Lcom/google/android/youtube/app/honeycomb/ui/d;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/utils/l;

.field final synthetic b:Lcom/google/android/youtube/app/honeycomb/phone/t;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/t;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/honeycomb/ui/b;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/utils/l;)V
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
    .line 51
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/u;->b:Lcom/google/android/youtube/app/honeycomb/phone/t;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/u;->a:Lcom/google/android/youtube/core/utils/l;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v1 .. v11}, Lcom/google/android/youtube/app/honeycomb/ui/d;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/honeycomb/ui/b;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/LiveEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/u;->a:Lcom/google/android/youtube/core/utils/l;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/utils/l;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 51
    check-cast p1, Lcom/google/android/youtube/core/model/LiveEvent;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/u;->a(Lcom/google/android/youtube/core/model/LiveEvent;)Z

    move-result v0

    return v0
.end method
