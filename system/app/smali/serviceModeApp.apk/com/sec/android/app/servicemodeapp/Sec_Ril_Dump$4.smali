.class Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$4;
.super Ljava/lang/Object;
.source "Sec_Ril_Dump.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->showNvPassDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

.field final synthetic val$passwdText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 865
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$4;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    iput-object p2, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$4;->val$passwdText:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 868
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$4;->val$passwdText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 869
    .local v0, inputPasswd:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump$4;->this$0:Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;

    #calls: Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->checkNVpassword(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;->access$3500(Lcom/sec/android/app/servicemodeapp/Sec_Ril_Dump;Ljava/lang/String;)V

    .line 870
    return-void
.end method
