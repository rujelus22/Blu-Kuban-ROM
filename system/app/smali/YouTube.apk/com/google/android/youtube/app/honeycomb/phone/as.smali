.class public final Lcom/google/android/youtube/app/honeycomb/phone/as;
.super Lcom/google/android/youtube/app/honeycomb/phone/bv;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final c:Landroid/content/res/Resources;

.field private final d:Lcom/google/android/youtube/app/adapter/ba;

.field private final e:Lcom/google/android/youtube/core/ui/j;

.field private final f:Lcom/google/android/youtube/app/ui/br;

.field private final g:Lcom/google/android/youtube/app/a;

.field private final h:Lcom/google/android/youtube/core/b/aj;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;ILcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/app/a;Lcom/google/android/youtube/core/b/aj;Lcom/google/android/youtube/core/utils/o;Lcom/google/android/youtube/core/d;)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/bv;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;)V

    .line 54
    const-string v0, "navigation can\'t be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/a;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/as;->g:Lcom/google/android/youtube/app/a;

    .line 55
    const-string v0, "referrer can\'t be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/aj;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/as;->h:Lcom/google/android/youtube/core/b/aj;

    .line 56
    invoke-virtual {p1}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/as;->c:Landroid/content/res/Resources;

    .line 58
    invoke-virtual {p1, p2}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/ui/PagedListView;

    .line 59
    new-instance v0, Lcom/google/android/youtube/app/adapter/ba;

    const v1, 0x7f04003e

    new-instance v2, Lcom/google/android/youtube/app/adapter/al;

    invoke-direct {v2, p1, p3, p4}, Lcom/google/android/youtube/app/adapter/al;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/youtube/app/adapter/ba;-><init>(Landroid/content/Context;ILcom/google/android/youtube/app/adapter/bf;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/as;->d:Lcom/google/android/youtube/app/adapter/ba;

    .line 64
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/a;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/as;->d:Lcom/google/android/youtube/app/adapter/ba;

    invoke-direct {v0, p1, v1}, Lcom/google/android/youtube/app/honeycomb/ui/a;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/a/a;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/as;->f:Lcom/google/android/youtube/app/ui/br;

    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/as;->f:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/as;->c:Landroid/content/res/Resources;

    const v2, 0x7f0a004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/br;->b(I)V

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/as;->f:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/as;->c:Landroid/content/res/Resources;

    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/as;->c:Landroid/content/res/Resources;

    const v4, 0x7f0a0056

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/as;->c:Landroid/content/res/Resources;

    const v5, 0x7f0a0055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/youtube/app/honeycomb/phone/as;->c:Landroid/content/res/Resources;

    const v6, 0x7f0a0056

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/google/android/youtube/app/ui/br;->a(IIII)V

    .line 72
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/as;->e()V

    .line 74
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/at;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/as;->f:Lcom/google/android/youtube/app/ui/br;

    invoke-interface {p3}, Lcom/google/android/youtube/core/b/ae;->t()Lcom/google/android/youtube/core/async/ar;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v6, p8

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/app/honeycomb/phone/at;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/as;Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/utils/o;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/as;->e:Lcom/google/android/youtube/core/ui/j;

    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/as;->f:Lcom/google/android/youtube/app/ui/br;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/ui/br;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    return-void
.end method

.method private e()V
    .registers 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/as;->f:Lcom/google/android/youtube/app/ui/br;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/as;->c:Landroid/content/res/Resources;

    const v2, 0x7f0d000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/br;->a(I)V

    .line 105
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    const-string v0, "yt_live"

    return-object v0
.end method

.method public final a(Lcom/google/android/youtube/core/async/GDataRequest;)V
    .registers 5
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/as;->e:Lcom/google/android/youtube/core/ui/j;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/j;->a([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 91
    return-void
.end method

.method protected final b()V
    .registers 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/as;->e()V

    .line 101
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 110
    :goto_6
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-ge p3, v1, :cond_20

    .line 111
    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/LiveEvent;

    .line 112
    if-eqz v0, :cond_20

    .line 113
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/as;->g:Lcom/google/android/youtube/app/a;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/as;->h:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/youtube/app/a;->a(Ljava/lang/String;ZLcom/google/android/youtube/core/b/aj;)V

    .line 116
    :cond_20
    return-void

    .line 108
    :cond_21
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/as;->d:Lcom/google/android/youtube/app/adapter/ba;

    goto :goto_6
.end method
