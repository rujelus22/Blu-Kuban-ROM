.class public abstract Lcom/google/android/youtube/app/ui/e;
.super Lcom/google/android/youtube/core/ui/j;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final a:Lcom/google/android/youtube/core/a/a;

.field private final b:Lcom/google/android/youtube/app/ui/br;

.field private final h:Z

.field private final i:Lcom/google/android/youtube/app/ui/az;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;Z)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-interface {p4}, Lcom/google/android/youtube/core/b/ae;->l()Lcom/google/android/youtube/core/async/ar;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/ui/j;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;)V

    .line 43
    iput-boolean p6, p0, Lcom/google/android/youtube/app/ui/e;->h:Z

    .line 44
    new-instance v0, Lcom/google/android/youtube/app/ui/az;

    invoke-direct {v0}, Lcom/google/android/youtube/app/ui/az;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/e;->i:Lcom/google/android/youtube/app/ui/az;

    .line 46
    instance-of v0, p3, Lcom/google/android/youtube/app/ui/br;

    if-eqz v0, :cond_2c

    move-object v0, p3

    .line 47
    check-cast v0, Lcom/google/android/youtube/app/ui/br;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/ui/br;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48
    check-cast p3, Lcom/google/android/youtube/app/ui/br;

    iput-object p3, p0, Lcom/google/android/youtube/app/ui/e;->b:Lcom/google/android/youtube/app/ui/br;

    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/e;->b:Lcom/google/android/youtube/app/ui/br;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/br;->b()Lcom/google/android/youtube/core/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/e;->a:Lcom/google/android/youtube/core/a/a;

    .line 56
    :goto_2b
    return-void

    .line 52
    :cond_2c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/e;->b:Lcom/google/android/youtube/app/ui/br;

    .line 53
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/e;->a:Lcom/google/android/youtube/core/a/a;

    .line 54
    invoke-interface {p2, p0}, Lcom/google/android/youtube/core/ui/g;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2b
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/youtube/core/model/Event;I)V
.end method

.method public a(Lcom/google/android/youtube/core/model/Event;)Z
    .registers 3
    .parameter

    .prologue
    .line 60
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/e;->h:Z

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Event;->targetIsVideo()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/e;->i:Lcom/google/android/youtube/app/ui/az;

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Event;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/az;->a(Lcom/google/android/youtube/core/model/Video;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 25
    check-cast p1, Lcom/google/android/youtube/core/model/Event;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/ui/e;->a(Lcom/google/android/youtube/core/model/Event;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 68
    :goto_6
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-ge p3, v1, :cond_17

    .line 69
    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Event;

    .line 70
    if-eqz v0, :cond_17

    .line 71
    invoke-virtual {p0, v0, p3}, Lcom/google/android/youtube/app/ui/e;->a(Lcom/google/android/youtube/core/model/Event;I)V

    .line 74
    :cond_17
    return-void

    .line 66
    :cond_18
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/e;->a:Lcom/google/android/youtube/core/a/a;

    goto :goto_6
.end method
