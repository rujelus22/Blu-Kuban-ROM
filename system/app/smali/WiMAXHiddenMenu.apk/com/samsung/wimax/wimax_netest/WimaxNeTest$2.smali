.class Lcom/samsung/wimax/wimax_netest/WimaxNeTest$2;
.super Ljava/lang/Object;
.source "WimaxNeTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/wimax_netest/WimaxNeTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/wimax_netest/WimaxNeTest;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/wimax_netest/WimaxNeTest;)V
    .registers 2
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest$2;->this$0:Lcom/samsung/wimax/wimax_netest/WimaxNeTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "arg0"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 155
    iget-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest$2;->this$0:Lcom/samsung/wimax/wimax_netest/WimaxNeTest;

    iget-object v1, v1, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->is4GEnabled()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 157
    iget-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest$2;->this$0:Lcom/samsung/wimax/wimax_netest/WimaxNeTest;

    iget-object v1, v1, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->TAG:Ljava/lang/String;

    const-string v2, "!!!!!!!!!wimaxenable is false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest$2;->this$0:Lcom/samsung/wimax/wimax_netest/WimaxNeTest;

    iget-object v1, v1, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1, v4}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 166
    :goto_1c
    iget-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest$2;->this$0:Lcom/samsung/wimax/wimax_netest/WimaxNeTest;

    iget-object v1, v1, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->displayVal:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 167
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest$2;->this$0:Lcom/samsung/wimax/wimax_netest/WimaxNeTest;

    iget-object v1, v1, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->PrefName:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    iget-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest$2;->this$0:Lcom/samsung/wimax/wimax_netest/WimaxNeTest;

    iget-object v1, v1, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mStateText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest$2;->this$0:Lcom/samsung/wimax/wimax_netest/WimaxNeTest;

    iget-object v1, v1, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWimaxOn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 173
    return-void

    .line 162
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3f
    iget-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest$2;->this$0:Lcom/samsung/wimax/wimax_netest/WimaxNeTest;

    iget-object v1, v1, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->TAG:Ljava/lang/String;

    const-string v2, "!!!!!!!!!!!!!!!wimaxenable is true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest$2;->this$0:Lcom/samsung/wimax/wimax_netest/WimaxNeTest;

    iget-object v1, v1, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1, v3}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 164
    iget-object v1, p0, Lcom/samsung/wimax/wimax_netest/WimaxNeTest$2;->this$0:Lcom/samsung/wimax/wimax_netest/WimaxNeTest;

    iget-object v1, v1, Lcom/samsung/wimax/wimax_netest/WimaxNeTest;->mWimax4GManager:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1, v4}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    goto :goto_1c
.end method
