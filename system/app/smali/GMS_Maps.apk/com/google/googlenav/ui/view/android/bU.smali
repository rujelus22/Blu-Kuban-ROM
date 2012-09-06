.class public Lcom/google/googlenav/ui/view/android/bu;
.super Lcom/google/googlenav/ui/view/dialog/r;
.source "SourceFile"

# interfaces
.implements Lah/p;


# instance fields
.field private final a:Lcom/google/googlenav/ai;

.field private final b:Lcom/google/googlenav/ui/wizard/ju;

.field private final c:Lcom/google/googlenav/ui/bw;

.field private d:Lcom/google/googlenav/ui/view/android/L;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ai;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/r;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bu;->b:Lcom/google/googlenav/ui/wizard/ju;

    .line 38
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bu;->a:Lcom/google/googlenav/ai;

    .line 39
    new-instance v0, Lcom/google/googlenav/ui/bw;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/ju;->H()Lah/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/bw;-><init>(Lah/s;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bu;->c:Lcom/google/googlenav/ui/bw;

    .line 40
    return-void
.end method


# virtual methods
.method public P_()V
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bu;->d:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/L;->notifyDataSetChanged()V

    .line 79
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 49
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bu;->i()Ljava/util/List;

    move-result-object v1

    .line 50
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bu;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f04007a

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 51
    const v0, 0x7f100026

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 52
    new-instance v3, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v6, v1, v5}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    iput-object v3, p0, Lcom/google/googlenav/ui/view/android/bu;->d:Lcom/google/googlenav/ui/view/android/L;

    .line 54
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bu;->d:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 56
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 57
    return-object v2
.end method

.method i()Ljava/util/List;
    .registers 10

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bu;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->aX()I

    move-result v7

    .line 66
    invoke-static {v7}, Lcom/google/common/collect/cx;->c(I)Ljava/util/ArrayList;

    move-result-object v8

    .line 67
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v7, :cond_25

    .line 68
    new-instance v0, LaQ/T;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bu;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ai;->k(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bu;->c:Lcom/google/googlenav/ui/bw;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bu;->b:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/bu;->a:Lcom/google/googlenav/ai;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, LaQ/T;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILcom/google/googlenav/ui/bw;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ai;Lah/p;)V

    .line 71
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 73
    :cond_25
    return-object v8
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    const/16 v0, 0x323

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
