.class Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity$1;
.super Ljava/lang/Object;
.source "SocialHubThreeButtonPhotoHandleActivity.java"

# interfaces
.implements Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity$1;->this$0:Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeViewMode(Z)V
    .registers 3
    .parameter "bImage"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity$1;->this$0:Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onChangeViewMode(Z)V

    .line 119
    return-void
.end method

.method public onLoadCompleted(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V
    .registers 5
    .parameter "info"
    .parameter "bSuccess"
    .parameter "errorResource"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity$1;->this$0:Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onPhotoLoadComplete(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V

    .line 114
    return-void
.end method

.method public onStartLoad()V
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity$1;->this$0:Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/SocialHubThreeButtonPhotoHandleActivity;->onStartPhotoLoad()V

    .line 108
    return-void
.end method
