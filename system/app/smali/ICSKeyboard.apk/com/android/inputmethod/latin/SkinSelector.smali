.class public Lcom/android/inputmethod/latin/SkinSelector;
.super Landroid/app/ListActivity;
.source "SkinSelector.java"


# instance fields
.field goToMarket:Ljava/lang/String;

.field names:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 19
    const-string v0, "Download more skins"

    iput-object v0, p0, Lcom/android/inputmethod/latin/SkinSelector;->goToMarket:Ljava/lang/String;

    .line 20
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Basic"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 21
    const-string v2, "Basic (High Contrast)"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 22
    const-string v2, "Stone (bold)"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 23
    const-string v2, "Stone (normal)"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 24
    const-string v2, "Gingerbread"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 25
    const-string v2, "IceCreamSandwich"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/inputmethod/latin/SkinSelector;->names:[Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {}, Lcom/android/inputmethod/latin/LoadSkins;->resetBuildersCache()V

    .line 33
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SkinSelector;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/inputmethod/latin/LoadSkins;->getAllBuilders(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 34
    invoke-static {}, Lcom/android/inputmethod/latin/LoadSkins;->getSkinsNames()Ljava/util/ArrayList;

    move-result-object v0

    .line 35
    .local v0, Skins:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    iget-object v2, p0, Lcom/android/inputmethod/latin/SkinSelector;->names:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_28

    .line 39
    iget-object v2, p0, Lcom/android/inputmethod/latin/SkinSelector;->goToMarket:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 43
    const v3, 0x1090003

    invoke-direct {v2, p0, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 42
    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/SkinSelector;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    return-void

    .line 37
    :cond_28
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/inputmethod/latin/SkinSelector;->names:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/inputmethod/latin/SkinSelector;->names:[Ljava/lang/String;

    array-length v4, v4

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 15
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 48
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 50
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SkinSelector;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    .line 51
    .local v5, o:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, keyword:Ljava/lang/String;
    const/4 v0, 0x0

    .line 53
    .local v0, InternalSkinSelected:Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 54
    .local v6, sp:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 55
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .local v3, i:Ljava/lang/Integer;
    :goto_1d
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/android/inputmethod/latin/SkinSelector;->names:[Ljava/lang/String;

    array-length v8, v8

    if-lt v7, v8, :cond_47

    .line 65
    :goto_26
    if-nez v0, :cond_7e

    .line 67
    iget-object v7, p0, Lcom/android/inputmethod/latin/SkinSelector;->goToMarket:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    .line 69
    const/4 v2, 0x0

    .line 70
    .local v2, goToMarket:Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #goToMarket:Landroid/content/Intent;
    const-string v7, "android.intent.action.VIEW"

    const-string v8, "market://search?q=Perfect keyboard skins"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 71
    .restart local v2       #goToMarket:Landroid/content/Intent;
    const/high16 v7, 0x1000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    :try_start_43
    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/SkinSelector;->startActivity(Landroid/content/Intent;)V
    :try_end_46
    .catch Landroid/content/ActivityNotFoundException; {:try_start_43 .. :try_end_46} :catch_99

    .line 84
    .end local v2           #goToMarket:Landroid/content/Intent;
    :goto_46
    return-void

    .line 57
    :cond_47
    iget-object v7, p0, Lcom/android/inputmethod/latin/SkinSelector;->names:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 59
    const/4 v0, 0x1

    .line 60
    const-string v7, "pref_keyboard_layout_20110916"

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    const-string v7, "external_skin"

    const-string v8, ""

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_26

    .line 55
    :cond_67
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1d

    .line 77
    :cond_72
    const-string v7, "pref_keyboard_layout_20110916"

    const-string v8, "6"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    const-string v7, "external_skin"

    invoke-interface {v1, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    :cond_7e
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "You selected: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 83
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_46

    .line 73
    .restart local v2       #goToMarket:Landroid/content/Intent;
    :catch_99
    move-exception v7

    goto :goto_46
.end method
