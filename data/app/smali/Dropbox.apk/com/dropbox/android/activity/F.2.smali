.class final Lcom/dropbox/android/activity/F;
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
    .line 83
    iput-object p1, p0, Lcom/dropbox/android/activity/F;->a:Lcom/dropbox/android/activity/DropboxSendTo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dropbox/android/activity/F;->a:Lcom/dropbox/android/activity/DropboxSendTo;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/DropboxSendTo;->finish()V

    .line 87
    return-void
.end method
