.class final Lcom/android/athome/picker/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/android/athome/picker/a/a;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/a/a;)V
    .registers 2
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/android/athome/picker/a/j;->a:Lcom/android/athome/picker/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/athome/picker/a/j;->a:Lcom/android/athome/picker/a/a;

    invoke-virtual {v0, p2}, Lcom/android/athome/picker/a/a;->c(I)V

    .line 683
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .parameter

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/athome/picker/a/j;->a:Lcom/android/athome/picker/a/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/athome/picker/a/a;->a(Lcom/android/athome/picker/a/a;Z)Z

    .line 688
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .parameter

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/athome/picker/a/j;->a:Lcom/android/athome/picker/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/athome/picker/a/a;->a(Lcom/android/athome/picker/a/a;Z)Z

    .line 693
    iget-object v0, p0, Lcom/android/athome/picker/a/j;->a:Lcom/android/athome/picker/a/a;

    invoke-virtual {v0}, Lcom/android/athome/picker/a/a;->E()V

    .line 694
    return-void
.end method
