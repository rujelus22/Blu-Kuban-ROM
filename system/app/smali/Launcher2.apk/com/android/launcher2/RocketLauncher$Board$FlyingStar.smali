.class public Lcom/android/launcher2/RocketLauncher$Board$FlyingStar;
.super Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;
.source "RocketLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/RocketLauncher$Board;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlyingStar"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/RocketLauncher$Board;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/RocketLauncher$Board;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter "context"
    .parameter "as"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingStar;->this$0:Lcom/android/launcher2/RocketLauncher$Board;

    .line 228
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;-><init>(Lcom/android/launcher2/RocketLauncher$Board;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 229
    return-void
.end method


# virtual methods
.method public randomize()V
    .registers 3

    .prologue
    .line 234
    invoke-super {p0}, Lcom/android/launcher2/RocketLauncher$Board$FlyingIcon;->randomize()V

    .line 235
    const v0, 0x443b8000

    const/high16 v1, 0x44fa

    invoke-static {v0, v1}, Lcom/android/launcher2/RocketLauncher$Board;->randfrange(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingStar;->v:F

    .line 236
    const/high16 v0, 0x3f80

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/android/launcher2/RocketLauncher$Board;->randfrange(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/RocketLauncher$Board$FlyingStar;->endscale:F

    .line 237
    return-void
.end method

.method public randomizeIcon()V
    .registers 2

    .prologue
    .line 231
    const v0, 0x7f020060

    invoke-virtual {p0, v0}, Lcom/android/launcher2/RocketLauncher$Board$FlyingStar;->setImageResource(I)V

    .line 232
    return-void
.end method
