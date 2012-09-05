.class public final Lcom/google/android/youtube/app/honeycomb/phone/a;
.super Lcom/google/android/youtube/app/honeycomb/phone/ap;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/core/async/av;


# instance fields
.field private final c:Lcom/google/android/youtube/app/honeycomb/phone/b;

.field private d:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private e:Lcom/google/android/youtube/core/model/UserAuth;

.field private f:Lcom/google/android/youtube/core/client/ad;

.field private g:Lcom/google/android/youtube/core/client/af;

.field private h:Lcom/google/android/youtube/core/e;

.field private i:Lcom/google/android/youtube/app/ui/h;

.field private j:Lcom/google/android/youtube/app/ui/StackButton;

.field private k:Lcom/google/android/youtube/app/ui/StackButton;

.field private l:Lcom/google/android/youtube/app/ui/StackButton;

.field private m:Lcom/google/android/youtube/app/ui/StackButton;

.field private n:Lcom/google/android/youtube/app/ui/StackButton;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;Lcom/google/android/youtube/app/honeycomb/phone/b;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/ap;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;)V

    .line 70
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/honeycomb/phone/b;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->c:Lcom/google/android/youtube/app/honeycomb/phone/b;

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/a;)Lcom/google/android/youtube/core/client/af;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->g:Lcom/google/android/youtube/core/client/af;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/honeycomb/phone/a;)Lcom/google/android/youtube/app/ui/StackButton;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->m:Lcom/google/android/youtube/app/ui/StackButton;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/honeycomb/phone/a;)Lcom/google/android/youtube/core/client/ad;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->f:Lcom/google/android/youtube/core/client/ad;

    return-object v0
.end method

.method private i()V
    .registers 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->i:Lcom/google/android/youtube/app/ui/h;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/h;->a()V

    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->j:Lcom/google/android/youtube/app/ui/StackButton;

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->a(I)V

    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->k:Lcom/google/android/youtube/app/ui/StackButton;

    const v1, 0x7f0200a9

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->a(I)V

    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->l:Lcom/google/android/youtube/app/ui/StackButton;

    const v1, 0x7f0200ab

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->a(I)V

    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->m:Lcom/google/android/youtube/app/ui/StackButton;

    const v1, 0x7f0200ac

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->a(I)V

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->n:Lcom/google/android/youtube/app/ui/StackButton;

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->a(I)V

    .line 116
    return-void
.end method


# virtual methods
.method protected final a(I)Landroid/app/Dialog;
    .registers 4
    .parameter

    .prologue
    .line 206
    packed-switch p1, :pswitch_data_e

    .line 210
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 208
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 206
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method protected final a(Landroid/view/Menu;)V
    .registers 4
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f11

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 128
    const v0, 0x7f0900c9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 130
    :cond_26
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 159
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->e:Lcom/google/android/youtube/core/model/UserAuth;

    .line 160
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->i:Lcom/google/android/youtube/app/ui/h;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/h;->a(Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 162
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->f:Lcom/google/android/youtube/core/client/ad;

    new-instance v1, Lcom/google/android/youtube/app/ui/bn;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->g:Lcom/google/android/youtube/core/client/af;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->j:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/youtube/app/ui/bn;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/app/ui/StackButton;)V

    invoke-interface {v0, p1, v5, v1}, Lcom/google/android/youtube/core/client/ad;->a(Lcom/google/android/youtube/core/model/UserAuth;ILcom/google/android/youtube/core/async/g;)V

    .line 168
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->f:Lcom/google/android/youtube/core/client/ad;

    new-instance v1, Lcom/google/android/youtube/app/ui/bn;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->g:Lcom/google/android/youtube/core/client/af;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->k:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/youtube/app/ui/bn;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/app/ui/StackButton;)V

    invoke-interface {v0, p1, v5, v1}, Lcom/google/android/youtube/core/client/ad;->b(Lcom/google/android/youtube/core/model/UserAuth;ILcom/google/android/youtube/core/async/g;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->f:Lcom/google/android/youtube/core/client/ad;

    new-instance v1, Lcom/google/android/youtube/app/honeycomb/phone/c;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/honeycomb/phone/c;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/a;)V

    invoke-interface {v0, p1, v5, v1}, Lcom/google/android/youtube/core/client/ad;->d(Lcom/google/android/youtube/core/model/UserAuth;ILcom/google/android/youtube/core/async/g;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->f:Lcom/google/android/youtube/core/client/ad;

    new-instance v1, Lcom/google/android/youtube/app/ui/bn;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->g:Lcom/google/android/youtube/core/client/af;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->n:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/youtube/app/ui/bn;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/app/ui/StackButton;)V

    invoke-interface {v0, p1, v5, v1}, Lcom/google/android/youtube/core/client/ad;->e(Lcom/google/android/youtube/core/model/UserAuth;ILcom/google/android/youtube/core/async/g;)V

    .line 176
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->c:Lcom/google/android/youtube/app/honeycomb/phone/b;

    invoke-interface {v0}, Lcom/google/android/youtube/app/honeycomb/phone/b;->e_()V

    .line 177
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->h:Lcom/google/android/youtube/core/e;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/e;->b(Ljava/lang/Throwable;)V

    .line 201
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/a;->h()V

    .line 202
    return-void
