.class final Lcom/google/android/youtube/app/adapter/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/adapter/az;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/au;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/adapter/au;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/aw;->a:Lcom/google/android/youtube/app/adapter/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/aw;->b:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/aw;->b:Landroid/view/View;

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/aw;->c:Landroid/widget/TextView;

    .line 105
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/aw;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/aw;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    :cond_b
    return-void
.end method


# virtual methods
.method public final synthetic a(ILjava/lang/Object;)Landroid/view/View;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 93
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    invoke-direct {p0}, Lcom/google/android/youtube/app/adapter/aw;->b()V

    invoke-static {p2}, Lcom/google/android/youtube/plus1/c;->a(Lcom/google/android/youtube/core/model/Video;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/aw;->e:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/aw;->a()V

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/aw;->b:Landroid/view/View;

    return-object v0
.end method

.method public final a()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/aw;->a:Lcom/google/android/youtube/app/adapter/au;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/au;->b(Lcom/google/android/youtube/app/adapter/au;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/aw;->e:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/u;

    .line 116
    if-eqz v0, :cond_6a

    iget-object v1, v0, Lcom/google/android/plus1/u;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, v0, Lcom/google/android/plus1/u;->c:Ljava/util/Set;

    if-eqz v1, :cond_6a

    iget-object v1, v0, Lcom/google/android/plus1/u;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6a

    .line 119
    :cond_25
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/aw;->d:Landroid/widget/TextView;

    if-nez v1, :cond_3c

    .line 120
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/aw;->b:Landroid/view/View;

    const v2, 0x7f080068

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 121
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/youtube/app/adapter/aw;->d:Landroid/widget/TextView;

    .line 123
    :cond_3c
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/aw;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/aw;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/aw;->a:Lcom/google/android/youtube/app/adapter/au;

    invoke-static {v2}, Lcom/google/android/youtube/app/adapter/au;->c(Lcom/google/android/youtube/app/adapter/au;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/youtube/plus1/c;->b(Landroid/content/Context;Lcom/google/android/plus1/u;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, v0, Lcom/google/android/plus1/u;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_66

    const v0, 0x7f0200da

    .line 129
    :goto_5b
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/aw;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/aw;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 134
    :goto_65
    return-void

    .line 126
    :cond_66
    const v0, 0x7f0200d9

    goto :goto_5b

    .line 132
    :cond_6a
    invoke-direct {p0}, Lcom/google/android/youtube/app/adapter/aw;->b()V

    goto :goto_65
.end method
