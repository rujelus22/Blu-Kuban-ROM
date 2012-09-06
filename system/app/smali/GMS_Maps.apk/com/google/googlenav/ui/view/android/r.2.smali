.class Lcom/google/googlenav/ui/view/android/R;
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
    .line 145
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/R;->a:Lcom/google/googlenav/ui/view/android/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/N;Lcom/google/googlenav/ui/view/android/O;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/R;-><init>(Lcom/google/googlenav/ui/view/android/N;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 227
    const/4 v0, 0x2

    return v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const v3, 0x7a120

    .line 148
    const/4 v0, -0x1

    if-ne p2, v0, :cond_100

    .line 150
    if-eqz p3, :cond_15

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_6b

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_6b

    .line 153
    :cond_15
    :try_start_15
    invoke-static {}, Lcom/google/googlenav/ui/view/android/N;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaT/a;->a(Ljava/lang/String;)I

    move-result v0

    .line 155
    if-ge v0, v3, :cond_5f

    .line 157
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/google/googlenav/ui/view/android/N;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    new-array v0, v0, [B

    .line 159
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_34} :catch_54

    .line 161
    :try_start_34
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_4f

    .line 163
    :try_start_37
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_54

    .line 217
    :goto_3a
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/R;->a:Lcom/google/googlenav/ui/view/android/N;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/N;->c(Lcom/google/googlenav/ui/view/android/N;)Lcom/google/googlenav/ui/wizard/ca;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/cc;

    const-string v3, "image/jpeg"

    invoke-static {}, Lcom/google/googlenav/ui/view/android/N;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/google/googlenav/ui/wizard/cc;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/ca;->a(Lcom/google/googlenav/ui/wizard/cc;)V

    .line 223
    :cond_4e
    :goto_4e
    return-void

    .line 163
    :catchall_4f
    move-exception v0

    :try_start_50
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_54} :catch_54

    .line 170
    :catch_54
    move-exception v0

    .line 173
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/R;->a:Lcom/google/googlenav/ui/view/android/N;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/N;->c(Lcom/google/googlenav/ui/view/android/N;)Lcom/google/googlenav/ui/wizard/ca;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ca;->a(Ljava/lang/String;)V

    goto :goto_4e

    .line 167
    :cond_5f
    :try_start_5f
    invoke-static {}, Lcom/google/googlenav/ui/view/android/N;->i()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7a120

    invoke-static {v2, v0, v3}, LaT/a;->b(Ljava/lang/String;II)[B
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_69} :catch_54

    move-result-object v0

    goto :goto_3a

    .line 176
    :cond_6b
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_e0

    .line 179
    :try_start_71
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/R;->a:Lcom/google/googlenav/ui/view/android/N;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/N;->d(Lcom/google/googlenav/ui/view/android/N;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, LaT/a;->a(Ljava/io/InputStream;)I

    move-result v0

    .line 182
    if-ge v0, v3, :cond_c1

    .line 183
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/R;->a:Lcom/google/googlenav/ui/view/android/N;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/N;->d(Lcom/google/googlenav/ui/view/android/N;)Landroid/content/ContentResolver;

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

    .line 185
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/R;->a:Lcom/google/googlenav/ui/view/android/N;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/android/N;->d(Lcom/google/googlenav/ui/view/android/N;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_a9} :catch_b1

    move-result-object v2

    .line 187
    :try_start_aa
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_bc

    .line 189
    :try_start_ad
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_b1

    goto :goto_3a

    .line 200
    :catch_b1
    move-exception v0

    .line 203
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/R;->a:Lcom/google/googlenav/ui/view/android/N;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/N;->c(Lcom/google/googlenav/ui/view/android/N;)Lcom/google/googlenav/ui/wizard/ca;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ca;->a(Ljava/lang/String;)V

    goto :goto_4e

    .line 189
    :catchall_bc
    move-exception v0

    :try_start_bd
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    .line 193
    :cond_c1
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/R;->a:Lcom/google/googlenav/ui/view/android/N;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/android/N;->d(Lcom/google/googlenav/ui/view/android/N;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_ce} :catch_b1

    move-result-object v2

    .line 195
    const v3, 0x7a120

    :try_start_d2
    invoke-static {v2, v0, v3}, LaT/a;->a(Ljava/io/InputStream;II)[B
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_db

    move-result-object v0

    .line 197
    :try_start_d6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto/16 :goto_3a

    :catchall_db
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_e0} :catch_b1

    .line 209
    :cond_e0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 210
    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 211
    if-eqz v0, :cond_10d

    .line 212
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 213
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 214
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto/16 :goto_3a

    .line 219
    :cond_100
    if-nez p2, :cond_4e

    .line 221
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/R;->a:Lcom/google/googlenav/ui/view/android/N;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/N;->c(Lcom/google/googlenav/ui/view/android/N;)Lcom/google/googlenav/ui/wizard/ca;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ca;->a(Ljava/lang/String;)V

    goto/16 :goto_4e

    :cond_10d
    move-object v0, v1

    goto/16 :goto_3a
.end method
