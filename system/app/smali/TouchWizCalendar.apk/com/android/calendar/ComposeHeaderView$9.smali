.class Lcom/android/calendar/ComposeHeaderView$9;
.super Ljava/lang/Object;
.source "ComposeHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1855
    iput-object p1, p0, Lcom/android/calendar/ComposeHeaderView$9;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$9;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    #setter for: Lcom/android/calendar/ComposeHeaderView;->mSelectedToButtonId:I
    invoke-static {v0, v1}, Lcom/android/calendar/ComposeHeaderView;->access$1202(Lcom/android/calendar/ComposeHeaderView;I)I

    .line 1861
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$9;->this$0:Lcom/android/calendar/ComposeHeaderView;

    #getter for: Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/calendar/ComposeHeaderView;->access$900(Lcom/android/calendar/ComposeHeaderView;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1862
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$9;->this$0:Lcom/android/calendar/ComposeHeaderView;

    #getter for: Lcom/android/calendar/ComposeHeaderView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/calendar/ComposeHeaderView;->access$900(Lcom/android/calendar/ComposeHeaderView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->openContextMenu(Landroid/view/View;)V

    .line 1864
    :cond_1c
    return-void
.end method
