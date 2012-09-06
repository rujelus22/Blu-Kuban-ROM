.class final Lcom/dropbox/android/activity/auth/b;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/auth/DropboxAuth;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/auth/DropboxAuth;)V
    .registers 2
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/dropbox/android/activity/auth/b;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/b;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->q(Lcom/dropbox/android/activity/auth/DropboxAuth;)V

    .line 236
    return-void
.end method
