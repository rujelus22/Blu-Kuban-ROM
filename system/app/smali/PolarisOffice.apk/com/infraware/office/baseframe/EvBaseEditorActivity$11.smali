.class Lcom/infraware/office/baseframe/EvBaseEditorActivity$11;
.super Ljava/lang/Object;
.source "EvBaseEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnFontSizeOthers(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$11;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    .line 1684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 15
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 1686
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$11;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFontSizeOthersDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$2(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1687
    .local v10, textString:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_40

    .line 1688
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1689
    .local v2, nfontSize:I
    if-lt v2, v11, :cond_40

    const/16 v0, 0x7f

    if-gt v2, v0, :cond_40

    .line 1690
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$11;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetFontAttInfo_Editor()Lcom/infraware/office/evengine/EV$FONT_INFO;

    move-result-object v9

    .line 1691
    .local v9, AttInfo:Lcom/infraware/office/evengine/EV$FONT_INFO;
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$11;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x0

    const/4 v3, 0x4

    iget v5, v9, Lcom/infraware/office/evengine/EV$FONT_INFO;->nFColor:I

    iget v6, v9, Lcom/infraware/office/evengine/EV$FONT_INFO;->nBColor:I

    move v7, v4

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvInterface;->ISetFontAttribute(Ljava/lang/String;IIIIIII)V

    .line 1694
    .end local v2           #nfontSize:I
    .end local v9           #AttInfo:Lcom/infraware/office/evengine/EV$FONT_INFO;
    :cond_40
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$11;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iput-boolean v11, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mBShowIMEAfterScreenChanged:Z

    .line 1695
    return-void
.end method
