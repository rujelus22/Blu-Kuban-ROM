.class Lcom/sec/android/widgetapp/apnews/activity/APNews$24;
.super Ljava/lang/Object;
.source "APNews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/apnews/activity/APNews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V
    .registers 2
    .parameter

    .prologue
    .line 1605
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$24;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 1607
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$24;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCheckBox:Landroid/widget/CheckedTextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1700(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->toggle()V

    .line 1609
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$24;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCheckBox:Landroid/widget/CheckedTextView;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1700(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-ne v1, v2, :cond_29

    .line 1611
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$24;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSet:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1800(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1612
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "checkbox_enable"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1613
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1621
    :goto_28
    return-void

    .line 1617
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :cond_29
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$24;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    #getter for: Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSet:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->access$1800(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1618
    .restart local v0       #edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "checkbox_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1619
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_28
.end method
