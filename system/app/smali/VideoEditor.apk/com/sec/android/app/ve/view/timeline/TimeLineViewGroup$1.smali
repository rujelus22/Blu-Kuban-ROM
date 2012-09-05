.class Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$1;
.super Ljava/lang/Object;
.source "TimeLineViewGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    .line 142
    :goto_7
    :pswitch_7
    return-void

    .line 132
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    #calls: Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->split()V
    invoke-static {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->access$0(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;)V

    goto :goto_7

    .line 136
    :pswitch_e
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$1;->this$0:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    const v1, 0x7f0b0108

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->onDoubleTap()V

    goto :goto_7

    .line 122
    nop

    :pswitch_data_1e
    .packed-switch 0x7f0b010e
        :pswitch_8
        :pswitch_7
        :pswitch_e
    .end packed-switch
.end method
