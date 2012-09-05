.class Lcom/sec/android/app/music/TrackBrowserActivity$12;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/TrackBrowserActivity;->makeCreatePlayListHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

.field final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 815
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$12;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    iput-object p2, p0, Lcom/sec/android/app/music/TrackBrowserActivity$12;->val$edit:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter

    .prologue
    const v3, 0x7f090110

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$12;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 820
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_48

    .line 822
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$12;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$500(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_3e

    .line 823
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$12;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$12;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity$12;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$502(Lcom/sec/android/app/music/TrackBrowserActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 828
    :goto_34
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$12;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$500(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 868
    :cond_3d
    :goto_3d
    return-void

    .line 826
    :cond_3e
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$12;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$500(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setText(I)V

    goto :goto_34

    .line 829
    :cond_48
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3d

    .line 830
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$12;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #calls: Lcom/sec/android/app/music/TrackBrowserActivity;->idForplaylist(Ljava/lang/String;)I
    invoke-static {v1, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$600(Lcom/sec/android/app/music/TrackBrowserActivity;Ljava/lang/String;)I

    move-result v1

    .line 831
    if-ltz v1, :cond_83

    .line 832
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity$12;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 834
    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity$12;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const v3, 0x7f09010f

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/music/TrackBrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0900ed

    new-instance v3, Lcom/sec/android/app/music/TrackBrowserActivity$12$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$12$1;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity$12;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 842
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 843
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_3d

    .line 845
    :cond_83
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$12;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity$12;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    #calls: Lcom/sec/android/app/music/TrackBrowserActivity;->savePlayList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0, v3}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$700(Lcom/sec/android/app/music/TrackBrowserActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$12;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #calls: Lcom/sec/android/app/music/TrackBrowserActivity;->idForplaylist(Ljava/lang/String;)I
    invoke-static {v1, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$600(Lcom/sec/android/app/music/TrackBrowserActivity;Ljava/lang/String;)I

    move-result v1

    .line 847
    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity$12;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 848
    const-string v3, "doNotLaunchOtherActivity"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 849
    if-nez v2, :cond_c9

    .line 852
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/music/TrackBrowserActivity$12;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const-class v4, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 854
    const-string v3, "tabFrom"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 856
    const-string v3, "keyword"

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 857
    const-string v3, "headTitle"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 858
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$12;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 860
    :cond_c9
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$12;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mMode:I
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$800(Lcom/sec/android/app/music/TrackBrowserActivity;)I

    move-result v0

    if-ne v0, v6, :cond_e1

    .line 862
    new-instance v0, Landroid/content/Intent;

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 863
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$12;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 865
    :cond_e1
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$12;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->finish()V

    goto/16 :goto_3d
.end method
