.class Lcom/google/googlenav/ui/android/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/RealtimePulseImageView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/RealtimePulseImageView;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/googlenav/ui/android/ap;->a:Lcom/google/googlenav/ui/android/RealtimePulseImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ap;->a:Lcom/google/googlenav/ui/android/RealtimePulseImageView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/RealtimePulseImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 46
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 47
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 48
    return-void
.end method
