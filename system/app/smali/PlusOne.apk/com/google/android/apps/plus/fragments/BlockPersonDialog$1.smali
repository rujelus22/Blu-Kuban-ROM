.class Lcom/google/android/apps/plus/fragments/BlockPersonDialog$1;
.super Landroid/text/style/ClickableSpan;
.source "BlockPersonDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/BlockPersonDialog;->configureExplanationLink(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/BlockPersonDialog;

.field final synthetic val$url:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/BlockPersonDialog;Landroid/net/Uri;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/BlockPersonDialog$1;->this$0:Lcom/google/android/apps/plus/fragments/BlockPersonDialog;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/BlockPersonDialog$1;->val$url:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "widget"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/BlockPersonDialog$1;->this$0:Lcom/google/android/apps/plus/fragments/BlockPersonDialog;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/BlockPersonDialog$1;->val$url:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method
