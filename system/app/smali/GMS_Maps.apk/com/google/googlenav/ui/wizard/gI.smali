.class Lcom/google/googlenav/ui/wizard/gI;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gB;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/gB;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gI;->a:Lcom/google/googlenav/ui/wizard/gB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/googlenav/ui/wizard/gI;->b:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gI;->a:Lcom/google/googlenav/ui/wizard/gB;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gB;->a(Lcom/google/googlenav/ui/wizard/gB;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/wizard/gI;->b:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method
