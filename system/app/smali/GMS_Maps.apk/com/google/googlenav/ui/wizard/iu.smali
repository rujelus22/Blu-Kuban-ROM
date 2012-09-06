.class Lcom/google/googlenav/ui/wizard/iu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/in;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/in;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iu;->a:Lcom/google/googlenav/ui/wizard/in;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput p2, p0, Lcom/google/googlenav/ui/wizard/iu;->b:I

    .line 192
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    if-lez p2, :cond_14

    .line 198
    invoke-static {}, Lcom/google/googlenav/ui/wizard/ij;->e()Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/wizard/iu;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 199
    invoke-static {}, Lcom/google/googlenav/ui/wizard/ij;->e()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 201
    :cond_14
    invoke-static {}, Lcom/google/googlenav/ui/wizard/ij;->e()Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/wizard/iu;->b:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 203
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter

    .prologue
    .line 206
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter

    .prologue
    .line 209
    return-void
.end method
