.class Lcom/estrongs/android/pop/app/bi;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/CompressActivity;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/CompressActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/bi;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/CompressActivity;->e(Lcom/estrongs/android/pop/app/CompressActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_16

    :cond_14
    const-string v0, "auto_name.zip"

    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/bi;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/CompressActivity;->f(Lcom/estrongs/android/pop/app/CompressActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/CompressActivity;->g(Lcom/estrongs/android/pop/app/CompressActivity;)Lcom/estrongs/io/archive/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/io/archive/d;->b(Ljava/lang/String;)V

    :try_start_48
    iget-object v1, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/CompressActivity;->c(Lcom/estrongs/android/pop/app/CompressActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "zip"

    iget-object v4, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/CompressActivity;->f(Lcom/estrongs/android/pop/app/CompressActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_de

    iget-object v3, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/CompressActivity;->h(Lcom/estrongs/android/pop/app/CompressActivity;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_80

    const-string v3, "compress_level"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_80
    iget-object v3, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/CompressActivity;->h(Lcom/estrongs/android/pop/app/CompressActivity;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-ne v3, v5, :cond_96

    const-string v3, "compress_level"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_96
    iget-object v3, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/CompressActivity;->h(Lcom/estrongs/android/pop/app/CompressActivity;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-ne v3, v6, :cond_ac

    const-string v3, "compress_level"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ac
    iget-object v3, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/CompressActivity;->h(Lcom/estrongs/android/pop/app/CompressActivity;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_c4

    const-string v3, "compress_level"

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_de

    const-string v3, "password"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    new-instance v3, Lcom/estrongs/io/archive/aeszip/k;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/CompressActivity;->i(Lcom/estrongs/android/pop/app/CompressActivity;)Lcom/estrongs/io/a/a/b;

    move-result-object v4

    invoke-direct {v3, v0, v4, v2}, Lcom/estrongs/io/archive/aeszip/k;-><init>(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/util/Map;)V

    iput-object v3, v1, Lcom/estrongs/android/pop/app/CompressActivity;->c:Lcom/estrongs/io/archive/i;

    :cond_de
    iget-object v1, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/CompressActivity;->c:Lcom/estrongs/io/archive/i;

    if-nez v1, :cond_f3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    new-instance v3, Lcom/estrongs/io/archive/i;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/CompressActivity;->i(Lcom/estrongs/android/pop/app/CompressActivity;)Lcom/estrongs/io/a/a/b;

    move-result-object v4

    invoke-direct {v3, v0, v4, v2}, Lcom/estrongs/io/archive/i;-><init>(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/util/Map;)V

    iput-object v3, v1, Lcom/estrongs/android/pop/app/CompressActivity;->c:Lcom/estrongs/io/archive/i;

    :cond_f3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/CompressActivity;->c:Lcom/estrongs/io/archive/i;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/CompressActivity;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/i;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/CompressActivity;->g(Lcom/estrongs/android/pop/app/CompressActivity;)Lcom/estrongs/io/archive/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/d;->sendEmptyMessage(I)Z
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_108} :catch_109
    .catch Ljava/lang/NullPointerException; {:try_start_48 .. :try_end_108} :catch_125

    :goto_108
    return-void

    :catch_109
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/CompressActivity;->g(Lcom/estrongs/android/pop/app/CompressActivity;)Lcom/estrongs/io/archive/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/CompressActivity;->g(Lcom/estrongs/android/pop/app/CompressActivity;)Lcom/estrongs/io/archive/d;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/estrongs/io/archive/d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/io/archive/d;->sendMessage(Landroid/os/Message;)Z

    goto :goto_108

    :catch_125
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/CompressActivity;->g(Lcom/estrongs/android/pop/app/CompressActivity;)Lcom/estrongs/io/archive/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/bi;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/CompressActivity;->g(Lcom/estrongs/android/pop/app/CompressActivity;)Lcom/estrongs/io/archive/d;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lcom/estrongs/io/archive/d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/io/archive/d;->sendMessage(Landroid/os/Message;)Z

    goto :goto_108
.end method
