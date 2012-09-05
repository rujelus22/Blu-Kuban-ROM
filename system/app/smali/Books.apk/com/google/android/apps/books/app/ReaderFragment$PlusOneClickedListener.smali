.class Lcom/google/android/apps/books/app/ReaderFragment$PlusOneClickedListener;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlusOneClickedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 4291
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneClickedListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/app/ReaderFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4291
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneClickedListener;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x6

    const/4 v0, 0x1

    .line 4294
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneClickedListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mLatestPlusOne:Lcom/google/android/plus1/PlusOne;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$8700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/plus1/PlusOne;

    move-result-object v1

    if-eqz v1, :cond_e4

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneClickedListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneStatus:Lcom/google/android/plus1/PlusOneStatus;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$9000(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/plus1/PlusOneStatus;

    move-result-object v1

    if-eqz v1, :cond_e4

    .line 4295
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneClickedListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneStatus:Lcom/google/android/plus1/PlusOneStatus;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$9000(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/plus1/PlusOneStatus;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/plus1/PlusOneStatus;->optedIntoPlusOne:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 4296
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneClickedListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->getPlusOneController()Lcom/google/android/plus1/PlusOneController;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$9300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/plus1/PlusOneController;

    move-result-object v1

    .line 4297
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneClickedListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mLatestPlusOne:Lcom/google/android/plus1/PlusOne;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$8700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/plus1/PlusOne;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/plus1/PlusOne;->value:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_73

    .line 4298
    :goto_34
    const-string v2, "ReaderFragment"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 4299
    const-string v2, "ReaderFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneClickedListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->getVolumeId()Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2900(Lcom/google/android/apps/books/app/ReaderFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " +1 to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4302
    :cond_65
    :try_start_65
    invoke-virtual {v1}, Lcom/google/android/plus1/PlusOneController;->edit()Lcom/google/android/plus1/PlusOneEditor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneClickedListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->getPlusOneUrl()Landroid/net/Uri;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2700(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/android/plus1/PlusOneEditor;->setPlusOne(Landroid/net/Uri;Z)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_72} :catch_75
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_65 .. :try_end_72} :catch_97

    .line 4332
    :cond_72
    :goto_72
    return-void

    .line 4297
    :cond_73
    const/4 v0, 0x0

    goto :goto_34

    .line 4303
    :catch_75
    move-exception v0

    .line 4304
    const-string v1, "ReaderFragment"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 4305
    const-string v1, "ReaderFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred setting +1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 4307
    :catch_97
    move-exception v0

    .line 4308
    const-string v1, "ReaderFragment"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 4309
    const-string v1, "ReaderFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred setting +1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 4314
    :cond_b9
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneClickedListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->isThemeNight()Z
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$9400(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v1

    if-eqz v1, :cond_e1

    const-class v1, Lcom/google/android/apps/books/app/TabletBooksPlusOneSignupActivityNight;

    .line 4318
    :goto_c3
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneClickedListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneClickedListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneClickedListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->getAccount()Landroid/accounts/Account;
    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$6700(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneClickedListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->getPlusOneUrl()Landroid/net/Uri;
    invoke-static {v5}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2700(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v3, v1, v4, v5}, Lcom/google/android/apps/books/app/BooksPlusOneSignupActivity;->makeIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_72

    .line 4314
    :cond_e1
    const-class v1, Lcom/google/android/apps/books/app/TabletBooksPlusOneSignupActivityDay;

    goto :goto_c3

    .line 4323
    :cond_e4
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneClickedListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneStatusException:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$9100(Lcom/google/android/apps/books/app/ReaderFragment;)Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 4326
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneClickedListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 4327
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneClickedListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2600(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v1

    .line 4328
    if-eqz v0, :cond_72

    if-eqz v1, :cond_72

    .line 4329
    const v2, 0x7f0e00da

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showSimpleDialog(Ljava/lang/CharSequence;)V

    goto/16 :goto_72
.end method
