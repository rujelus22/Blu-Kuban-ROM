.class final Lcom/dropbox/android/activity/by;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/dropbox/android/activity/TextEditActivity;

.field final synthetic c:Lcom/dropbox/android/activity/bw;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/bw;Landroid/widget/EditText;Lcom/dropbox/android/activity/TextEditActivity;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/dropbox/android/activity/by;->c:Lcom/dropbox/android/activity/bw;

    iput-object p2, p0, Lcom/dropbox/android/activity/by;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/dropbox/android/activity/by;->b:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dropbox/android/activity/by;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_21

    .line 154
    iget-object v0, p0, Lcom/dropbox/android/activity/by;->b:Lcom/dropbox/android/activity/TextEditActivity;

    const v1, 0x7f09016e

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/TextEditActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_21
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    :cond_3c
    invoke-static {v0}, Lcom/dropbox/android/util/Z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    :try_start_40
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    const/16 v2, 0x2b

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_4d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_40 .. :try_end_4d} :catch_a9

    move-result-object v1

    .line 165
    :goto_4e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dropbox/android/activity/by;->b:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-static {v3}, Lcom/dropbox/android/activity/TextEditActivity;->b(Lcom/dropbox/android/activity/TextEditActivity;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 166
    iget-object v2, p0, Lcom/dropbox/android/activity/by;->b:Lcom/dropbox/android/activity/TextEditActivity;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/dropbox/android/activity/TextEditActivity;->a(Lcom/dropbox/android/activity/TextEditActivity;Landroid/net/Uri;Z)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 168
    invoke-static {}, Lcom/dropbox/android/util/h;->Y()Lcom/dropbox/android/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/android/util/r;->c()V

    .line 169
    iget-object v2, p0, Lcom/dropbox/android/activity/by;->b:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-static {v2, v1}, Lcom/dropbox/android/activity/TextEditActivity;->a(Lcom/dropbox/android/activity/TextEditActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 170
    iget-object v2, p0, Lcom/dropbox/android/activity/by;->b:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-static {v2, v0}, Lcom/dropbox/android/activity/TextEditActivity;->a(Lcom/dropbox/android/activity/TextEditActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/dropbox/android/activity/by;->b:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/TextEditActivity;->c(Lcom/dropbox/android/activity/TextEditActivity;)Lcom/dropbox/android/util/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/util/f;->a(Landroid/net/Uri;)V

    .line 172
    iget-object v0, p0, Lcom/dropbox/android/activity/by;->b:Lcom/dropbox/android/activity/TextEditActivity;

    iget-object v1, p0, Lcom/dropbox/android/activity/by;->b:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-static {v1}, Lcom/dropbox/android/activity/TextEditActivity;->d(Lcom/dropbox/android/activity/TextEditActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/TextEditActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/dropbox/android/activity/by;->b:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/TextEditActivity;->e(Lcom/dropbox/android/activity/TextEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 175
    iget-object v0, p0, Lcom/dropbox/android/activity/by;->b:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/TextEditActivity;->a(Lcom/dropbox/android/activity/TextEditActivity;)V

    .line 178
    :cond_a8
    return-void

    .line 163
    :catch_a9
    move-exception v2

    goto :goto_4e
.end method
