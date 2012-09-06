.class Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog;
.super Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
.source "HangoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MinorWarningDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog;->this$0:Lcom/google/android/apps/plus/hangout/HangoutActivity;

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;-><init>()V

    .line 135
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog;->getDialogContext()Landroid/content/Context;

    move-result-object v1

    .line 141
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 142
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f03004b

    invoke-virtual {v4, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 143
    .local v2, dialogView:Landroid/view/View;
    const v7, 0x7f0900f1

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 144
    .local v3, dontShow:Landroid/widget/CheckBox;
    const v7, 0x7f0900f0

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 148
    .local v6, messageView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08036c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, message:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog;->this$0:Lcom/google/android/apps/plus/hangout/HangoutActivity;

    invoke-static {v5, v7, v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1080027

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f08036b

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f08036a

    new-instance v9, Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog$1;

    invoke-direct {v9, p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog$1;-><init>(Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 172
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7
.end method
