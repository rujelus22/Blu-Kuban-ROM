.class public abstract Lcom/google/android/youtube/app/honeycomb/tablet/ao;
.super Lcom/google/android/youtube/coreicecream/Controller;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/remote/ae;


# instance fields
.field private final a:Lcom/google/android/youtube/app/ui/am;

.field protected final b:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

.field protected final c:Lcom/google/android/youtube/app/YouTubeApplication;

.field protected final d:Lcom/google/android/youtube/app/a;

.field protected final e:Lcom/google/android/youtube/app/g;

.field private final h:Lcom/google/android/youtube/app/ui/bq;

.field private i:Lcom/google/android/youtube/app/remote/ab;

.field private j:Lcom/google/android/youtube/app/honeycomb/phone/au;


# direct methods
.method protected constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/a;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p4}, Lcom/google/android/youtube/coreicecream/Controller;-><init>(Landroid/app/Application;Lcom/google/android/youtube/core/Analytics;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 54
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 55
    iput-object p3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->d:Lcom/google/android/youtube/app/a;

    .line 56
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-direct {v0, p2, p3, p5}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->b:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    .line 57
    new-instance v0, Lcom/google/android/youtube/app/ui/am;

    invoke-direct {v0, p2}, Lcom/google/android/youtube/app/ui/am;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a:Lcom/google/android/youtube/app/ui/am;

    .line 58
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->i()Lcom/google/android/youtube/app/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->e:Lcom/google/android/youtube/app/g;

    .line 60
    new-instance v0, Lcom/google/android/youtube/app/ui/bq;

    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/app/k;->m()I

    move-result v2

    invoke-direct {v0, p2, v1, v2}, Lcom/google/android/youtube/app/ui/bq;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->h:Lcom/google/android/youtube/app/ui/bq;

    .line 63
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->D()Lcom/google/android/youtube/app/remote/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->i:Lcom/google/android/youtube/app/remote/ab;

    .line 64
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/au;

    invoke-direct {v0, p2}, Lcom/google/android/youtube/app/honeycomb/phone/au;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->j:Lcom/google/android/youtube/app/honeycomb/phone/au;

    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->j:Lcom/google/android/youtube/app/honeycomb/phone/au;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/phone/au;->b(Z)V

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->b:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->j:Lcom/google/android/youtube/app/honeycomb/phone/au;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Lcom/google/android/youtube/app/honeycomb/ui/l;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 126
    sparse-switch p1, :sswitch_data_18

    .line 132
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/coreicecream/Controller;->a(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 128
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->a:Lcom/google/android/youtube/app/ui/am;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/am;->a()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 130
    :sswitch_f
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->e:Lcom/google/android/youtube/app/g;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/youtube/app/g;->a(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 126
    :sswitch_data_18
    .sparse-switch
        0x3eb -> :sswitch_f
        0x3f1 -> :sswitch_8
    .end sparse-switch
.end method

.method protected a(Landroid/view/Menu;)V
    .registers 3
    .parameter

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/Controller;->a(Landroid/view/Menu;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->j:Lcom/google/android/youtube/app/honeycomb/phone/au;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/au;->a()V

    .line 114
    return-void
.end method

.method protected a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/coreicecream/Controller;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->b:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Landroid/view/Menu;)Z

    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->j:Lcom/google/android/youtube/app/honeycomb/phone/au;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/au;->a(Landroid/view/Menu;)V

    .line 108
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/coreicecream/Controller;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04002f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->u()Landroid/app/ActionBar;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_21

    .line 77
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    .line 79
    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 81
    :cond_21
    return-void
.end method

.method public a(Lcom/google/android/youtube/app/remote/RemoteControl;)V
    .registers 3
    .parameter

    .prologue
    .line 189
    if-eqz p1, :cond_8

    .line 190
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->h:Lcom/google/android/youtube/app/ui/bq;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/bq;->a(Lcom/google/android/youtube/app/remote/RemoteControl;)V

    .line 194
    :goto_7
    return-void

    .line 192
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->h:Lcom/google/android/youtube/app/ui/bq;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/bq;->a()V

    goto :goto_7
.end method

.method protected a(IILandroid/content/Intent;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->c:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 162
    :goto_f
    return v2

    .line 159
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->g:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    goto :goto_f
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->h:Lcom/google/android/youtube/app/ui/bq;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/bq;->b(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 171
    const/4 v0, 0x1

    .line 173
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/coreicecream/Controller;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method protected a(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/Controller;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->b:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Landroid/view/MenuItem;)Z

    move-result v0

    .line 121
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 85
    invoke-super {p0}, Lcom/google/android/youtube/coreicecream/Controller;->b()V

    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->b:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->n()Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;)V

    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->i:Lcom/google/android/youtube/app/remote/ab;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/ab;->c()V

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->i:Lcom/google/android/youtube/app/remote/ab;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/remote/ab;->a(Lcom/google/android/youtube/app/remote/ae;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->i:Lcom/google/android/youtube/app/remote/ab;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/ab;->b()Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_23

    .line 91
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->h:Lcom/google/android/youtube/app/ui/bq;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/bq;->a(Lcom/google/android/youtube/app/remote/RemoteControl;)V

    .line 93
    :cond_23
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 166
    return-void
.end method

.method public final b(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->h:Lcom/google/android/youtube/app/ui/bq;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/bq;->c(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 179
    const/4 v0, 0x1

    .line 181
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/coreicecream/Controller;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->b:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a()V

    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->i:Lcom/google/android/youtube/app/remote/ab;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/ab;->d()V

    .line 99
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->i:Lcom/google/android/youtube/app/remote/ab;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/remote/ab;->b(Lcom/google/android/youtube/app/remote/ae;)V

    .line 100
    invoke-super {p0}, Lcom/google/android/youtube/coreicecream/Controller;->c()V

    .line 101
    return-void
.end method

.method protected final m()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->b:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Z)V

    .line 140
    return v1
.end method

.method protected final n()Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->g:Landroid/app/Activity;

    instance-of v0, v0, Lcom/google/android/youtube/coreicecream/TabbedControllersActivity;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 147
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->ICONIFIED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    .line 149
    :goto_17
    return-object v0

    :cond_18
    sget-object v0, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;->EXPANDED:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl$SearchMode;

    goto :goto_17
.end method

.method protected final o()Lcom/google/android/youtube/app/ui/bq;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ao;->h:Lcom/google/android/youtube/app/ui/bq;

    return-object v0
.end method
