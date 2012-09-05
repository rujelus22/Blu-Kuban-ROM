.class Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl$PopupMenuListener;
.super Ljava/lang/Object;
.source "RentalsControllerImpl.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupMenuListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;

.field private final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "videoId"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl$PopupMenuListener;->this$0:Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl$PopupMenuListener;->videoId:Ljava/lang/String;

    .line 103
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_34

    move v0, v1

    .line 120
    :goto_a
    return v0

    .line 108
    :pswitch_b
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl$PopupMenuListener;->this$0:Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;

    #getter for: Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->navigation:Lcom/google/android/youtube/videos/Navigation;
    invoke-static {v1}, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->access$000(Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;)Lcom/google/android/youtube/videos/Navigation;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl$PopupMenuListener;->videoId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/youtube/videos/Navigation;->toWatch(Ljava/lang/String;)V

    goto :goto_a

    .line 111
    :pswitch_17
    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl$PopupMenuListener;->this$0:Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;

    iget-object v3, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl$PopupMenuListener;->videoId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->pinVideo(Ljava/lang/String;Z)V

    goto :goto_a

    .line 114
    :pswitch_1f
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl$PopupMenuListener;->this$0:Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;

    #getter for: Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->navigation:Lcom/google/android/youtube/videos/Navigation;
    invoke-static {v1}, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->access$100(Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;)Lcom/google/android/youtube/videos/Navigation;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl$PopupMenuListener;->videoId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/youtube/videos/Navigation;->toFullscreenWatch(Ljava/lang/String;)V

    goto :goto_a

    .line 117
    :pswitch_2b
    iget-object v1, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl$PopupMenuListener;->this$0:Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;

    iget-object v2, p0, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl$PopupMenuListener;->videoId:Ljava/lang/String;

    #calls: Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->rentAgain(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;->access$200(Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsControllerImpl;Ljava/lang/String;)V

    goto :goto_a

    .line 106
    nop

    :pswitch_data_34
    .packed-switch 0x7f0d0046
        :pswitch_2b
        :pswitch_b
        :pswitch_1f
        :pswitch_17
    .end packed-switch
.end method
