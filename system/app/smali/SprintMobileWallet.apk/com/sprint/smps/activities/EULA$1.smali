.class Lcom/sprint/smps/activities/EULA$1;
.super Ljava/lang/Object;
.source "EULA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/smps/activities/EULA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/EULA;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/EULA;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/EULA$1;->this$0:Lcom/sprint/smps/activities/EULA;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const v1, 0x7f080028

    const/4 v3, 0x0

    .line 40
    invoke-static {}, Lcom/sprint/smps/activities/EULA;->access$0()Lcom/sprint/smps/pojo/TermsAndConditions;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 41
    iget-object v0, p0, Lcom/sprint/smps/activities/EULA$1;->this$0:Lcom/sprint/smps/activities/EULA;

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/EULA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/sprint/smps/activities/EULA;->access$0()Lcom/sprint/smps/pojo/TermsAndConditions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sprint/smps/pojo/TermsAndConditions;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :goto_1d
    iget-object v0, p0, Lcom/sprint/smps/activities/EULA$1;->this$0:Lcom/sprint/smps/activities/EULA;

    invoke-virtual {v0, v3}, Lcom/sprint/smps/activities/EULA;->removeDialog(I)V

    .line 49
    return-void

    .line 44
    :cond_23
    iget-object v0, p0, Lcom/sprint/smps/activities/EULA$1;->this$0:Lcom/sprint/smps/activities/EULA;

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/EULA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprint/smps/activities/EULA$1;->this$0:Lcom/sprint/smps/activities/EULA;

    const v2, 0x7f060016

    invoke-virtual {v1, v2}, Lcom/sprint/smps/activities/EULA;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/sprint/smps/activities/EULA$1;->this$0:Lcom/sprint/smps/activities/EULA;

    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/EULA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_1d
.end method
