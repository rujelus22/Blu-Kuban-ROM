.class Lcom/infraware/polarisoffice/word/WordEditorActivity$3;
.super Ljava/lang/Object;
.source "WordEditorActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


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
    iput-object p1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/word/WordEditorActivity;

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 12
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v1, 0x0

    .line 547
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/word/WordEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_nHyperMaxLength:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->access$1(Lcom/infraware/polarisoffice/word/WordEditorActivity;)I

    move-result v2

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    sub-int v4, p6, p5

    sub-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 548
    .local v0, nRest:I
    if-gez v0, :cond_13

    .line 556
    :cond_12
    :goto_12
    return-object v1

    .line 551
    :cond_13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v0, :cond_12

    .line 553
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/word/WordEditorActivity;

    #calls: Lcom/infraware/polarisoffice/word/WordEditorActivity;->onToastMessage()V
    invoke-static {v1}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->access$2(Lcom/infraware/polarisoffice/word/WordEditorActivity;)V

    .line 554
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_12
.end method
