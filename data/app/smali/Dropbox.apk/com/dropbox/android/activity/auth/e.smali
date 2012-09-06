.class final Lcom/dropbox/android/activity/auth/e;
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
    .line 253
    iput-object p1, p0, Lcom/dropbox/android/activity/auth/e;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/e;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-static {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->s(Lcom/dropbox/android/activity/auth/DropboxAuth;)V

    .line 257
    return-void
.end method
