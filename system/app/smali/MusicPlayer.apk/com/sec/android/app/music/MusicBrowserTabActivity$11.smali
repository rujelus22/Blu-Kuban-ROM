.class Lcom/sec/android/app/music/MusicBrowserTabActivity$11;
.super Ljava/lang/Object;
.source "MusicBrowserTabActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/MusicBrowserTabActivity;->createSweepInteractionDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

.field final synthetic val$body:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$11;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    iput-object p2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$11;->val$body:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 621
    iget-object v3, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$11;->val$body:Landroid/view/View;

    const v4, 0x7f0c00bb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 622
    .local v0, helpAgain:Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$11;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    const-string v4, "tip_dialog_pref_music"

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 624
    .local v1, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v3, "show_flag"

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_21

    const/4 v2, 0x1

    :cond_21
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 625
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 626
    iget-object v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$11;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    const/4 v3, 0x0

    #setter for: Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSweepInteractionDialog:Landroid/app/Dialog;
    invoke-static {v2, v3}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->access$1602(Lcom/sec/android/app/music/MusicBrowserTabActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 627
    iget-object v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$11;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->removeDialog(I)V

    .line 628
    return-void
.end method
