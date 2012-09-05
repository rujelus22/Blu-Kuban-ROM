.class Lcom/android/email/activity/MessageCompose$54;
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
    .line 13627
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$54;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 13631
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$54;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->misChangedFontColor:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$14500(Lcom/android/email/activity/MessageCompose;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$54;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mOldFontColor:I
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$14300(Lcom/android/email/activity/MessageCompose;)I

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$54;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mOldPicFontColor:I
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$14400(Lcom/android/email/activity/MessageCompose;)I

    move-result v0

    if-eqz v0, :cond_2d

    .line 13632
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$54;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$14200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ColorPickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$54;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mOldFontColor:I
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$14300(Lcom/android/email/activity/MessageCompose;)I

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$54;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mOldPicFontColor:I
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$14400(Lcom/android/email/activity/MessageCompose;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/ColorPickerDialog;->SetColor(II)V

    .line 13633
    :cond_2d
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$54;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$14200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ColorPickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->dismiss()V

    .line 13634
    return-void
.end method
