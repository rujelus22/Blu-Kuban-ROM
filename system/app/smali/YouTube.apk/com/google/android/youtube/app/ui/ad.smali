.class public final Lcom/google/android/youtube/app/ui/ad;
.super Lcom/google/android/youtube/core/ui/k;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final a:Lcom/google/android/youtube/app/a/f;

.field private final b:Lcom/google/android/youtube/core/client/ad;

.field private final e:Lcom/google/android/youtube/app/o;

.field private final f:Lcom/google/android/youtube/core/Analytics;

.field private final g:Lcom/google/android/youtube/core/Analytics$VideoCategory;

.field private final h:Lcom/google/android/youtube/core/client/al;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/o;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/f;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/e;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/client/al;)V
    .registers 16
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
    .line 57
    invoke-interface {p5}, Lcom/google/android/youtube/core/client/ad;->j()Lcom/google/android/youtube/core/async/ad;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/ui/k;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/e;)V

    .line 59
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/ad;->e:Lcom/google/android/youtube/app/o;

    .line 60
    iput-object p4, p0, Lcom/google/android/youtube/app/ui/ad;->a:Lcom/google/android/youtube/app/a/f;

    .line 61
    const-string v0, "gdataClient may not be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/ad;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ad;->b:Lcom/google/android/youtube/core/client/ad;

    .line 62
    const-string v0, "analytics may not be null"

    invoke-static {p7, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ad;->f:Lcom/google/android/youtube/core/Analytics;

    .line 63
    const-string v0, "logCategory may not be null"

    invoke-static {p8, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ad;->g:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 64
    const-string v0, "referrer cannot be null"

    invoke-static {p9, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/al;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ad;->h:Lcom/google/android/youtube/core/client/al;

    .line 66
    invoke-interface {p3, p0}, Lcom/google/android/youtube/core/ui/h;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/ad;)Lcom/google/android/youtube/app/a/f;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ad;->a:Lcom/google/android/youtube/app/a/f;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Event;

    .line 72
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Event;->targetIsVideo()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 73
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ad;->b:Lcom/google/android/youtube/core/client/ad;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/ad;->c:Landroid/app/Activity;

    new-instance v5, Lcom/google/android/youtube/app/ui/ae;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    invoke-direct {v5, p0, v0}, Lcom/google/android/youtube/app/ui/ae;-><init>(Lcom/google/android/youtube/app/ui/ad;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/google/android/youtube/core/client/ad;->d(Ljava/lang/String;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_4

    .line 77
    :cond_2b
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 37
    check-cast p1, Lcom/google/android/youtube/core/model/Event;

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ad;->a:Lcom/google/android/youtube/app/a/f;

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/app/a/f;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Event;

    .line 103
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Event;->targetIsVideo()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 104
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ad;->a:Lcom/google/android/youtube/app/a/f;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/a/f;->b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_29

    .line 106
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ad;->f:Lcom/google/android/youtube/core/Analytics;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/ad;->g:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-virtual {v1, v2, p3}, Lcom/google/android/youtube/core/Analytics;->a(Lcom/google/android/youtube/core/Analytics$VideoCategory;I)V

    .line 107
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ad;->e:Lcom/google/android/youtube/app/o;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ad;->h:Lcom/google/android/youtube/core/client/al;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/youtube/app/o;->a(Ljava/lang/String;ZLcom/google/android/youtube/core/client/al;)V

    .line 112
    :cond_29
    :goto_29
    return-void

    .line 110
    :cond_2a
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ad;->e:Lcom/google/android/youtube/app/o;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/app/o;->a(Ljava/lang/String;)V

    goto :goto_29
.end method
