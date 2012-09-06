.class final Lcom/dropbox/android/activity/H;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/DropboxSendTo;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/DropboxSendTo;)V
    .registers 2
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/dropbox/android/activity/H;->a:Lcom/dropbox/android/activity/DropboxSendTo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 134
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/H;->a:Lcom/dropbox/android/activity/DropboxSendTo;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/DropboxSendTo;->i()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldbxyzptlk/j/m;->a(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/dropbox/android/activity/H;->a:Lcom/dropbox/android/activity/DropboxSendTo;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/DropboxSendTo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 142
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 144
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 145
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_31

    .line 147
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_31
    :goto_31
    if-eqz v2, :cond_4b

    .line 180
    iget-object v0, p0, Lcom/dropbox/android/activity/H;->a:Lcom/dropbox/android/activity/DropboxSendTo;

    iget-object v1, p0, Lcom/dropbox/android/activity/H;->a:Lcom/dropbox/android/activity/DropboxSendTo;

    new-instance v3, Lcom/dropbox/android/util/Z;

    iget-object v4, p0, Lcom/dropbox/android/activity/H;->a:Lcom/dropbox/android/activity/DropboxSendTo;

    invoke-virtual {v4}, Lcom/dropbox/android/activity/DropboxSendTo;->i()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    iget-object v4, p0, Lcom/dropbox/android/activity/H;->a:Lcom/dropbox/android/activity/DropboxSendTo;

    invoke-virtual {v4}, Lcom/dropbox/android/activity/DropboxSendTo;->z()Landroid/database/Cursor;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/dropbox/android/util/b;->a(Lcom/dropbox/android/util/d;Landroid/content/Context;Ljava/util/Collection;Lcom/dropbox/android/util/Z;Landroid/database/Cursor;)Z

    .line 184
    :cond_4b
    :goto_4b
    return-void

    .line 149
    :cond_4c
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 150
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 151
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 152
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 153
    if-eqz v0, :cond_31

    .line 154
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 156
    :cond_6e
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 157
    iget-object v0, p0, Lcom/dropbox/android/activity/H;->a:Lcom/dropbox/android/activity/DropboxSendTo;

    sget-object v1, Lcom/dropbox/android/activity/delegate/g;->h:Lcom/dropbox/android/activity/delegate/g;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/delegate/g;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/DropboxSendTo;->showDialog(I)V

    goto :goto_4b

    .line 160
    :cond_82
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 161
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 162
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 163
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a0
    :goto_a0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 165
    instance-of v3, v0, Landroid/net/Uri;

    if-eqz v3, :cond_a0

    .line 166
    check-cast v0, Landroid/net/Uri;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    .line 170
    :cond_b6
    const-string v0, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 172
    iget-object v1, p0, Lcom/dropbox/android/activity/H;->a:Lcom/dropbox/android/activity/DropboxSendTo;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/DropboxSendTo;->i()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 173
    iget-object v1, p0, Lcom/dropbox/android/activity/H;->a:Lcom/dropbox/android/activity/DropboxSendTo;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/dropbox/android/activity/DropboxSendTo;->setResult(ILandroid/content/Intent;)V

    .line 174
    iget-object v0, p0, Lcom/dropbox/android/activity/H;->a:Lcom/dropbox/android/activity/DropboxSendTo;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/DropboxSendTo;->finish()V

    goto/16 :goto_4b
.end method
