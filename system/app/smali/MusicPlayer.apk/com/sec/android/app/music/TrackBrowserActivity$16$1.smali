.class Lcom/sec/android/app/music/TrackBrowserActivity$16$1;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/TrackBrowserActivity$16;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/music/TrackBrowserActivity$16;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity$16;)V
    .registers 2
    .parameter

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$16$1;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$16;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 1068
    packed-switch p2, :pswitch_data_16

    .line 1081
    :goto_3
    return-void

    .line 1070
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$16$1;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$16;

    invoke-virtual {v0}, Lcom/sec/android/app/music/TrackBrowserActivity$16;->OnCamera()V

    goto :goto_3

    .line 1073
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$16$1;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$16;

    invoke-virtual {v0}, Lcom/sec/android/app/music/TrackBrowserActivity$16;->OnMyFiles()V

    goto :goto_3

    .line 1076
    :pswitch_10
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$16$1;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$16;

    invoke-virtual {v0}, Lcom/sec/android/app/music/TrackBrowserActivity$16;->OnDelete()V

    goto :goto_3

    .line 1068
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_4
        :pswitch_a
        :pswitch_10
    .end packed-switch
.end method
