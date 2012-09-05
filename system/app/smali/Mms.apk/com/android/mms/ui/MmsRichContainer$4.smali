.class Lcom/android/mms/ui/MmsRichContainer$4;
.super Ljava/lang/Object;
.source "MmsRichContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsRichContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsRichContainer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsRichContainer;)V
    .registers 2
    .parameter

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer$4;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1018
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_17

    .line 1020
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1021
    .local v1, page:Landroid/view/ViewGroup;
    if-nez v1, :cond_18

    .line 1022
    const-string v4, "Mms/MmsRichContainer"

    const-string v5, "page is null !!!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    .end local v1           #page:Landroid/view/ViewGroup;
    :cond_17
    :goto_17
    return v3

    .line 1025
    .restart local v1       #page:Landroid/view/ViewGroup;
    :cond_18
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1026
    .local v2, richContainer:Landroid/view/ViewGroup;
    if-nez v2, :cond_28

    .line 1027
    const-string v4, "Mms/MmsRichContainer"

    const-string v5, "richContainer is null !!!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 1030
    :cond_28
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1031
    .local v0, curPage:I
    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer$4;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    move v3, v4

    .line 1032
    goto :goto_17
.end method
