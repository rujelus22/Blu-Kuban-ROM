.class public final Lcom/google/android/youtube/app/ui/aj;
.super Lcom/google/android/youtube/app/ui/e;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/app/a;

.field private final b:Lcom/google/android/youtube/core/Analytics;

.field private final h:Lcom/google/android/youtube/core/Analytics$VideoCategory;

.field private final i:Lcom/google/android/youtube/core/b/aj;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/b/aj;Z)V
    .registers 19
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
    .line 42
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/youtube/app/ui/e;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;Z)V

    .line 48
    const-string v1, "navigation cannot be null"

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/a;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/aj;->a:Lcom/google/android/youtube/app/a;

    .line 49
    const-string v1, "analytics may not be null"

    invoke-static {p7, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/Analytics;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/aj;->b:Lcom/google/android/youtube/core/Analytics;

    .line 50
    const-string v1, "logCategory may not be null"

    move-object/from16 v0, p8

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/aj;->h:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 51
    const-string v1, "referrer cannot be null"

    move-object/from16 v0, p9

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/b/aj;

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/aj;->i:Lcom/google/android/youtube/core/b/aj;

    .line 52
    instance-of v1, p4, Lcom/google/android/youtube/app/ui/br;

    if-eqz v1, :cond_40

    .line 53
    check-cast p4, Lcom/google/android/youtube/app/ui/br;

    invoke-virtual {p4, p0}, Lcom/google/android/youtube/app/ui/br;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    :goto_3f
    return-void

    .line 55
    :cond_40
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/aj;->e:Lcom/google/android/youtube/core/ui/g;

    invoke-interface {v1, p0}, Lcom/google/android/youtube/core/ui/g;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_3f
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/Event;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Event;->targetIsVideo()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 62
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Event;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_1b

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/aj;->b:Lcom/google/android/youtube/core/Analytics;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/aj;->h:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/youtube/core/Analytics;->a(Lcom/google/android/youtube/core/Analytics$VideoCategory;I)V

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/aj;->a:Lcom/google/android/youtube/app/a;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/aj;->i:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/app/a;->a(Ljava/lang/String;ZLcom/google/android/youtube/core/b/aj;)V

    .line 69
    :cond_1b
    :goto_1b
    return-void

    .line 67
    :cond_1c
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/aj;->a:Lcom/google/android/youtube/app/a;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/a;->a(Ljava/lang/String;)V

    goto :goto_1b
.end method
