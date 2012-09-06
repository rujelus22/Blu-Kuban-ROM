.class Lcom/google/googlenav/ui/view/android/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/android/R;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/N;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/android/N;)V
    .registers 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/Q;->a:Lcom/google/googlenav/ui/view/android/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/N;Lcom/google/googlenav/ui/view/android/O;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/Q;-><init>(Lcom/google/googlenav/ui/view/android/N;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 115
    const/4 v0, -0x1

    if-ne p2, v0, :cond_50

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 117
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v1, "outputX"

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/Q;->a:Lcom/google/googlenav/ui/view/android/N;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/android/N;->a(Lcom/google/googlenav/ui/view/android/N;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const-string v1, "outputY"

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/Q;->a:Lcom/google/googlenav/ui/view/android/N;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/android/N;->a(Lcom/google/googlenav/ui/view/android/N;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    if-nez p3, :cond_51

    .line 123
    invoke-static {}, Lcom/google/googlenav/ui/view/android/N;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 124
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    :cond_40
    :goto_40
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/Q;->a:Lcom/google/googlenav/ui/view/android/N;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/N;->b(Lcom/google/googlenav/ui/view/android/N;)Lcom/google/googlenav/android/Q;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/view/android/R;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/Q;->a:Lcom/google/googlenav/ui/view/android/N;

    invoke-direct {v2, v3, v4}, Lcom/google/googlenav/ui/view/android/R;-><init>(Lcom/google/googlenav/ui/view/android/N;Lcom/google/googlenav/ui/view/android/O;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;Lcom/google/googlenav/android/R;)V

    .line 133
    :cond_50
    return-void

    .line 126
    :cond_51
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_40

    .line 128
    const-string v2, "data"

    const-string v3, "data"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_40
.end method
