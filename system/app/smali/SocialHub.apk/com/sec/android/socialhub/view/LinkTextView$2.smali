.class Lcom/sec/android/socialhub/view/LinkTextView$2;
.super Ljava/lang/Object;
.source "LinkTextView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/view/LinkTextView;->onCreateContextMenu(Landroid/view/ContextMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/view/LinkTextView;

.field final synthetic val$end:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/LinkTextView;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/sec/android/socialhub/view/LinkTextView$2;->this$0:Lcom/sec/android/socialhub/view/LinkTextView;

    iput p2, p0, Lcom/sec/android/socialhub/view/LinkTextView$2;->val$start:I

    iput p3, p0, Lcom/sec/android/socialhub/view/LinkTextView$2;->val$end:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "arg0"

    .prologue
    .line 219
    iget-object v1, p0, Lcom/sec/android/socialhub/view/LinkTextView$2;->this$0:Lcom/sec/android/socialhub/view/LinkTextView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/LinkTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/socialhub/view/LinkTextView$2;->val$start:I

    iget v3, p0, Lcom/sec/android/socialhub/view/LinkTextView$2;->val$end:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/socialhub/view/LinkTextView$2;->this$0:Lcom/sec/android/socialhub/view/LinkTextView;

    #getter for: Lcom/sec/android/socialhub/view/LinkTextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/socialhub/view/LinkTextView;->access$100(Lcom/sec/android/socialhub/view/LinkTextView;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/sec/android/socialhub/util/SocialHubUtil;->copyClipboard(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 221
    const/4 v1, 0x0

    return v1
.end method
