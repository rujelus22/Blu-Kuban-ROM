.class Lcom/sec/android/socialhub/state/MessageBaseState$2;
.super Ljava/lang/Object;
.source "MessageBaseState.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/state/MessageBaseState;->handleOptionMenu(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/state/MessageBaseState;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/state/MessageBaseState;)V
    .registers 2
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/sec/android/socialhub/state/MessageBaseState$2;->this$0:Lcom/sec/android/socialhub/state/MessageBaseState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 292
    packed-switch p2, :pswitch_data_1a

    .line 304
    :goto_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 305
    iget-object v0, p0, Lcom/sec/android/socialhub/state/MessageBaseState$2;->this$0:Lcom/sec/android/socialhub/state/MessageBaseState;

    iget-object v0, v0, Lcom/sec/android/socialhub/state/BaseState;->mListView:Lcom/sec/android/socialhub/parent/ISocialHubListView;

    invoke-interface {v0}, Lcom/sec/android/socialhub/parent/ISocialHubListView;->startQuery()V

    .line 306
    return-void

    .line 295
    :pswitch_e
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListbyMode:I

    goto :goto_3

    .line 298
    :pswitch_12
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListbyMode:I

    goto :goto_3

    .line 301
    :pswitch_16
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListbyMode:I

    goto :goto_3

    .line 292
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_e
        :pswitch_12
        :pswitch_16
    .end packed-switch
.end method
