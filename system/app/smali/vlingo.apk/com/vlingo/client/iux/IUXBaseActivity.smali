.class abstract Lcom/vlingo/client/iux/IUXBaseActivity;
.super Lcom/vlingo/client/ui/VLActivity;
.source "IUXBaseActivity.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/vlingo/client/ui/VLActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected IUXinit()V
    .registers 4

    .prologue
    .line 17
    const v1, 0x7f0f0079

    invoke-virtual {p0, v1}, Lcom/vlingo/client/iux/IUXBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 18
    .local v0, btn:Landroid/widget/Button;
    new-instance v1, Lcom/vlingo/client/iux/IUXBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/iux/IUXBaseActivity$1;-><init>(Lcom/vlingo/client/iux/IUXBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const v1, 0x7f0f007a

    invoke-virtual {p0, v1}, Lcom/vlingo/client/iux/IUXBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 26
    .restart local v0       #btn:Landroid/widget/Button;
    new-instance v1, Lcom/vlingo/client/iux/IUXBaseActivity$2;

    invoke-direct {v1, p0}, Lcom/vlingo/client/iux/IUXBaseActivity$2;-><init>(Lcom/vlingo/client/iux/IUXBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/vlingo/client/iux/IUXBaseActivity;->overridePendingTransition(II)V

    .line 33
    return-void
.end method
