.class final Lcom/dropbox/android/activity/G;
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
    .line 98
    iput-object p1, p0, Lcom/dropbox/android/activity/G;->a:Lcom/dropbox/android/activity/DropboxSendTo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 101
    sget-object v0, Lcom/dropbox/android/activity/delegate/a;->d:Lcom/dropbox/android/activity/delegate/a;

    iget-object v1, p0, Lcom/dropbox/android/activity/G;->a:Lcom/dropbox/android/activity/DropboxSendTo;

    invoke-static {v1}, Lcom/dropbox/android/activity/DropboxSendTo;->a(Lcom/dropbox/android/activity/DropboxSendTo;)Lcom/dropbox/android/activity/delegate/x;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/android/activity/G;->a:Lcom/dropbox/android/activity/DropboxSendTo;

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/activity/delegate/a;->a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;)V

    .line 102
    return-void
.end method
