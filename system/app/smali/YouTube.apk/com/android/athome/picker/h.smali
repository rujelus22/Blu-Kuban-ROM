.class final Lcom/android/athome/picker/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/android/athome/picker/MediaOutput;

.field final synthetic b:Landroid/graphics/drawable/LevelListDrawable;

.field final synthetic c:Lcom/android/athome/picker/g;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/g;Lcom/android/athome/picker/MediaOutput;Landroid/graphics/drawable/LevelListDrawable;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/athome/picker/h;->c:Lcom/android/athome/picker/g;

    iput-object p2, p0, Lcom/android/athome/picker/h;->a:Lcom/android/athome/picker/MediaOutput;

    iput-object p3, p0, Lcom/android/athome/picker/h;->b:Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/athome/picker/h;->b:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 184
    if-eqz p3, :cond_25

    iget-object v0, p0, Lcom/android/athome/picker/h;->c:Lcom/android/athome/picker/g;

    invoke-static {v0}, Lcom/android/athome/picker/g;->b(Lcom/android/athome/picker/g;)Lcom/android/athome/picker/n;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 185
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 186
    iget-object v1, p0, Lcom/android/athome/picker/h;->c:Lcom/android/athome/picker/g;

    invoke-static {v1}, Lcom/android/athome/picker/g;->b(Lcom/android/athome/picker/g;)Lcom/android/athome/picker/n;

    move-result-object v1

    iget-object v2, p0, Lcom/android/athome/picker/h;->a:Lcom/android/athome/picker/MediaOutput;

    invoke-interface {v1, v2, v0}, Lcom/android/athome/picker/n;->a(Lcom/android/athome/picker/MediaOutput;F)V

    .line 188
    :cond_25
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/athome/picker/h;->c:Lcom/android/athome/picker/g;

    iget-object v1, p0, Lcom/android/athome/picker/h;->c:Lcom/android/athome/picker/g;

    invoke-static {v1}, Lcom/android/athome/picker/g;->a(Lcom/android/athome/picker/g;)Landroid/widget/AdapterView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/athome/picker/g;->a(Lcom/android/athome/picker/g;I)I

    .line 168
    iget-object v0, p0, Lcom/android/athome/picker/h;->c:Lcom/android/athome/picker/g;

    invoke-static {v0}, Lcom/android/athome/picker/g;->b(Lcom/android/athome/picker/g;)Lcom/android/athome/picker/n;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 169
    iget-object v0, p0, Lcom/android/athome/picker/h;->c:Lcom/android/athome/picker/g;

    invoke-static {v0}, Lcom/android/athome/picker/g;->b(Lcom/android/athome/picker/g;)Lcom/android/athome/picker/n;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/h;->a:Lcom/android/athome/picker/MediaOutput;

    invoke-interface {v0, v1}, Lcom/android/athome/picker/n;->a(Lcom/android/athome/picker/MediaOutput;)V

    .line 171
    :cond_22
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/athome/picker/h;->c:Lcom/android/athome/picker/g;

    invoke-static {v0}, Lcom/android/athome/picker/g;->b(Lcom/android/athome/picker/g;)Lcom/android/athome/picker/n;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 176
    iget-object v0, p0, Lcom/android/athome/picker/h;->c:Lcom/android/athome/picker/g;

    invoke-static {v0}, Lcom/android/athome/picker/g;->b(Lcom/android/athome/picker/g;)Lcom/android/athome/picker/n;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/h;->a:Lcom/android/athome/picker/MediaOutput;

    invoke-interface {v0, v1}, Lcom/android/athome/picker/n;->b(Lcom/android/athome/picker/MediaOutput;)V

    .line 178
    :cond_13
    return-void
.end method
