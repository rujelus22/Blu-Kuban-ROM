.class final Lcom/google/android/youtube/app/ui/dt;
.super Lcom/google/android/youtube/app/ui/cv;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/ds;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/ds;Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/x;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/client/ag;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;Lcom/google/android/youtube/core/e;)V
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
    .line 80
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/dt;->a:Lcom/google/android/youtube/app/ui/ds;

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
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/ui/cv;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dt;->a:Lcom/google/android/youtube/app/ui/ds;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ds;->a(Lcom/google/android/youtube/app/ui/ds;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dt;->a:Lcom/google/android/youtube/app/ui/ds;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ds;->a(Lcom/google/android/youtube/app/ui/ds;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->b(Lcom/google/android/youtube/core/async/z;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 85
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 86
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dt;->a:Lcom/google/android/youtube/app/ui/ds;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/ds;->b(Lcom/google/android/youtube/app/ui/ds;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/app/ui/ds;->c()Lcom/google/android/youtube/app/a/y;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 89
    :cond_37
    return-void
.end method
