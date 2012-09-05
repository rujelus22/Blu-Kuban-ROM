.class Lcom/android/calendar/ComposeHeaderView$8;
.super Ljava/lang/Object;
.source "ComposeHeaderView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ComposeHeaderView;->addRecipientQuickly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ComposeHeaderView;


# direct methods
.method constructor <init>(Lcom/android/calendar/ComposeHeaderView;)V
    .registers 2
    .parameter

    .prologue
    .line 1838
    iput-object p1, p0, Lcom/android/calendar/ComposeHeaderView$8;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .parameter "arg0"

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$8;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    #setter for: Lcom/android/calendar/ComposeHeaderView;->mSelectedToButtonId:I
    invoke-static {v0, v1}, Lcom/android/calendar/ComposeHeaderView;->access$1202(Lcom/android/calendar/ComposeHeaderView;I)I

    .line 1846
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$8;->this$0:Lcom/android/calendar/ComposeHeaderView;

    #getter for: Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/calendar/ComposeHeaderView;->access$900(Lcom/android/calendar/ComposeHeaderView;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1847
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$8;->this$0:Lcom/android/calendar/ComposeHeaderView;

    #getter for: Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/calendar/ComposeHeaderView;->access$900(Lcom/android/calendar/ComposeHeaderView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->openContextMenu(Landroid/view/View;)V

    .line 1849
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method
