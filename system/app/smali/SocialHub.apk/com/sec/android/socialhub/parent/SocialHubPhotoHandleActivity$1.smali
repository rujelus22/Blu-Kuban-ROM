.class Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity$1;
.super Ljava/lang/Object;
.source "SocialHubPhotoHandleActivity.java"

# interfaces
.implements Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity$1;->this$0:Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeViewMode(Z)V
    .registers 3
    .parameter "bImage"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity$1;->this$0:Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onChangeViewMode(Z)V

    .line 118
    return-void
.end method

.method public onLoadCompleted(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V
    .registers 5
    .parameter "info"
    .parameter "bSuccess"
    .parameter "errorResource"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity$1;->this$0:Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onPhotoLoadComplete(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V

    .line 113
    return-void
.end method

.method public onStartLoad()V
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity$1;->this$0:Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onStartPhotoLoad()V

    .line 107
    return-void
.end method
