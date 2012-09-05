.class Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$8;
.super Ljava/lang/Object;
.source "BlackListNumber.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->alertdialogSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)V
    .registers 2
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$8;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 608
    packed-switch p2, :pswitch_data_34

    .line 622
    :goto_4
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$8;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$000(Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$8;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 624
    return-void

    .line 610
    :pswitch_17
    new-instance v0, Landroid/content/Intent;

    const-string v1, "contacts.com.sec.android.app.dialertab.calllog.LogsSelectActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "OPTION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 613
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$8;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    .line 616
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_29
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber$8;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;

    invoke-static {}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->access$1100()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/callsetting/allcalls/BlackListNumber;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    .line 608
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_17
        :pswitch_29
    .end packed-switch
.end method
