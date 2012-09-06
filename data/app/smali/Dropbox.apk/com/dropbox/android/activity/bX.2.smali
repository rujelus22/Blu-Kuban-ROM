.class final Lcom/dropbox/android/activity/bX;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/UploadsActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/UploadsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/dropbox/android/activity/bX;->a:Lcom/dropbox/android/activity/UploadsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dropbox/android/activity/bX;->a:Lcom/dropbox/android/activity/UploadsActivity;

    const-class v2, Lcom/dropbox/android/activity/GalleryPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    iget-object v1, p0, Lcom/dropbox/android/activity/bX;->a:Lcom/dropbox/android/activity/UploadsActivity;

    invoke-virtual {v1, v0}, Lcom/dropbox/android/activity/UploadsActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method
