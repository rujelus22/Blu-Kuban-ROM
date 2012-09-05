.class public Lcom/vlingo/client/help/VlingoSecretsScreen;
.super Landroid/app/Activity;
.source "VlingoSecretsScreen.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/VlingoSecretsScreen;->setContentView(I)V

    .line 19
    const v0, 0x7f090293

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/VlingoSecretsScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/VlingoSecretsScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    return-void
.end method
