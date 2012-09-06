.class final Lcom/dropbox/android/activity/J;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dropbox/android/activity/DropboxTabActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/DropboxTabActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/dropbox/android/activity/J;->b:Lcom/dropbox/android/activity/DropboxTabActivity;

    iput-object p2, p0, Lcom/dropbox/android/activity/J;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTabChanged(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/dropbox/android/activity/J;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 211
    iget-object v0, p0, Lcom/dropbox/android/activity/J;->b:Lcom/dropbox/android/activity/DropboxTabActivity;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/DropboxTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/dropbox/android/activity/J;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_1b

    .line 214
    check-cast v0, Lcom/dropbox/android/activity/UploadsActivityGroup;

    .line 215
    invoke-virtual {v0}, Lcom/dropbox/android/activity/UploadsActivityGroup;->c()V

    .line 218
    :cond_1b
    return-void
.end method
