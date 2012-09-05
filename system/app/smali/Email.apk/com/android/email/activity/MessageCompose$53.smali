.class Lcom/android/email/activity/MessageCompose$53;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->createColorPickerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .registers 2
    .parameter

    .prologue
    .line 13604
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$53;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 13608
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$53;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$14200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ColorPickerDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/ColorPickerDialog;->getSelectedColor()I

    move-result v1

    if-eqz v1, :cond_4c

    .line 13609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$53;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$14200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ColorPickerDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/ColorPickerDialog;->getSelectedColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13613
    .local v0, test:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$53;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/HtmlComposerView;->changeFontColorForSelection(Ljava/lang/String;)V

    .line 13615
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$53;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$53;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$14200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ColorPickerDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/ColorPickerDialog;->getSelectedColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose;->changeToolBarFontColor(I)V

    .line 13618
    .end local v0           #test:Ljava/lang/String;
    :cond_4c
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$53;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$53;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$14200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ColorPickerDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/ColorPickerDialog;->getSelectedColor()I

    move-result v2

    #setter for: Lcom/android/email/activity/MessageCompose;->mOldFontColor:I
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageCompose;->access$14302(Lcom/android/email/activity/MessageCompose;I)I

    .line 13619
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$53;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$53;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$14200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ColorPickerDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/ColorPickerDialog;->GetCurColorIdx()I

    move-result v2

    #setter for: Lcom/android/email/activity/MessageCompose;->mOldPicFontColor:I
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageCompose;->access$14402(Lcom/android/email/activity/MessageCompose;I)I

    .line 13620
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$53;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v2, 0x1

    #setter for: Lcom/android/email/activity/MessageCompose;->misChangedFontColor:Z
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageCompose;->access$14502(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 13621
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$53;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$14200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ColorPickerDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/ColorPickerDialog;->dismiss()V

    .line 13622
    return-void
.end method
