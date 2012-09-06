.class final Lcom/android/athome/picker/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/athome/picker/n;


# instance fields
.field final synthetic a:Lcom/android/athome/picker/q;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/q;)V
    .registers 2
    .parameter

    .prologue
    .line 826
    iput-object p1, p0, Lcom/android/athome/picker/s;->a:Lcom/android/athome/picker/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/athome/picker/MediaOutput;)V
    .registers 5
    .parameter

    .prologue
    .line 841
    const-string v0, "MediaOutputSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnStartTrackingTouch:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    return-void
.end method

.method public final a(Lcom/android/athome/picker/MediaOutput;F)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 829
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/MediaOutput;->setVolume(F)V

    .line 830
    iget-object v0, p0, Lcom/android/athome/picker/s;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->j(Lcom/android/athome/picker/q;)Lcom/android/athome/picker/ac;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/athome/picker/ac;->a(Lcom/android/athome/picker/MediaOutput;)V

    .line 831
    iget-object v0, p0, Lcom/android/athome/picker/s;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->k(Lcom/android/athome/picker/q;)V

    .line 832
    return-void
.end method

.method public final a(Lcom/android/athome/picker/MediaOutput;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 835
    invoke-virtual {p1, p2}, Lcom/android/athome/picker/MediaOutput;->setIsMuted(Z)V

    .line 836
    iget-object v0, p0, Lcom/android/athome/picker/s;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->j(Lcom/android/athome/picker/q;)Lcom/android/athome/picker/ac;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/athome/picker/ac;->a(Lcom/android/athome/picker/MediaOutput;)V

    .line 837
    iget-object v0, p0, Lcom/android/athome/picker/s;->a:Lcom/android/athome/picker/q;

    invoke-static {v0}, Lcom/android/athome/picker/q;->k(Lcom/android/athome/picker/q;)V

    .line 838
    return-void
.end method

.method public final b(Lcom/android/athome/picker/MediaOutput;)V
    .registers 5
    .parameter

    .prologue
    .line 845
    const-string v0, "MediaOutputSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnStopTrackingTouch:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    return-void
.end method
