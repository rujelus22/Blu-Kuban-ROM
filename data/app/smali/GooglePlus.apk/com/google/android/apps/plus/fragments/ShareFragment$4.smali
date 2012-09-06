.class Lcom/google/android/apps/plus/fragments/ShareFragment$4;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/CompoundImageButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 380
    const-class v0, Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/fragments/ShareFragment$4;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/google/android/apps/plus/views/CompoundImageButton;ZZ)V
    .registers 8
    .parameter "buttonView"
    .parameter "isChecked"
    .parameter "fromUser"

    .prologue
    const/4 v3, 0x0

    .line 387
    sget-boolean v1, Lcom/google/android/apps/plus/fragments/ShareFragment$4;->$assertionsDisabled:Z

    if-nez v1, :cond_14

    const v1, 0x7f09023b

    invoke-virtual {p1}, Lcom/google/android/apps/plus/views/CompoundImageButton;->getId()I

    move-result v2

    if-eq v1, v2, :cond_14

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 388
    :cond_14
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 389
    .local v0, activity:Landroid/app/Activity;
    if-eqz p2, :cond_68

    .line 390
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->isProviderEnabled()Z
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$1000(Lcom/google/android/apps/plus/fragments/ShareFragment;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 391
    const v1, 0x1bfb7a8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 413
    :cond_2a
    :goto_2a
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getView()Landroid/view/View;

    move-result-object v2

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->updateLocation(Landroid/view/View;)V
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$1400(Lcom/google/android/apps/plus/fragments/ShareFragment;Landroid/view/View;)V

    .line 414
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getView()Landroid/view/View;

    move-result-object v2

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->updatePostUI(Landroid/view/View;)V
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$1500(Lcom/google/android/apps/plus/fragments/ShareFragment;Landroid/view/View;)V

    .line 415
    return-void

    .line 393
    :cond_41
    if-eqz p3, :cond_48

    .line 395
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-static {v1, v3}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$802(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 397
    :cond_48
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 398
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->addLocationListener()V
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$1100(Lcom/google/android/apps/plus/fragments/ShareFragment;)V

    .line 399
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$400(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsAccountsData;->hasSeenLocationDialog(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 400
    const v1, 0x1d71d84

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_2a

    .line 407
    :cond_68
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->removeLocationListener()V
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$1200(Lcom/google/android/apps/plus/fragments/ShareFragment;)V

    .line 409
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-static {v1, v3}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$802(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 410
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mProviderLocation:Landroid/location/Location;
    invoke-static {v1, v3}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$1302(Lcom/google/android/apps/plus/fragments/ShareFragment;Landroid/location/Location;)Landroid/location/Location;

    goto :goto_2a
.end method
