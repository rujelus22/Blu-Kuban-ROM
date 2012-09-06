.class final Lcom/google/android/maps/driveabout/app/ew;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/app/eB;


# instance fields
.field private final a:Landroid/media/MediaRecorder;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ew;->a:Landroid/media/MediaRecorder;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ew;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ew;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 172
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ew;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ew;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 160
    return-void
.end method

.method public b(I)V
    .registers 3
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ew;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 176
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ew;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 164
    return-void
.end method

.method public c(I)V
    .registers 3
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ew;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 184
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ew;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 168
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ew;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 188
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ew;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 192
    return-void
.end method
