.class public Lcom/dropbox/android/activity/LoginBrandFragment;
.super Lcom/dropbox/android/activity/base/BaseFragment;
.source "panda.py"


# instance fields
.field protected a:Lcom/dropbox/android/activity/aB;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/dropbox/android/activity/base/BaseFragment;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    .line 55
    invoke-super {p0, p3}, Lcom/dropbox/android/activity/base/BaseFragment;->a(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f03001e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 58
    const v0, 0x7f0d0082

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 59
    invoke-static {}, Lcom/dropbox/android/util/Y;->a()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 60
    const v1, 0x7f020121

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    new-instance v1, Lcom/dropbox/android/activity/ay;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/ay;-><init>(Lcom/dropbox/android/activity/LoginBrandFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    :goto_2a
    const v0, 0x7f0d0084

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 72
    const v1, 0x7f0d0085

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 73
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginBrandFragment;->j()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/dropbox/android/util/aW;->a(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 74
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 75
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 96
    :goto_4c
    return-object v2

    .line 68
    :cond_4d
    const v1, 0x7f020123

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2a

    .line 78
    :cond_54
    new-instance v3, Lcom/dropbox/android/activity/az;

    invoke-direct {v3, p0}, Lcom/dropbox/android/activity/az;-><init>(Lcom/dropbox/android/activity/LoginBrandFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    new-instance v0, Lcom/dropbox/android/activity/aA;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/aA;-><init>(Lcom/dropbox/android/activity/LoginBrandFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4c
.end method

.method public final a(Landroid/app/Activity;)V
    .registers 6
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseFragment;->a(Landroid/app/Activity;)V

    .line 39
    :try_start_3
    move-object v0, p1

    check-cast v0, Lcom/dropbox/android/activity/aB;

    move-object v1, v0

    iput-object v1, p0, Lcom/dropbox/android/activity/LoginBrandFragment;->a:Lcom/dropbox/android/activity/aB;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_9} :catch_a

    .line 43
    return-void

    .line 40
    :catch_a
    move-exception v1

    .line 41
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement LoginBrandFragmentCallback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final s()V
    .registers 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseFragment;->s()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/activity/LoginBrandFragment;->a:Lcom/dropbox/android/activity/aB;

    .line 49
    return-void
.end method
