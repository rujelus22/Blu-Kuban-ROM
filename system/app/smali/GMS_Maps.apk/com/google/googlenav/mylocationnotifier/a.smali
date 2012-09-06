.class public abstract Lcom/google/googlenav/mylocationnotifier/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/google/android/maps/MapsActivity;


# instance fields
.field protected final b:Lcom/google/googlenav/mylocationnotifier/k;

.field protected final c:Lcom/google/googlenav/ui/v;

.field protected d:Landroid/widget/ListPopupWindow;

.field protected e:Lcom/google/googlenav/mylocationnotifier/HeaderView;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/mylocationnotifier/k;)V
    .registers 3
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/googlenav/mylocationnotifier/a;->b:Lcom/google/googlenav/mylocationnotifier/k;

    .line 44
    invoke-virtual {p1}, Lcom/google/googlenav/mylocationnotifier/k;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/mylocationnotifier/a;->c:Lcom/google/googlenav/ui/v;

    .line 45
    return-void
.end method

.method public static a(Lcom/google/android/maps/MapsActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 39
    sput-object p0, Lcom/google/googlenav/mylocationnotifier/a;->a:Lcom/google/android/maps/MapsActivity;

    .line 40
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;I)Landroid/widget/TextView;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method abstract a(Ljava/util/List;Ljava/lang/String;)V
.end method

.method protected abstract b()V
.end method

.method protected abstract c()Landroid/widget/ListAdapter;
.end method

.method protected abstract d()Landroid/widget/AdapterView$OnItemClickListener;
.end method

.method e()V
    .registers 1

    .prologue
    .line 75
    return-void
.end method

.method protected f()V
    .registers 1

    .prologue
    .line 82
    return-void
.end method

.method protected g()V
    .registers 1

    .prologue
    .line 89
    return-void
.end method

.method h()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 96
    invoke-virtual {p0}, Lcom/google/googlenav/mylocationnotifier/a;->b()V

    .line 97
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/a;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/a;->b:Lcom/google/googlenav/mylocationnotifier/k;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/mylocationnotifier/HeaderView;->setMyLocationNotifierManager(Lcom/google/googlenav/mylocationnotifier/k;)V

    .line 98
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/a;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x13

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/actionbar/a;->a(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 102
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    const v1, 0x7f020219

    invoke-virtual {v0, v1, v6, v6, v5}, Lcom/google/googlenav/actionbar/a;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 106
    invoke-virtual {p0}, Lcom/google/googlenav/mylocationnotifier/a;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_50

    .line 108
    new-instance v1, Landroid/widget/ListPopupWindow;

    sget-object v2, Lcom/google/googlenav/mylocationnotifier/a;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/googlenav/mylocationnotifier/a;->d:Landroid/widget/ListPopupWindow;

    .line 109
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 110
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/a;->d:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/a;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/google/googlenav/mylocationnotifier/a;->d()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    :cond_50
    invoke-virtual {p0}, Lcom/google/googlenav/mylocationnotifier/a;->f()V

    .line 115
    return-void
.end method

.method i()V
    .registers 4

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/googlenav/mylocationnotifier/a;->l()V

    .line 125
    const/4 v0, 0x1

    .line 126
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/a;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->aa()Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/mylocationnotifier/b;

    invoke-direct {v2, p0}, Lcom/google/googlenav/mylocationnotifier/b;-><init>(Lcom/google/googlenav/mylocationnotifier/a;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/mylocationnotifier/a;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    .line 136
    invoke-virtual {p0}, Lcom/google/googlenav/mylocationnotifier/a;->g()V

    .line 137
    return-void
.end method

.method j()Z
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/a;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/a;->e:Lcom/google/googlenav/mylocationnotifier/HeaderView;

    invoke-virtual {v0}, Lcom/google/googlenav/mylocationnotifier/HeaderView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected k()V
    .registers 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/a;->d:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_13

    .line 151
    const/4 v0, 0x1

    .line 152
    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/a;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->aa()Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/mylocationnotifier/c;

    invoke-direct {v2, p0}, Lcom/google/googlenav/mylocationnotifier/c;-><init>(Lcom/google/googlenav/mylocationnotifier/a;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 162
    :cond_13
    return-void
.end method

.method l()V
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/a;->d:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_9

    .line 169
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 171
    :cond_9
    return-void
.end method
