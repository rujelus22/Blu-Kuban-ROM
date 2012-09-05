.class public Lcom/android/contacts/editor/PhotoActionPopup;
.super Ljava/lang/Object;
.source "PhotoActionPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/PhotoActionPopup$Listener;,
        Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;
    }
.end annotation


# static fields
.field private static mlistPopupWindow:Landroid/widget/ListPopupWindow;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method

.method static synthetic access$000()Landroid/widget/ListPopupWindow;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/contacts/editor/PhotoActionPopup;->mlistPopupWindow:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method public static createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/widget/ListPopupWindow;
    .registers 15
    .parameter "context"
    .parameter "anchorView"
    .parameter "listener"
    .parameter "mode"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .local v1, choices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;>;"
    if-eq p3, v7, :cond_e

    if-ne p3, v9, :cond_1d

    .line 55
    :cond_e
    new-instance v5, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const v6, 0x7f0a0172

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v10, v6}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_1d
    if-eq p3, v8, :cond_21

    if-ne p3, v7, :cond_30

    .line 60
    :cond_21
    new-instance v5, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const v6, 0x7f0a0052

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_30
    if-eqz p3, :cond_36

    if-eq p3, v7, :cond_36

    if-ne p3, v8, :cond_47

    .line 66
    :cond_36
    if-nez p3, :cond_af

    const v4, 0x7f0a017d

    .line 67
    .local v4, resId:I
    :goto_3b
    new-instance v5, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v9, v6}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v4           #resId:I
    :cond_47
    if-eqz p3, :cond_4d

    if-eq p3, v7, :cond_4d

    if-ne p3, v8, :cond_5e

    .line 73
    :cond_4d
    if-nez p3, :cond_b3

    const v4, 0x7f0a017f

    .line 74
    .restart local v4       #resId:I
    :goto_52
    new-instance v5, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v4           #resId:I
    :cond_5e
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x7f0400b7

    invoke-direct {v0, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 80
    .local v0, adapter:Landroid/widget/ListAdapter;
    new-instance v5, Landroid/widget/ListPopupWindow;

    invoke-direct {v5, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/android/contacts/editor/PhotoActionPopup;->mlistPopupWindow:Landroid/widget/ListPopupWindow;

    .line 81
    new-instance v2, Lcom/android/contacts/editor/PhotoActionPopup$1;

    invoke-direct {v2, v1, p2}, Lcom/android/contacts/editor/PhotoActionPopup$1;-><init>(Ljava/util/ArrayList;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V

    .line 113
    .local v2, clickListener:Landroid/widget/AdapterView$OnItemClickListener;
    sget-object v5, Lcom/android/contacts/editor/PhotoActionPopup;->mlistPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 114
    sget-object v5, Lcom/android/contacts/editor/PhotoActionPopup;->mlistPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    sget-object v5, Lcom/android/contacts/editor/PhotoActionPopup;->mlistPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    sget-object v5, Lcom/android/contacts/editor/PhotoActionPopup;->mlistPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 118
    sget-object v5, Lcom/android/contacts/editor/PhotoActionPopup;->mlistPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 119
    sget-object v5, Lcom/android/contacts/editor/PhotoActionPopup;->mlistPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5, v8}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 121
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 122
    .local v3, mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_ac

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 125
    :cond_ac
    sget-object v5, Lcom/android/contacts/editor/PhotoActionPopup;->mlistPopupWindow:Landroid/widget/ListPopupWindow;

    return-object v5

    .line 66
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #clickListener:Landroid/widget/AdapterView$OnItemClickListener;
    .end local v3           #mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_af
    const v4, 0x7f0a017e

    goto :goto_3b

    .line 73
    :cond_b3
    const v4, 0x7f0a0180

    goto :goto_52
.end method

.method public static getlistpopupwindow()Landroid/widget/ListPopupWindow;
    .registers 1

    .prologue
    .line 159
    sget-object v0, Lcom/android/contacts/editor/PhotoActionPopup;->mlistPopupWindow:Landroid/widget/ListPopupWindow;

    return-object v0
.end method
