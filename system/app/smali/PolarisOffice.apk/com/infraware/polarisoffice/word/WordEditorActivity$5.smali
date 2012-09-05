.class Lcom/infraware/polarisoffice/word/WordEditorActivity$5;
.super Ljava/lang/Object;
.source "WordEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/word/WordEditorActivity;->OnInsertHyperlink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/word/WordEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/word/WordEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity$5;->this$0:Lcom/infraware/polarisoffice/word/WordEditorActivity;

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 592
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    .line 593
    .local v0, urlEditText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 594
    return-void
.end method
