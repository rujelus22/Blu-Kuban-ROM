.class Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$3;
.super Ljava/lang/Object;
.source "SnsDisclaimer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

.field final synthetic val$buttonAgree:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;Landroid/widget/Button;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$3;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    iput-object p2, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$3;->val$buttonAgree:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$3;->this$0:Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;

    #getter for: Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mCheckboxAgree:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->access$100(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$3;->val$buttonAgree:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$3;->val$buttonAgree:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 193
    :goto_18
    return-void

    .line 190
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$3;->val$buttonAgree:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$3;->val$buttonAgree:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_18
.end method
