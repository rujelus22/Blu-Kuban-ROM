.class public Lcom/vlingo/client/help/AboutScreen;
.super Lcom/vlingo/client/ui/VLActivity;
.source "AboutScreen.java"


# static fields
.field public static final SAMSUNG_REVISION_NUMBER:Ljava/lang/String; = "r1"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vlingo/client/ui/VLActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v3, 0x7f030023

    invoke-virtual {p0, v3}, Lcom/vlingo/client/help/AboutScreen;->setContentView(I)V

    .line 30
    const v3, 0x7f09027d

    invoke-virtual {p0, v3}, Lcom/vlingo/client/help/AboutScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vlingo/client/help/AboutScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    const v3, 0x7f0f008f

    invoke-virtual {p0, v3}, Lcom/vlingo/client/help/AboutScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 33
    .local v1, logoImage:Landroid/widget/ImageView;
    const v3, 0x7f020150

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    const v3, 0x7f0f0092

    invoke-virtual {p0, v3}, Lcom/vlingo/client/help/AboutScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 36
    .local v0, btn:Landroid/widget/Button;
    new-instance v3, Lcom/vlingo/client/help/AboutScreen$1;

    invoke-direct {v3, p0}, Lcom/vlingo/client/help/AboutScreen$1;-><init>(Lcom/vlingo/client/help/AboutScreen;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const v3, 0x7f0f0093

    invoke-virtual {p0, v3}, Lcom/vlingo/client/help/AboutScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 43
    .restart local v0       #btn:Landroid/widget/Button;
    new-instance v3, Lcom/vlingo/client/help/AboutScreen$2;

    invoke-direct {v3, p0}, Lcom/vlingo/client/help/AboutScreen$2;-><init>(Lcom/vlingo/client/help/AboutScreen;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v3, 0x7f0f0091

    invoke-virtual {p0, v3}, Lcom/vlingo/client/help/AboutScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 51
    .local v2, tv:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0902ba

    invoke-virtual {p0, v4}, Lcom/vlingo/client/help/AboutScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "r1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method
