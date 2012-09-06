.class final Lcom/android/athome/picker/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/graphics/drawable/LevelListDrawable;

.field final synthetic b:Landroid/widget/SeekBar;

.field final synthetic c:Lcom/android/athome/picker/MediaOutput;

.field final synthetic d:Lcom/android/athome/picker/g;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/g;Landroid/graphics/drawable/LevelListDrawable;Landroid/widget/SeekBar;Lcom/android/athome/picker/MediaOutput;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/athome/picker/i;->d:Lcom/android/athome/picker/g;

    iput-object p2, p0, Lcom/android/athome/picker/i;->a:Landroid/graphics/drawable/LevelListDrawable;

    iput-object p3, p0, Lcom/android/athome/picker/i;->b:Landroid/widget/SeekBar;

    iput-object p4, p0, Lcom/android/athome/picker/i;->c:Lcom/android/athome/picker/MediaOutput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    const/16 v3, 0x65

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Lcom/android/athome/picker/i;->d:Lcom/android/athome/picker/g;

    iget-object v4, p0, Lcom/android/athome/picker/i;->d:Lcom/android/athome/picker/g;

    invoke-static {v4}, Lcom/android/athome/picker/g;->a(Lcom/android/athome/picker/g;)Landroid/widget/AdapterView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/athome/picker/g;->a(Lcom/android/athome/picker/g;I)I

    .line 197
    iget-object v0, p0, Lcom/android/athome/picker/i;->a:Landroid/graphics/drawable/LevelListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LevelListDrawable;->getLevel()I

    move-result v0

    if-ne v0, v3, :cond_41

    move v0, v1

    .line 199
    :goto_1c
    if-nez v0, :cond_43

    move v0, v1

    .line 201
    :goto_1f
    iget-object v4, p0, Lcom/android/athome/picker/i;->a:Landroid/graphics/drawable/LevelListDrawable;

    if-eqz v0, :cond_45

    :goto_23
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 203
    iget-object v3, p0, Lcom/android/athome/picker/i;->b:Landroid/widget/SeekBar;

    if-nez v0, :cond_4c

    :goto_2a
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 205
    iget-object v1, p0, Lcom/android/athome/picker/i;->d:Lcom/android/athome/picker/g;

    invoke-static {v1}, Lcom/android/athome/picker/g;->b(Lcom/android/athome/picker/g;)Lcom/android/athome/picker/n;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 206
    iget-object v1, p0, Lcom/android/athome/picker/i;->d:Lcom/android/athome/picker/g;

    invoke-static {v1}, Lcom/android/athome/picker/g;->b(Lcom/android/athome/picker/g;)Lcom/android/athome/picker/n;

    move-result-object v1

    iget-object v2, p0, Lcom/android/athome/picker/i;->c:Lcom/android/athome/picker/MediaOutput;

    invoke-interface {v1, v2, v0}, Lcom/android/athome/picker/n;->a(Lcom/android/athome/picker/MediaOutput;Z)V

    .line 208
    :cond_40
    return-void

    :cond_41
    move v0, v2

    .line 197
    goto :goto_1c

    :cond_43
    move v0, v2

    .line 199
    goto :goto_1f

    .line 201
    :cond_45
    iget-object v3, p0, Lcom/android/athome/picker/i;->b:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    goto :goto_23

    :cond_4c
    move v1, v2

    .line 203
    goto :goto_2a
.end method
