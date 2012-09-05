.class Lcom/samsung/swift/applet/AppletActivity$30;
.super Ljava/lang/Object;
.source "AppletActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/applet/AppletActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/applet/AppletActivity;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/swift/applet/AppletActivity;Landroid/widget/CheckBox;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1871
    iput-object p1, p0, Lcom/samsung/swift/applet/AppletActivity$30;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    iput-object p2, p0, Lcom/samsung/swift/applet/AppletActivity$30;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 1874
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/swift/applet/AppletActivity$30;->this$0:Lcom/samsung/swift/applet/AppletActivity;

    #getter for: Lcom/samsung/swift/applet/AppletActivity;->doNotAskAgain:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/swift/applet/AppletActivity;->access$3400(Lcom/samsung/swift/applet/AppletActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/swift/applet/AppletActivity$30;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1875
    return-void
.end method
