.class Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$17;
.super Ljava/lang/Object;
.source "MediaInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->makeMediaInfoView(IILjava/lang/String;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 787
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$17;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "event"

    .prologue
    .line 790
    const v1, 0x7f0c0066

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 791
    .local v0, tag:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    .line 802
    :goto_e
    :pswitch_e
    const/4 v1, 0x0

    return v1

    .line 793
    :pswitch_10
    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_e

    .line 797
    :pswitch_17
    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_e

    .line 791
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_10
        :pswitch_17
        :pswitch_e
        :pswitch_17
    .end packed-switch
.end method
