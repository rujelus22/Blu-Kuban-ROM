.class final Lcom/dropbox/android/activity/bm;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/SimpleDropboxBrowser;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/SimpleDropboxBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/dropbox/android/activity/bm;->a:Lcom/dropbox/android/activity/SimpleDropboxBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 631
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 632
    return-void
.end method
