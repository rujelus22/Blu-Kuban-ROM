.class final Lcom/google/android/youtube/app/ui/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/google/android/youtube/app/ui/bt;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/bt;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bz;->b:Lcom/google/android/youtube/app/ui/bt;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/bz;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bz;->b:Lcom/google/android/youtube/app/ui/bt;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bt;->f(Lcom/google/android/youtube/app/ui/bt;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bz;->b:Lcom/google/android/youtube/app/ui/bt;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bt;->g(Lcom/google/android/youtube/app/ui/bt;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bz;->b:Lcom/google/android/youtube/app/ui/bt;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bt;->a(Lcom/google/android/youtube/app/ui/bt;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelected(Z)V

    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.YOUTUBE_SCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    const-string v1, "SCAN_MODE"

    const-string v2, "QR_CODE_MODE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bz;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bz;->a:Landroid/app/Activity;

    const/16 v2, 0x6b6

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 189
    return-void
.end method
