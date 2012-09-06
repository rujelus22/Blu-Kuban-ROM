.class final Lcom/dropbox/android/activity/K;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/TabHost;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/dropbox/android/activity/DropboxTabActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/DropboxTabActivity;Landroid/widget/TabHost;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/dropbox/android/activity/K;->c:Lcom/dropbox/android/activity/DropboxTabActivity;

    iput-object p2, p0, Lcom/dropbox/android/activity/K;->a:Landroid/widget/TabHost;

    iput-object p3, p0, Lcom/dropbox/android/activity/K;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/dropbox/android/activity/K;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/K;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 227
    iget-object v0, p0, Lcom/dropbox/android/activity/K;->c:Lcom/dropbox/android/activity/DropboxTabActivity;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/DropboxTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/dropbox/android/activity/K;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_21

    .line 230
    check-cast v0, Lcom/dropbox/android/activity/UploadsActivityGroup;

    .line 231
    invoke-virtual {v0}, Lcom/dropbox/android/activity/UploadsActivityGroup;->c()V

    .line 236
    :cond_21
    :goto_21
    return-void

    .line 234
    :cond_22
    iget-object v0, p0, Lcom/dropbox/android/activity/K;->a:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/dropbox/android/activity/K;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_21
.end method
