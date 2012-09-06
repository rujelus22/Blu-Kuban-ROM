.class Lcom/android/email/activity/MessageCompose$2;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->setFocusShifter(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$2;->this$0:Lcom/android/email/activity/MessageCompose;

    iput-object p2, p0, Lcom/android/email/activity/MessageCompose$2;->val$target:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$2;->val$target:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 628
    return-void
.end method
