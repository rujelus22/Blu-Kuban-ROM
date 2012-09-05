.class Lcom/sec/android/socialhub/view/NoAccountView$1;
.super Ljava/lang/Object;
.source "NoAccountView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/view/NoAccountView;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/view/NoAccountView;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/NoAccountView;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/android/socialhub/view/NoAccountView$1;->this$0:Lcom/sec/android/socialhub/view/NoAccountView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/NoAccountView$1;->this$0:Lcom/sec/android/socialhub/view/NoAccountView;

    #getter for: Lcom/sec/android/socialhub/view/NoAccountView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/socialhub/view/NoAccountView;->access$000(Lcom/sec/android/socialhub/view/NoAccountView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/socialhub/view/NoAccountView$1;->this$0:Lcom/sec/android/socialhub/view/NoAccountView;

    #getter for: Lcom/sec/android/socialhub/view/NoAccountView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/socialhub/view/NoAccountView;->access$000(Lcom/sec/android/socialhub/view/NoAccountView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method
