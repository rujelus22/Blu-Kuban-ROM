.class Lcom/samsung/wimax/napid/WorkMode$3;
.super Ljava/lang/Object;
.source "WorkMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/WorkMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/WorkMode;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/WorkMode;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/wimax/napid/WorkMode$3;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "arg0"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 111
    iget-object v2, p0, Lcom/samsung/wimax/napid/WorkMode$3;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    iget-object v2, v2, Lcom/samsung/wimax/napid/WorkMode;->TAG:Ljava/lang/String;

    const-string v3, "OK Pressed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, val:I
    iget-object v2, p0, Lcom/samsung/wimax/napid/WorkMode$3;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    iget-object v2, v2, Lcom/samsung/wimax/napid/WorkMode;->wmEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, editVal:Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/wimax/napid/WorkMode$3;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    iget-object v2, v2, Lcom/samsung/wimax/napid/WorkMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "workmode value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_58

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_58

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_58

    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_f0

    .line 117
    :cond_58
    iget-object v2, p0, Lcom/samsung/wimax/napid/WorkMode$3;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    iget-object v2, v2, Lcom/samsung/wimax/napid/WorkMode;->TAG:Ljava/lang/String;

    const-string v3, "Edit Text Success ****"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v2, p0, Lcom/samsung/wimax/napid/WorkMode$3;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    iget-object v2, v2, Lcom/samsung/wimax/napid/WorkMode;->wmEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 127
    iget-object v2, p0, Lcom/samsung/wimax/napid/WorkMode$3;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    iget-object v2, v2, Lcom/samsung/wimax/napid/WorkMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "integer value of workmode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v2, p0, Lcom/samsung/wimax/napid/WorkMode$3;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    iget-object v2, v2, Lcom/samsung/wimax/napid/WorkMode;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2, v1}, Landroid/net/fourG/wimax/Wimax4GManager;->setWorkModeState(I)Z

    move-result v2

    if-eqz v2, :cond_108

    .line 130
    iget-object v2, p0, Lcom/samsung/wimax/napid/WorkMode$3;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    invoke-virtual {v2, v5}, Lcom/samsung/wimax/napid/WorkMode;->dismissDialog(I)V

    .line 131
    iget-object v2, p0, Lcom/samsung/wimax/napid/WorkMode$3;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    invoke-virtual {v2}, Lcom/samsung/wimax/napid/WorkMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Work Mode Set success"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 136
    :goto_ad
    iget-object v2, p0, Lcom/samsung/wimax/napid/WorkMode$3;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    iget-object v2, v2, Lcom/samsung/wimax/napid/WorkMode;->wmEditText:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v2, p0, Lcom/samsung/wimax/napid/WorkMode$3;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    iget-object v3, p0, Lcom/samsung/wimax/napid/WorkMode$3;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    iget-object v3, v3, Lcom/samsung/wimax/napid/WorkMode;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/Wimax4GManager;->getWorkModeState()I

    move-result v3

    iput v3, v2, Lcom/samsung/wimax/napid/WorkMode;->workModeState:I

    .line 138
    iget-object v2, p0, Lcom/samsung/wimax/napid/WorkMode$3;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    iget-object v2, v2, Lcom/samsung/wimax/napid/WorkMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "********** WorkMode from Wimax4GManager ********** :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/wimax/napid/WorkMode$3;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    iget v4, v4, Lcom/samsung/wimax/napid/WorkMode;->workModeState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Lcom/samsung/wimax/napid/WorkMode$3;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    iget-object v2, v2, Lcom/samsung/wimax/napid/WorkMode;->workModeText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/wimax/napid/WorkMode$3;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    iget v3, v3, Lcom/samsung/wimax/napid/WorkMode;->workModeState:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :goto_ef
    return-void

    .line 122
    :cond_f0
    iget-object v2, p0, Lcom/samsung/wimax/napid/WorkMode$3;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    iget-object v2, v2, Lcom/samsung/wimax/napid/WorkMode;->TAG:Ljava/lang/String;

    const-string v3, "Edit Text Failure Warning ****"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v2, p0, Lcom/samsung/wimax/napid/WorkMode$3;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    iget-object v2, v2, Lcom/samsung/wimax/napid/WorkMode;->wmEditText:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, p0, Lcom/samsung/wimax/napid/WorkMode$3;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    invoke-virtual {v2, v6}, Lcom/samsung/wimax/napid/WorkMode;->showDialog(I)V

    goto :goto_ef

    .line 133
    :cond_108
    iget-object v2, p0, Lcom/samsung/wimax/napid/WorkMode$3;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    invoke-virtual {v2, v5}, Lcom/samsung/wimax/napid/WorkMode;->dismissDialog(I)V

    .line 134
    iget-object v2, p0, Lcom/samsung/wimax/napid/WorkMode$3;->this$0:Lcom/samsung/wimax/napid/WorkMode;

    invoke-virtual {v2}, Lcom/samsung/wimax/napid/WorkMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Work Mode Set failed"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_ad
.end method
