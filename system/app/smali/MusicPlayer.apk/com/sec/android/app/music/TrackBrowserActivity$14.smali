.class Lcom/sec/android/app/music/TrackBrowserActivity$14;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/TrackBrowserActivity;->makeEditPlayListHeader(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

.field final synthetic val$edit:Landroid/widget/EditText;

.field final synthetic val$playlistId:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 951
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$14;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    iput-object p2, p0, Lcom/sec/android/app/music/TrackBrowserActivity$14;->val$edit:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/sec/android/app/music/TrackBrowserActivity$14;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$14;->val$playlistId:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    const v8, 0x7f090110

    const/4 v7, 0x0

    .line 955
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$14;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 956
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_47

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_47

    .line 958
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$14;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v4}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$500(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/widget/Toast;

    move-result-object v4

    if-nez v4, :cond_3d

    .line 959
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$14;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    iget-object v5, p0, Lcom/sec/android/app/music/TrackBrowserActivity$14;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity$14;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v6, v8}, Lcom/sec/android/app/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    #setter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v4, v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$502(Lcom/sec/android/app/music/TrackBrowserActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 964
    :goto_33
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$14;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v4}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$500(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 985
    :cond_3c
    :goto_3c
    return-void

    .line 962
    :cond_3d
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$14;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v4}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$500(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/Toast;->setText(I)V

    goto :goto_33

    .line 965
    :cond_47
    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3c

    .line 966
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$14;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #calls: Lcom/sec/android/app/music/TrackBrowserActivity;->idForplaylist(Ljava/lang/String;)I
    invoke-static {v4, v3}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$600(Lcom/sec/android/app/music/TrackBrowserActivity;Ljava/lang/String;)I

    move-result v2

    .line 967
    .local v2, id:I
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$14;->val$title:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8b

    if-ltz v2, :cond_8b

    .line 968
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$14;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 970
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$14;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const v5, 0x7f09010f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0900ed

    new-instance v6, Lcom/sec/android/app/music/TrackBrowserActivity$14$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$14$1;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity$14;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 978
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 979
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_3c

    .line 981
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_8b
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$14;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    iget-object v5, p0, Lcom/sec/android/app/music/TrackBrowserActivity$14;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity$14;->val$playlistId:Ljava/lang/String;

    #calls: Lcom/sec/android/app/music/TrackBrowserActivity;->savePlayList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v3, v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$700(Lcom/sec/android/app/music/TrackBrowserActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$14;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/music/TrackBrowserActivity;->finish()V

    goto :goto_3c
.end method
