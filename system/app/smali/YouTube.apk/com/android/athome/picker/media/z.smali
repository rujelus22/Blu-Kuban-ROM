.class public Lcom/android/athome/picker/media/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/Object;

.field c:Ljava/lang/CharSequence;

.field d:I

.field e:Lcom/android/athome/picker/media/y;

.field final f:Lcom/android/athome/picker/media/x;

.field g:Landroid/graphics/drawable/Drawable;

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:Lcom/android/athome/picker/media/ab;

.field final synthetic n:Lcom/android/athome/picker/media/v;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/media/v;Lcom/android/athome/picker/media/x;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/16 v0, 0xf

    const/4 v1, 0x0

    .line 642
    iput-object p1, p0, Lcom/android/athome/picker/media/z;->n:Lcom/android/athome/picker/media/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    iput v1, p0, Lcom/android/athome/picker/media/z;->h:I

    .line 634
    iput v0, p0, Lcom/android/athome/picker/media/z;->i:I

    .line 635
    iput v0, p0, Lcom/android/athome/picker/media/z;->j:I

    .line 636
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/athome/picker/media/z;->k:I

    .line 637
    iput v1, p0, Lcom/android/athome/picker/media/z;->l:I

    .line 643
    iput-object p2, p0, Lcom/android/athome/picker/media/z;->f:Lcom/android/athome/picker/media/x;

    .line 644
    iget v0, p2, Lcom/android/athome/picker/media/x;->b:I

    iput v0, p0, Lcom/android/athome/picker/media/z;->d:I

    .line 645
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/athome/picker/media/z;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final a(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/athome/picker/media/z;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 686
    iput-object p1, p0, Lcom/android/athome/picker/media/z;->a:Ljava/lang/CharSequence;

    .line 687
    iget-object v0, p0, Lcom/android/athome/picker/media/z;->e:Lcom/android/athome/picker/media/y;

    if-eqz v0, :cond_13

    .line 688
    iget-object v0, p0, Lcom/android/athome/picker/media/z;->e:Lcom/android/athome/picker/media/y;

    invoke-virtual {v0, p1}, Lcom/android/athome/picker/media/y;->a(Ljava/lang/CharSequence;)V

    .line 690
    :cond_13
    invoke-virtual {p0}, Lcom/android/athome/picker/media/z;->d()V

    .line 692
    :cond_16
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/athome/picker/media/z;->b:Ljava/lang/Object;

    .line 712
    invoke-virtual {p0}, Lcom/android/athome/picker/media/z;->d()V

    .line 713
    return-void
.end method

.method public b()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/athome/picker/media/z;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c(I)V
    .registers 5
    .parameter

    .prologue
    .line 736
    iget v0, p0, Lcom/android/athome/picker/media/z;->h:I

    if-nez v0, :cond_11

    .line 737
    iget-object v0, p0, Lcom/android/athome/picker/media/z;->n:Lcom/android/athome/picker/media/v;

    invoke-static {v0}, Lcom/android/athome/picker/media/v;->a(Lcom/android/athome/picker/media/v;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/android/athome/picker/media/z;->k:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 743
    :goto_10
    return-void

    .line 739
    :cond_11
    const-string v0, "MediaRouterFallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".requestSetVolume(): Non-local volume playback on system route? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Could not request volume change."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method d()V
    .registers 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/athome/picker/media/z;->n:Lcom/android/athome/picker/media/v;

    invoke-virtual {v0, p0}, Lcom/android/athome/picker/media/v;->b(Lcom/android/athome/picker/media/z;)V

    .line 696
    return-void
.end method

.method public d(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 746
    iget v0, p0, Lcom/android/athome/picker/media/z;->h:I

    if-nez v0, :cond_22

    .line 747
    invoke-virtual {p0}, Lcom/android/athome/picker/media/z;->f()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/athome/picker/media/z;->g()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 749
    iget-object v1, p0, Lcom/android/athome/picker/media/z;->n:Lcom/android/athome/picker/media/v;

    invoke-static {v1}, Lcom/android/athome/picker/media/v;->a(Lcom/android/athome/picker/media/v;)Landroid/media/AudioManager;

    move-result-object v1

    iget v2, p0, Lcom/android/athome/picker/media/z;->k:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 755
    :goto_21
    return-void

    .line 751
    :cond_22
    const-string v0, "MediaRouterFallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".requestUpdateVolume(): Non-local volume playback on system route? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Could not request volume change."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public final e()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/athome/picker/media/z;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final f()I
    .registers 3

    .prologue
    .line 720
    iget v0, p0, Lcom/android/athome/picker/media/z;->h:I

    if-nez v0, :cond_11

    .line 721
    iget-object v0, p0, Lcom/android/athome/picker/media/z;->n:Lcom/android/athome/picker/media/v;

    invoke-static {v0}, Lcom/android/athome/picker/media/v;->a(Lcom/android/athome/picker/media/v;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/android/athome/picker/media/z;->k:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 723
    :goto_10
    return v0

    :cond_11
    iget v0, p0, Lcom/android/athome/picker/media/z;->j:I

    goto :goto_10
.end method

.method public final g()I
    .registers 3

    .prologue
    .line 728
    iget v0, p0, Lcom/android/athome/picker/media/z;->h:I

    if-nez v0, :cond_11

    .line 729
    iget-object v0, p0, Lcom/android/athome/picker/media/z;->n:Lcom/android/athome/picker/media/v;

    invoke-static {v0}, Lcom/android/athome/picker/media/v;->a(Lcom/android/athome/picker/media/v;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/android/athome/picker/media/z;->k:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 731
    :goto_10
    return v0

    :cond_11
    iget v0, p0, Lcom/android/athome/picker/media/z;->i:I

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 700
    iget v0, p0, Lcom/android/athome/picker/media/z;->d:I

    invoke-static {v0}, Lcom/android/athome/picker/media/v;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RouteInfo{ name="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/athome/picker/media/z;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/athome/picker/media/z;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/athome/picker/media/z;->f:Lcom/android/athome/picker/media/x;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " supportedTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
