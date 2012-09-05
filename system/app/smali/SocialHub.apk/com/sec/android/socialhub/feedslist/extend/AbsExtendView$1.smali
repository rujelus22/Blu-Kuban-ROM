.class Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView$1;
.super Ljava/lang/Object;
.source "AbsExtendView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;->onOptionsItemSelected(Lcom/sec/android/socialhub/parent/IActivityDataHandler;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;

.field final synthetic val$menu_data:Lcom/sec/android/socialhub/parent/IActivityDataHandler;

.field final synthetic val$menu_item:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;Lcom/sec/android/socialhub/parent/IActivityDataHandler;Landroid/view/MenuItem;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView$1;->this$0:Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;

    iput-object p2, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView$1;->val$menu_data:Lcom/sec/android/socialhub/parent/IActivityDataHandler;

    iput-object p3, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView$1;->val$menu_item:Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView$1;->this$0:Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;

    iget-object v1, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView$1;->val$menu_data:Lcom/sec/android/socialhub/parent/IActivityDataHandler;

    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView$1;->val$menu_item:Landroid/view/MenuItem;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/feedslist/extend/AbsExtendView;->handleOptionMenu(Lcom/sec/android/socialhub/parent/IActivityDataHandler;Landroid/view/MenuItem;)V

    .line 35
    return-void
.end method
