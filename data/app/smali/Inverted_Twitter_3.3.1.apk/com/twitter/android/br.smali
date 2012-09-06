.class final Lcom/twitter/android/br;
.super Lcom/twitter/android/client/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/MediaPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/twitter/android/MediaPlayerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/br;->a:Lcom/twitter/android/MediaPlayerActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/br;->a:Lcom/twitter/android/MediaPlayerActivity;

    invoke-static {v0}, Lcom/twitter/android/MediaPlayerActivity;->a(Lcom/twitter/android/MediaPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/twitter/android/br;->a:Lcom/twitter/android/MediaPlayerActivity;

    invoke-static {v0}, Lcom/twitter/android/MediaPlayerActivity;->a(Lcom/twitter/android/MediaPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/o;

    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/twitter/android/br;->a:Lcom/twitter/android/MediaPlayerActivity;

    invoke-static {v1}, Lcom/twitter/android/MediaPlayerActivity;->b(Lcom/twitter/android/MediaPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/twitter/android/util/o;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_27
    return-void
.end method
