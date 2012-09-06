.class final Lcom/dropbox/android/activity/delegate/v;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/dropbox/android/activity/delegate/t;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/delegate/t;Landroid/widget/EditText;Landroid/app/Activity;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/dropbox/android/activity/delegate/v;->c:Lcom/dropbox/android/activity/delegate/t;

    iput-object p2, p0, Lcom/dropbox/android/activity/delegate/v;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/dropbox/android/activity/delegate/v;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 314
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/v;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_21

    .line 316
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/v;->b:Landroid/app/Activity;

    const v1, 0x7f09016e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    :cond_21
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    :cond_3c
    invoke-static {v0}, Lcom/dropbox/android/util/Z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    :try_start_40
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    const/16 v1, 0x2b

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_4d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_40 .. :try_end_4d} :catch_5d

    move-result-object v0

    move-object v1, v0

    .line 327
    :goto_4f
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/v;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/dropbox/android/activity/DropboxSendTo;

    if-nez v0, :cond_60

    .line 328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use DropboxSendTo to use this dialog."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :catch_5d
    move-exception v1

    move-object v1, v0

    goto :goto_4f

    .line 331
    :cond_60
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/v;->b:Landroid/app/Activity;

    check-cast v0, Lcom/dropbox/android/activity/DropboxSendTo;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/DropboxSendTo;->d(Ljava/lang/String;)V

    .line 332
    return-void
.end method
