.class public Lcom/vlingo/client/car/CarHelpHowToUseScreen;
.super Lcom/vlingo/client/car/CarHelpScreen;
.source "CarHelpHowToUseScreen.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/vlingo/client/car/CarHelpScreen;-><init>()V

    return-void
.end method


# virtual methods
.method protected init()V
    .registers 2

    .prologue
    .line 20
    const v0, 0x7f03006a

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarHelpHowToUseScreen;->setContentView(I)V

    .line 21
    const v0, 0x7f09044d

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarHelpHowToUseScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarHelpHowToUseScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 22
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/vlingo/client/car/CarHelpScreen;->onCreate(Landroid/os/Bundle;)V

    .line 17
    return-void
.end method
