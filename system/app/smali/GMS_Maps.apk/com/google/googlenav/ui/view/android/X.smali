.class Lcom/google/googlenav/ui/view/android/X;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/V;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/U;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/android/U;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/view/android/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/U;Lcom/google/googlenav/ui/view/android/V;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/X;-><init>(Lcom/google/googlenav/ui/view/android/U;)V

    return-void
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .registers 11

    const/16 v5, 0xc

    const/4 v1, 0x0

    const v3, 0x7a120

    const/4 v6, -0x1

    if-ne p2, v6, :cond_fe

    if-eqz p3, :cond_17

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_6b

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_6b

    :cond_17
    :try_start_17
    invoke-static {}, Lcom/google/googlenav/ui/view/android/U;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbf/a;->a(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v3, :cond_5f

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/google/googlenav/ui/view/android/U;->n()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    new-array v0, v0, [B

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_36} :catch_56

    :try_start_36
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_51

    :try_start_39
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_56

    :goto_3c
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/view/android/U;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/U;->f:Lcom/google/googlenav/ui/p;

    const/16 v2, 0xb

    new-instance v3, Lcom/google/googlenav/ui/wizard/bx;

    const-string v4, "image/jpeg"

    invoke-static {}, Lcom/google/googlenav/ui/view/android/U;->n()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Lcom/google/googlenav/ui/wizard/bx;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v6, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    :cond_50
    :goto_50
    return-void

    :catchall_51
    move-exception v0

    :try_start_52
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_56} :catch_56

    :catch_56
    move-exception v0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/view/android/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/U;->f:Lcom/google/googlenav/ui/p;

    invoke-interface {v0, v5, v6, v1}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    goto :goto_50

    :cond_5f
    :try_start_5f
    invoke-static {}, Lcom/google/googlenav/ui/view/android/U;->n()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7a120

    invoke-static {v2, v0, v3}, Lbf/a;->b(Ljava/lang/String;II)[B
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_69} :catch_56

    move-result-object v0

    goto :goto_3c

    :cond_6b
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_de

    :try_start_71
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/view/android/U;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/U;->d(Lcom/google/googlenav/ui/view/android/U;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lbf/a;->a(Ljava/io/InputStream;)I

    move-result v0

    if-ge v0, v3, :cond_bf

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/view/android/U;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/U;->d(Lcom/google/googlenav/ui/view/android/U;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/view/android/U;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/android/U;->d(Lcom/google/googlenav/ui/view/android/U;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_a9} :catch_b1

    move-result-object v2

    :try_start_aa
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ba

    :try_start_ad
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_b1

    goto :goto_3c

    :catch_b1
    move-exception v0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/view/android/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/U;->f:Lcom/google/googlenav/ui/p;

    invoke-interface {v0, v5, v6, v1}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    goto :goto_50

    :catchall_ba
    move-exception v0

    :try_start_bb
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_bf
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/view/android/U;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/android/U;->d(Lcom/google/googlenav/ui/view/android/U;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_cc} :catch_b1

    move-result-object v2

    const v3, 0x7a120

    :try_start_d0
    invoke-static {v2, v0, v3}, Lbf/a;->a(Ljava/io/InputStream;II)[B
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_d9

    move-result-object v0

    :try_start_d4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto/16 :goto_3c

    :catchall_d9
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_de} :catch_b1

    :cond_de
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_109

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto/16 :goto_3c

    :cond_fe
    if-nez p2, :cond_50

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/X;->a:Lcom/google/googlenav/ui/view/android/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/U;->f:Lcom/google/googlenav/ui/p;

    invoke-interface {v0, v5, v6, v1}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    goto/16 :goto_50

    :cond_109
    move-object v0, v1

    goto/16 :goto_3c
.end method

.method public ab_()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
