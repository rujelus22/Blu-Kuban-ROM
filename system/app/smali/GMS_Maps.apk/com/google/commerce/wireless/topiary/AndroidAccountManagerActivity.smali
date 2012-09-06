.class public Lcom/google/commerce/wireless/topiary/AndroidAccountManagerActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-static {p0}, Lcom/google/commerce/wireless/topiary/d;->a(Landroid/content/Context;)Lcom/google/commerce/wireless/topiary/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/AndroidAccountManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/commerce/wireless/topiary/d;->a(Landroid/content/Intent;)V

    .line 33
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/AndroidAccountManagerActivity;->finish()V

    .line 34
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/google/commerce/wireless/topiary/AndroidAccountManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    check-cast v0, Landroid/content/Intent;

    .line 25
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x10000001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 26
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/commerce/wireless/topiary/AndroidAccountManagerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 27
    return-void
.end method
