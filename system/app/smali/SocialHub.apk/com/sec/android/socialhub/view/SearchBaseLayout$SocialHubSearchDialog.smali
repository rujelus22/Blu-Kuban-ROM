.class public Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;
.super Lcom/sec/android/socialhub/dialog/AbsListDialog;
.source "SearchBaseLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/view/SearchBaseLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SocialHubSearchDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$SearchAdapter;
    }
.end annotation


# instance fields
.field protected mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mDisplayArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/view/SearchBaseLayout;Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .parameter
    .parameter "context"
    .parameter "object"
    .parameter "icon"
    .parameter "title"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;>;"
    const/4 v0, 0x0

    .line 343
    iput-object p1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    .line 344
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/android/socialhub/dialog/AbsListDialog;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 332
    iput-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->mArrayList:Ljava/util/ArrayList;

    .line 334
    iput-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->mDisplayArray:Ljava/util/ArrayList;

    .line 346
    if-nez p6, :cond_d

    .line 351
    :goto_c
    return-void

    .line 349
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->mDisplayArray:Ljava/util/ArrayList;

    .line 350
    invoke-virtual {p0, p6}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->changeSearchArray(Ljava/util/ArrayList;)V

    goto :goto_c
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public changeSearchArray(Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;>;"
    iput-object p1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->mArrayList:Ljava/util/ArrayList;

    .line 356
    iget-object v3, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->mDisplayArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 358
    iget-object v3, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    .line 360
    .local v2, model:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 361
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "text"

    invoke-virtual {v2}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;->getTextResource()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v3, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->mDisplayArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 364
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #model:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    :cond_31
    return-void
.end method

.method public getDialogAdapter(Ljava/lang/Object;)Landroid/widget/ListAdapter;
    .registers 6
    .parameter "object"

    .prologue
    .line 369
    new-instance v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$SearchAdapter;

    iget-object v1, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f030037

    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->getList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$SearchAdapter;-><init>(Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;Landroid/content/Context;ILjava/util/ArrayList;)V

    return-object v0
.end method

.method public getList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->mDisplayArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onHandleCommand(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "view"
    .parameter "pos"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 380
    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iput p2, v2, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSelectedPos:I

    .line 382
    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->mArrayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget v3, v3, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSelectedPos:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    .line 384
    .local v1, model:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;->getTextResource()I

    move-result v2

    const v3, 0x7f0800e2

    if-ne v2, v3, :cond_4c

    .line 390
    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v2, v2, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 396
    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v2, v2, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mIMEmanager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v3, v3, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 398
    new-instance v0, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;

    iget-object v2, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;-><init>(Landroid/content/Context;)V

    .line 400
    .local v0, dialog:Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;
    new-instance v2, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$1;

    invoke-direct {v2, p0}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog$1;-><init>(Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->setOnDateChangedListener(Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog$OnDateChangedListener;)V

    .line 421
    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;->show()V

    .line 441
    .end local v0           #dialog:Lcom/sec/android/socialhub/dialog/SocialHubDatePickerDialog;
    :goto_4b
    return-void

    .line 429
    :cond_4c
    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v2, v2, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 430
    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v3, v2, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->mArrayList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget v4, v4, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSelectedPos:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    invoke-virtual {v3, v2}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->setSearchModel(Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;)V

    .line 431
    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v2, v2, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v2, v2, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 434
    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    invoke-virtual {v2, v5}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->showInputMethod(Z)V

    .line 435
    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v3, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v3, v3, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->invokeSearchText(Ljava/lang/String;)V

    .line 437
    const-string v3, "SocialHubSearchDialog"

    const-string v4, "onHandleCommand()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Field is changed. ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SocialHubSearchDialog;->mDisplayArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v7, "text"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4b
.end method
