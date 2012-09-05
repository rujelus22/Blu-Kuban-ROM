.class Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeOther$2;
.super Ljava/lang/Object;
.source "ViewTypeOther.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeOther;->drawAttachment(Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeOther;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeOther;)V
    .registers 2
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeOther$2;->this$0:Lcom/sec/android/socialhub/feedslist/viewtype/ViewTypeOther;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .parameter "arg0"

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method
