.class Lcom/google/android/talk/videochat/VideoChatActivity$12;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;->setupOverlayClickLogic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1919
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$12;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$12;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->startTextChatActivity()V
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2400(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 1923
    return-void
.end method
