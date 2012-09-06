.class final Lcom/google/android/youtube/core/player/ac;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/LightboxActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/player/LightboxActivity;Landroid/content/Context;Landroid/view/View;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 228
    iput-object p1, p0, Lcom/google/android/youtube/core/player/ac;->a:Lcom/google/android/youtube/core/player/LightboxActivity;

    .line 229
    invoke-direct {p0, p2, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 230
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    invoke-virtual {p0, p3}, Lcom/google/android/youtube/core/player/ac;->setContentView(Landroid/view/View;)V

    .line 233
    return-void
.end method


# virtual methods
.method public final show()V
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 237
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 238
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/ac;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 239
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 240
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 243
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 244
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 245
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 246
    return-void
.end method
