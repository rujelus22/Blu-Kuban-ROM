.class public final Lcom/google/android/youtube/app/ui/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/remote/ao;


# instance fields
.field private final a:Lcom/google/android/youtube/core/Analytics;

.field private final b:Landroid/widget/Toast;

.field private final c:Landroid/widget/ProgressBar;

.field private final d:Landroid/widget/ImageView;

.field private final e:I

.field private f:I

.field private g:Lcom/google/android/youtube/app/remote/RemoteControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;I)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v2, p0, Lcom/google/android/youtube/app/ui/bq;->f:I

    .line 42
    const-string v0, "analytics can not be null"

    invoke-static {p2, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bq;->a:Lcom/google/android/youtube/core/Analytics;

    .line 43
    if-lez p3, :cond_75

    move v0, v1

    :goto_14
    const-string v3, "stepPercent must be strictly positive"

    invoke-static {v0, v3}, Lcom/google/android/ytremote/util/b;->a(ZLjava/lang/Object;)V

    .line 44
    mul-int/lit8 v0, p3, 0x64

    div-int/lit8 v0, v0, 0x64

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/ui/bq;->e:I

    .line 46
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bq;->b:Landroid/widget/Toast;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04009c

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bq;->b:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bq;->b:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bq;->b:Landroid/widget/Toast;

    const/16 v3, 0x30

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v3, v2, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 55
    const v0, 0x7f0800a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bq;->d:Landroid/widget/ImageView;

    .line 57
    const v0, 0x7f080129

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bq;->c:Landroid/widget/ProgressBar;

    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bq;->c:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bq;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    return-void

    :cond_75
    move v0, v2

    .line 43
    goto :goto_14
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bq;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    if-eqz v0, :cond_c

    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bq;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/app/remote/RemoteControl;->b(Lcom/google/android/youtube/app/remote/ao;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bq;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    .line 73
    :cond_c
    return-void
.end method

.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bq;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 132
    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/remote/RemoteControl;)V
    .registers 3
    .parameter

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/bq;->a()V

    .line 64
    const-string v0, "remoteControl can not be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/RemoteControl;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bq;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bq;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/app/remote/RemoteControl;->a(Lcom/google/android/youtube/app/remote/ao;)V

    .line 66
    return-void
.end method

.method public final b(I)Z
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x19

    const/4 v0, 0x0

    .line 76
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bq;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bq;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTED:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-eq v1, v2, :cond_12

    .line 93
    :cond_11
    :goto_11
    return v0

    .line 80
    :cond_12
    if-eq p1, v3, :cond_18

    const/16 v1, 0x18

    if-ne p1, v1, :cond_11

    .line 84
    :cond_18
    if-ne p1, v3, :cond_4a

    .line 85
    iget v1, p0, Lcom/google/android/youtube/app/ui/bq;->f:I

    iget v2, p0, Lcom/google/android/youtube/app/ui/bq;->e:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/youtube/app/ui/bq;->f:I

    .line 90
    :goto_21
    const/16 v1, 0x64

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bq;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v2}, Lcom/google/android/youtube/app/remote/RemoteControl;->i()I

    move-result v2

    iget v3, p0, Lcom/google/android/youtube/app/ui/bq;->f:I

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bq;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bq;->d:Landroid/widget/ImageView;

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_43
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bq;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 93
    const/4 v0, 0x1

    goto :goto_11

    .line 87
    :cond_4a
    iget v1, p0, Lcom/google/android/youtube/app/ui/bq;->f:I

    iget v2, p0, Lcom/google/android/youtube/app/ui/bq;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/youtube/app/ui/bq;->f:I

    goto :goto_21

    .line 90
    :cond_52
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bq;->d:Landroid/widget/ImageView;

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_43
.end method

.method public final c(I)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bq;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bq;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v1}, Lcom/google/android/youtube/app/remote/RemoteControl;->s()Lcom/google/android/youtube/app/remote/RemoteControl$State;

    move-result-object v1

    sget-object v2, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTED:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-eq v1, v2, :cond_10

    .line 116
    :cond_f
    :goto_f
    return v0

    .line 101
    :cond_10
    const/16 v1, 0x19

    if-eq p1, v1, :cond_18

    const/16 v1, 0x18

    if-ne p1, v1, :cond_f

    .line 105
    :cond_18
    iget v1, p0, Lcom/google/android/youtube/app/ui/bq;->f:I

    if-lez v1, :cond_3f

    .line 106
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bq;->a:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "RemoteVolumeUp"

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    .line 112
    :cond_23
    :goto_23
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bq;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    const/16 v2, 0x64

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/bq;->g:Lcom/google/android/youtube/app/remote/RemoteControl;

    invoke-interface {v3}, Lcom/google/android/youtube/app/remote/RemoteControl;->i()I

    move-result v3

    iget v4, p0, Lcom/google/android/youtube/app/ui/bq;->f:I

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/youtube/app/remote/RemoteControl;->a(I)V

    .line 114
    iput v0, p0, Lcom/google/android/youtube/app/ui/bq;->f:I

    .line 116
    const/4 v0, 0x1

    goto :goto_f

    .line 107
    :cond_3f
    iget v1, p0, Lcom/google/android/youtube/app/ui/bq;->f:I

    if-gez v1, :cond_23

    .line 108
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bq;->a:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "RemoteVolumeDown"

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    goto :goto_23
.end method
