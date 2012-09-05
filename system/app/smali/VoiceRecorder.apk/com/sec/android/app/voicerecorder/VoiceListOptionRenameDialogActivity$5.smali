.class Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$5;
.super Ljava/lang/Object;
.source "VoiceListOptionRenameDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    .line 238
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, destFileName:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mFileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$200(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_32

    .line 250
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->ntoast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$300(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 290
    :goto_31
    return-void

    .line 255
    :cond_32
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-gtz v3, :cond_42

    .line 257
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mtoast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$400(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_31

    .line 260
    :cond_42
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mFile:Ljava/io/File;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$500(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_90

    .line 261
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mFile:Ljava/io/File;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$500(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 262
    .local v2, index:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_90

    .line 263
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mFile:Ljava/io/File;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$500(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mFile:Ljava/io/File;
    invoke-static {v4}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$500(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mFile:Ljava/io/File;
    invoke-static {v5}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$500(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    .end local v2           #index:I
    :cond_90
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mFile:Ljava/io/File;
    invoke-static {v4}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$500(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mFile:Ljava/io/File;
    invoke-static {v5}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$500(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, destFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf0

    if-le v3, v4, :cond_eb

    .line 274
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    const v5, 0x7f060030

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mtoast:Landroid/widget/Toast;
    invoke-static {v3, v4}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$402(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 276
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mtoast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$400(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_31

    .line 278
    :cond_eb
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_110

    .line 280
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->mFileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$200(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_110

    .line 282
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->ntoast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->access$300(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_31

    .line 286
    :cond_110
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->renameFile(Ljava/io/File;)V

    .line 288
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;->finish()V

    goto/16 :goto_31
.end method
