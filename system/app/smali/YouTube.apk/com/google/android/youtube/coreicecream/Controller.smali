.class public abstract Lcom/google/android/youtube/coreicecream/Controller;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/core/Analytics;

.field private final b:Landroid/os/Bundle;

.field private c:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

.field private d:Landroid/view/View;

.field protected final f:Landroid/app/Application;

.field protected final g:Landroid/app/Activity;


# direct methods
.method protected constructor <init>(Landroid/app/Application;Lcom/google/android/youtube/core/Analytics;Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->STOPPED:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/Controller;->c:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    .line 61
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/Controller;->f:Landroid/app/Application;

    .line 62
    iput-object p2, p0, Lcom/google/android/youtube/coreicecream/Controller;->a:Lcom/google/android/youtube/core/Analytics;

    .line 63
    iput-object p3, p0, Lcom/google/android/youtube/coreicecream/Controller;->g:Landroid/app/Activity;

    .line 64
    iput-object p4, p0, Lcom/google/android/youtube/coreicecream/Controller;->b:Landroid/os/Bundle;

    .line 65
    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 210
    if-nez p2, :cond_7

    .line 211
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/coreicecream/Controller;->c(I)Landroid/app/Dialog;

    move-result-object v0

    .line 213
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected a(Landroid/os/Bundle;)V
    .registers 2
    .parameter

    .prologue
    .line 170
    return-void
.end method

.method final a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/Controller;->a()I

    move-result v1

    .line 75
    if-eqz v1, :cond_b

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :cond_b
    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/Controller;->d:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/Controller;->d:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/google/android/youtube/coreicecream/Controller;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method protected a(Landroid/view/Menu;)V
    .registers 2
    .parameter

    .prologue
    .line 200
    return-void
.end method

.method protected a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 193
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 91
    return-void
.end method

.method final a(Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;)V
    .registers 4
    .parameter

    .prologue
    .line 102
    const-string v0, "newState cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/Controller;->c:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    if-ne v0, p1, :cond_a

    .line 142
    :goto_9
    return-void

    .line 106
    :cond_a
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/Controller;->c:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    .line 107
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/Controller;->c:Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;

    .line 108
    sget-object v1, Lcom/google/android/youtube/coreicecream/a;->a:[I

    invoke-virtual {v0}, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_5c

    goto :goto_9

    .line 121
    :pswitch_1a
    sget-object v0, Lcom/google/android/youtube/coreicecream/a;->a:[I

    invoke-virtual {p1}, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_66

    goto :goto_9

    .line 126
    :pswitch_26
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/Controller;->e()V

    goto :goto_9

    .line 110
    :pswitch_2a
    sget-object v0, Lcom/google/android/youtube/coreicecream/a;->a:[I

    invoke-virtual {p1}, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6e

    goto :goto_9

    .line 112
    :pswitch_36
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/Controller;->b()V

    goto :goto_9

    .line 115
    :pswitch_3a
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/Controller;->b()V

    .line 116
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/Controller;->e()V

    goto :goto_9

    .line 123
    :pswitch_41
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/Controller;->c()V

    goto :goto_9

    .line 131
    :pswitch_45
    sget-object v0, Lcom/google/android/youtube/coreicecream/a;->a:[I

    invoke-virtual {p1}, Lcom/google/android/youtube/coreicecream/Controller$LifecycleState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_76

    :pswitch_50
    goto :goto_9

    .line 133
    :pswitch_51
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/Controller;->f()V

    goto :goto_9

    .line 136
    :pswitch_55
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/Controller;->f()V

    .line 137
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/Controller;->c()V

    goto :goto_9

    .line 108
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_45
        :pswitch_2a
    .end packed-switch

    .line 121
    :pswitch_data_66
    .packed-switch 0x2
        :pswitch_26
        :pswitch_41
    .end packed-switch

    .line 110
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_36
        :pswitch_3a
    .end packed-switch

    .line 131
    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_51
        :pswitch_50
        :pswitch_55
    .end packed-switch
.end method

.method protected a(IILandroid/content/Intent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method protected a(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/Controller;->a:Lcom/google/android/youtube/core/Analytics;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method protected b(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method protected c(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method protected c()V
    .registers 1

    .prologue
    .line 184
    return-void
.end method

.method protected d()V
    .registers 1

    .prologue
    .line 190
    return-void
.end method

.method protected e()V
    .registers 1

    .prologue
    .line 157
    return-void
.end method

.method protected f()V
    .registers 1

    .prologue
    .line 177
    return-void
.end method

.method protected l()Z
    .registers 2

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method protected m()Z
    .registers 2

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method final s()Landroid/view/View;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/Controller;->d:Landroid/view/View;

    return-object v0
.end method

.method protected final t()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/Controller;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method protected final u()Landroid/app/ActionBar;
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/Controller;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method
