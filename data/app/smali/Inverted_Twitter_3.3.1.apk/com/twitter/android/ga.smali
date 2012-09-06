.class final Lcom/twitter/android/ga;
.super Lcom/twitter/android/client/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/TweetSettingsActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetSettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/ga;->a:Lcom/twitter/android/TweetSettingsActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JIILjava/util/ArrayList;)V
    .registers 13

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/twitter/android/ga;->a:Lcom/twitter/android/TweetSettingsActivity;

    iget-object v0, v0, Lcom/twitter/android/TweetSettingsActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/twitter/android/ga;->a:Lcom/twitter/android/TweetSettingsActivity;

    iget-object v0, v0, Lcom/twitter/android/TweetSettingsActivity;->a:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_1c

    iget-object v0, p0, Lcom/twitter/android/ga;->a:Lcom/twitter/android/TweetSettingsActivity;

    invoke-virtual {v0, p9}, Lcom/twitter/android/TweetSettingsActivity;->a(Ljava/util/ArrayList;)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/twitter/android/ga;->a:Lcom/twitter/android/TweetSettingsActivity;

    iget-object v0, v0, Lcom/twitter/android/TweetSettingsActivity;->b:Landroid/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/ga;->a:Lcom/twitter/android/TweetSettingsActivity;

    const v1, 0x7f0b0058

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1b
.end method
