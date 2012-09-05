.class public Lcom/infraware/common/account/AccountPreference;
.super Landroid/preference/Preference;
.source "AccountPreference.java"


# static fields
.field static final SERVICE_TYPE_BOX:I = 0x2

.field static final SERVICE_TYPE_GOOGLE:I = 0x1


# instance fields
.field public mAccount:Lcom/infraware/common/account/AccountInfo;

.field private mImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/infraware/common/account/AccountInfo;)V
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v1, p0, Lcom/infraware/common/account/AccountPreference;->mImage:Landroid/widget/ImageView;

    .line 18
    iput-object v1, p0, Lcom/infraware/common/account/AccountPreference;->mAccount:Lcom/infraware/common/account/AccountInfo;

    .line 24
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 25
    .local v0, osVer:Ljava/lang/String;
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 26
    const v1, 0x7f030045

    invoke-virtual {p0, v1}, Lcom/infraware/common/account/AccountPreference;->setLayoutResource(I)V

    .line 28
    :cond_18
    iput-object p2, p0, Lcom/infraware/common/account/AccountPreference;->mAccount:Lcom/infraware/common/account/AccountInfo;

    .line 29
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 33
    iget-object v1, p0, Lcom/infraware/common/account/AccountPreference;->mAccount:Lcom/infraware/common/account/AccountInfo;

    invoke-virtual {v1}, Lcom/infraware/common/account/AccountInfo;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/infraware/common/account/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 35
    .local v0, osVer:Ljava/lang/String;
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 37
    const v1, 0x7f0c019c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/infraware/common/account/AccountPreference;->mImage:Landroid/widget/ImageView;

    .line 39
    iget-object v1, p0, Lcom/infraware/common/account/AccountPreference;->mAccount:Lcom/infraware/common/account/AccountInfo;

    invoke-virtual {v1}, Lcom/infraware/common/account/AccountInfo;->getService()I

    move-result v1

    packed-switch v1, :pswitch_data_3e

    .line 49
    :cond_27
    :goto_27
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 50
    return-void

    .line 42
    :pswitch_2b
    iget-object v1, p0, Lcom/infraware/common/account/AccountPreference;->mImage:Landroid/widget/ImageView;

    const v2, 0x7f0200ba

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_27

    .line 45
    :pswitch_34
    iget-object v1, p0, Lcom/infraware/common/account/AccountPreference;->mImage:Landroid/widget/ImageView;

    const v2, 0x7f0200ad

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_27

    .line 39
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_34
    .end packed-switch
.end method
