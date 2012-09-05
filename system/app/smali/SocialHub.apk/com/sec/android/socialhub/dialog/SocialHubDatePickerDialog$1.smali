.class Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog$1;
.super Ljava/lang/Object;
.source "SocialHubDatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->setButtonListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog$1;->this$0:Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog$1;->this$0:Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->dismiss()V

    .line 49
    return-void
.end method