.end method

.method protected final a(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 134
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_58

    move v0, v1

    .line 155
    :goto_a
    return v0

    .line 136
    :pswitch_b
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->n()Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    const-string v2, "Logout"

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a()V

    .line 138
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->c:Lcom/google/android/youtube/app/honeycomb/phone/b;

    invoke-interface {v1}, Lcom/google/android/youtube/app/honeycomb/phone/b;->b()V

    .line 139
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/a;->i()V

    .line 140
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/a;->h()V

    goto :goto_a

    .line 143
    :pswitch_27
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->n()Lcom/google/android/youtube/core/Analytics;

    move-result-object v2

    const-string v3, "Rentals"

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/g;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 145
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->e:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v2, :cond_47

    .line 146
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    const v3, 0x7f0a00a8

    invoke-static {v2, v3, v1}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;II)V

    goto :goto_a

    .line 148
    :cond_47
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->e:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/g;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_a

    .line 151
    :cond_51
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/g;->c(Landroid/app/Activity;)V

    goto :goto_a

    .line 134
    nop

    :pswitch_data_58
    .packed-switch 0x7f0900c9
        :pswitch_27
        :pswitch_b
    .end packed-switch
.end method

.method protected final b()V
    .registers 7

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 76
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 77
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/core/client/ad;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->f:Lcom/google/android/youtube/core/client/ad;

    .line 78
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->o()Lcom/google/android/youtube/core/client/af;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->g:Lcom/google/android/youtube/core/client/af;

    .line 79
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->B()Lcom/google/android/youtube/core/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->h:Lcom/google/android/youtube/core/e;

    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->b:Landroid/view/View;

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/StackButton;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->j:Lcom/google/android/youtube/app/ui/StackButton;

    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->j:Lcom/google/android/youtube/app/ui/StackButton;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    const v2, 0x7f0a011a

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->a(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->j:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/ui/StackButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->b:Landroid/view/View;

    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/StackButton;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->k:Lcom/google/android/youtube/app/ui/StackButton;

    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->k:Lcom/google/android/youtube/app/ui/StackButton;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    const v2, 0x7f0a011c

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->a(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->k:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/ui/StackButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->k:Lcom/google/android/youtube/app/ui/StackButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->b:Landroid/view/View;

    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/StackButton;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->l:Lcom/google/android/youtube/app/ui/StackButton;

    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->l:Lcom/google/android/youtube/app/ui/StackButton;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    const v2, 0x7f0a011e

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->a(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->l:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/ui/StackButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->l:Lcom/google/android/youtube/app/ui/StackButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->b:Landroid/view/View;

    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/StackButton;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->m:Lcom/google/android/youtube/app/ui/StackButton;

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->m:Lcom/google/android/youtube/app/ui/StackButton;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    const v2, 0x7f0a011f

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->a(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->m:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/ui/StackButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->b:Landroid/view/View;

    const v1, 0x7f090063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/StackButton;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->n:Lcom/google/android/youtube/app/ui/StackButton;

    .line 100
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->n:Lcom/google/android/youtube/app/ui/StackButton;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    const v2, 0x7f0a0120

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->a(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->n:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/ui/StackButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v0, Lcom/google/android/youtube/app/ui/h;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->f:Lcom/google/android/youtube/core/client/ad;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->g:Lcom/google/android/youtube/core/client/af;

    iget-object v4, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->h:Lcom/google/android/youtube/core/e;

    const v5, 0x7f0a0097

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/ui/h;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/e;I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->i:Lcom/google/android/youtube/app/ui/h;

    .line 106
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/a;->i()V

    .line 107
    return-void
.end method

.method protected final c()V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->d:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 121
    return-void
.end method

.method protected final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 230
    const-string v0, "yt_your_channel"

    return-object v0
.end method

.method public final d_()V
    .registers 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/phone/a;->h()V

    .line 197
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->j:Lcom/google/android/youtube/app/ui/StackButton;

    if-ne p1, v0, :cond_e

    .line 216
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/o;->d()V

    .line 226
    :cond_d
    :goto_d
    return-void

    .line 217
    :cond_e
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->k:Lcom/google/android/youtube/app/ui/StackButton;

    if-ne p1, v0, :cond_1c

    .line 218
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/o;->e()V

    goto :goto_d

    .line 219
    :cond_1c
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->l:Lcom/google/android/youtube/app/ui/StackButton;

    if-ne p1, v0, :cond_2a

    .line 220
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/o;->g()V

    goto :goto_d

    .line 221
    :cond_2a
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->m:Lcom/google/android/youtube/app/ui/StackButton;

    if-ne p1, v0, :cond_38

    .line 222
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/o;->h()V

    goto :goto_d

    .line 223
    :cond_38
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->n:Lcom/google/android/youtube/app/ui/StackButton;

    if-ne p1, v0, :cond_d

    .line 224
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/a;->a:Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/TabbedActivity;->l()Lcom/google/android/youtube/app/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/o;->i()V

    goto :goto_d
.end method
