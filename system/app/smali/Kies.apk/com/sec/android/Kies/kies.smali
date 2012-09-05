.class public Lcom/sec/android/Kies/kies;
.super Landroid/preference/PreferenceActivity;
.source "kies.java"


# instance fields
.field private sel_mode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/Kies/kies;->sel_mode:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 27
    .local v0, KiesPrefs:Landroid/content/SharedPreferences;
    const-string v1, "list_preference"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/Kies/kies;->sel_mode:I

    .line 29
    iget v1, p0, Lcom/sec/android/Kies/kies;->sel_mode:I

    invoke-virtual {p0, v1}, Lcom/sec/android/Kies/kies;->set_view(I)V

    .line 30
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies;->set_listview()V

    .line 31
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 85
    const/16 v0, 0x52

    if-ne v0, p1, :cond_c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 86
    const/4 v0, 0x1

    .line 87
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 12
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    long-to-int v2, p4

    iput v2, p0, Lcom/sec/android/Kies/kies;->sel_mode:I

    .line 37
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    .local v0, KiesPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 41
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "list_preference"

    iget v3, p0, Lcom/sec/android/Kies/kies;->sel_mode:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 44
    const-string v2, "list_preference"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_30

    .line 46
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 52
    :cond_2c
    :goto_2c
    invoke-super/range {p0 .. p5}, Landroid/preference/PreferenceActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 53
    return-void

    .line 47
    :cond_30
    const-string v2, "list_preference"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_2c

    .line 49
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2c
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 78
    iget v0, p0, Lcom/sec/android/Kies/kies;->sel_mode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/Kies/kies;->set_view(I)V

    .line 79
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies;->set_listview()V

    .line 80
    return-void
.end method

.method public set_listview()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sec/android/Kies/kies;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 59
    .local v2, lv:Landroid/widget/ListView;
    const v3, 0x7f070002

    invoke-virtual {p0, v3}, Lcom/sec/android/Kies/kies;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    const v3, 0x7f070003

    invoke-virtual {p0, v3}, Lcom/sec/android/Kies/kies;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x109000f

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 65
    .local v0, aa:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 67
    iget v3, p0, Lcom/sec/android/Kies/kies;->sel_mode:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 68
    return-void
.end method

.method public set_view(I)V
    .registers 3
    .parameter "k"

    .prologue
    .line 71
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sec/android/Kies/kies;->setContentView(I)V

    .line 72
    return-void
.end method
