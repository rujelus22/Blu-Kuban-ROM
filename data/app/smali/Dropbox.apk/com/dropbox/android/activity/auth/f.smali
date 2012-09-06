.class final Lcom/dropbox/android/activity/auth/f;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/auth/DropboxAuth;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/auth/DropboxAuth;)V
    .registers 2
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/dropbox/android/activity/auth/f;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 342
    iget-object v0, p0, Lcom/dropbox/android/activity/auth/f;->a:Lcom/dropbox/android/activity/auth/DropboxAuth;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/auth/DropboxAuth;->finish()V

    .line 343
    return-void
.end method
