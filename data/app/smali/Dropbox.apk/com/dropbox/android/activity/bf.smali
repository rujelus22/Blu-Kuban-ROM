.class final Lcom/dropbox/android/activity/bf;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Ldbxyzptlk/j/m;

.field final synthetic b:Lcom/dropbox/android/activity/PrefsActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/PrefsActivity;Ldbxyzptlk/j/m;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/dropbox/android/activity/bf;->b:Lcom/dropbox/android/activity/PrefsActivity;

    iput-object p2, p0, Lcom/dropbox/android/activity/bf;->a:Ldbxyzptlk/j/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 185
    iget-object v0, p0, Lcom/dropbox/android/activity/bf;->b:Lcom/dropbox/android/activity/PrefsActivity;

    const v1, 0x7f09012c

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/PrefsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    iget-object v0, p0, Lcom/dropbox/android/activity/bf;->b:Lcom/dropbox/android/activity/PrefsActivity;

    const v2, 0x7f09012d

    invoke-virtual {v0, v2}, Lcom/dropbox/android/activity/PrefsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 188
    const-string v0, "http://dropbox.com"

    .line 189
    iget-object v3, p0, Lcom/dropbox/android/activity/bf;->a:Ldbxyzptlk/j/m;

    invoke-virtual {v3}, Ldbxyzptlk/j/m;->c()Ldbxyzptlk/p/x;

    move-result-object v3

    .line 190
    if-eqz v3, :cond_23

    iget-object v4, v3, Ldbxyzptlk/l/c;->g:Ljava/lang/String;

    if-eqz v4, :cond_23

    .line 191
    iget-object v0, v3, Ldbxyzptlk/l/c;->g:Ljava/lang/String;

    .line 194
    :cond_23
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v2, p0, Lcom/dropbox/android/activity/bf;->b:Lcom/dropbox/android/activity/PrefsActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v0}, Lcom/dropbox/android/activity/PrefsActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/dropbox/android/util/h;->U()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 197
    return v5
.end method
