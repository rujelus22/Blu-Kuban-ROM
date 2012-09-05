.class Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto$1;
.super Ljava/lang/Object;
.source "ViewTypePhoto.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;->setClickListener(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/view/View$OnClickListener;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;)V
    .registers 2
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto$1;->this$0:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypePhoto;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .parameter "arg0"

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method
