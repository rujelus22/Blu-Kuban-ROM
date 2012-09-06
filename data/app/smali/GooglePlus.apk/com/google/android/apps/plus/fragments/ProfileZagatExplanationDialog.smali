.class public Lcom/google/android/apps/plus/fragments/ProfileZagatExplanationDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ProfileZagatExplanationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ProfileZagatExplanationDialog;->dismiss()V

    .line 40
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstance"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/4 v0, 0x1

    const v1, 0x7f0f006b

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/ProfileZagatExplanationDialog;->setStyle(II)V

    .line 26
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 31
    const v2, 0x7f0300f9

    invoke-virtual {p1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 32
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0902a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 33
    .local v0, okButton:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-object v1
.end method
