.class final Lcom/dropbox/android/activity/bi;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dropbox/android/activity/PrefsActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/PrefsActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/dropbox/android/activity/bi;->b:Lcom/dropbox/android/activity/PrefsActivity;

    iput-object p2, p0, Lcom/dropbox/android/activity/bi;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 230
    iget-object v0, p0, Lcom/dropbox/android/activity/bi;->b:Lcom/dropbox/android/activity/PrefsActivity;

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/PrefsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/dropbox/android/activity/bi;->b:Lcom/dropbox/android/activity/PrefsActivity;

    const v2, 0x7f09012e

    invoke-virtual {v1, v2}, Lcom/dropbox/android/activity/PrefsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/dropbox/android/activity/bi;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v2

    invoke-virtual {v2}, Ldbxyzptlk/h/b;->a()Ldbxyzptlk/h/g;

    move-result-object v2

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\nInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Ldbxyzptlk/h/g;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Ldbxyzptlk/h/g;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Ldbxyzptlk/h/g;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " UID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Ldbxyzptlk/h/g;->h:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    iget-object v3, p0, Lcom/dropbox/android/activity/bi;->b:Lcom/dropbox/android/activity/PrefsActivity;

    invoke-static {v3, v0, v1, v2}, Lcom/dropbox/android/activity/PrefsActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/dropbox/android/util/h;->X()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 239
    return v5
.end method
