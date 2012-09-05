.class final Lcom/sec/android/app/voicerecorder/widget/VRDialog$9;
.super Ljava/lang/Object;
.source "VRDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/widget/VRDialog;->createDefaultNameDialog(Landroid/app/Activity;Landroid/os/Handler;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$uiUpdateHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/EditText;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$9;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$9;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$9;->val$uiUpdateHandler:Landroid/os/Handler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x0

    .line 359
    const/4 v0, 0x0

    .line 361
    .local v0, defaultName:Ljava/lang/String;
    sput-boolean v5, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->isShown:Z

    .line 363
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$9;->val$activity:Landroid/app/Activity;

    const-string v4, "default_name"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 364
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 372
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$9;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4a

    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$9;->val$activity:Landroid/app/Activity;

    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 374
    :goto_2d
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$9;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_59

    .line 375
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$9;->val$activity:Landroid/app/Activity;

    const v4, 0x7f060018

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    .line 383
    :goto_49
    return-void

    .line 372
    :cond_4a
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$9;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 379
    :cond_59
    const-string v3, "default_name"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 380
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 381
    const-string v3, ""

    invoke-static {v5, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->setFixedNewFileName(ZLjava/lang/String;)V

    .line 382
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog$9;->val$uiUpdateHandler:Landroid/os/Handler;

    const/16 v4, 0xbeb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_49
.end method
