.class final Lcom/dropbox/android/activity/am;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/LocalFileBrowseFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/LocalFileBrowseFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/dropbox/android/activity/am;->a:Lcom/dropbox/android/activity/LocalFileBrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/dropbox/android/activity/am;->a:Lcom/dropbox/android/activity/LocalFileBrowseFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->d(Lcom/dropbox/android/activity/LocalFileBrowseFragment;)V

    .line 216
    return-void
.end method
