.class Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity$1;
.super Ljava/lang/Object;
.source "SocialHubPhotoChooserActivity.java"

# interfaces
.implements Lcom/sec/android/socialhub/dialog/AbsListDialog$IDialogDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismis(Z)V
    .registers 3
    .parameter "bSelected"

    .prologue
    .line 42
    if-nez p1, :cond_7

    .line 43
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubPhotoChooserActivity;->finish()V

    .line 44
    :cond_7
    return-void
.end method
