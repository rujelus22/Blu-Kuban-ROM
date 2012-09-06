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
    .line 118
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/BlockPersonDialog$1;->this$0:Lcom/google/android/apps/plus/fragments/BlockPersonDialog;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/BlockPersonDialog$1;->val$url:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "widget"

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/BlockPersonDialog$1;->val$url:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 122
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/BlockPersonDialog$1;->this$0:Lcom/google/android/apps/plus/fragments/BlockPersonDialog;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/BlockPersonDialog;->startActivity(Landroid/content/Intent;)V

    .line 124
    return-void
.end method
