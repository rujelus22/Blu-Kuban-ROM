.class public Lcom/google/android/apps/translate/SmsPickerActivity;
.super Landroid/app/ListActivity;
.source "SmsPickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mSmsPickerHelper:Lcom/google/android/apps/translate/SmsPickerHelper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 20
    new-instance v0, Lcom/google/android/apps/translate/SmsPickerHelper;

    invoke-direct {v0}, Lcom/google/android/apps/translate/SmsPickerHelper;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/SmsPickerActivity;->mSmsPickerHelper:Lcom/google/android/apps/translate/SmsPickerHelper;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    iget-object v1, p0, Lcom/google/android/apps/translate/SmsPickerActivity;->mSmsPickerHelper:Lcom/google/android/apps/translate/SmsPickerHelper;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/translate/SmsPickerHelper;->onCreate(Landroid/app/Activity;)V

    .line 26
    invoke-virtual {p0}, Lcom/google/android/apps/translate/SmsPickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/android/apps/translate/R$layout;->sms_picker_activity:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 28
    .local v0, rootView:Landroid/widget/LinearLayout;
    invoke-static {p0}, Lcom/google/android/apps/translate/TranslateBaseActivity;->beforeSetContentView(Landroid/app/Activity;)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/SmsPickerActivity;->setContentView(Landroid/view/View;)V

    .line 30
    invoke-static {p0}, Lcom/google/android/apps/translate/TranslateBaseActivity;->afterSetContentView(Landroid/app/Activity;)V

    .line 31
    iget-object v1, p0, Lcom/google/android/apps/translate/SmsPickerActivity;->mSmsPickerHelper:Lcom/google/android/apps/translate/SmsPickerHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/translate/SmsPickerHelper;->init(Landroid/widget/LinearLayout;)V

    .line 32
    iget-object v1, p0, Lcom/google/android/apps/translate/SmsPickerActivity;->mSmsPickerHelper:Lcom/google/android/apps/translate/SmsPickerHelper;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/SmsPickerHelper;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/SmsPickerActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    invoke-virtual {p0}, Lcom/google/android/apps/translate/SmsPickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 34
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerActivity;->mSmsPickerHelper:Lcom/google/android/apps/translate/SmsPickerHelper;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/SmsPickerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/translate/SmsPickerHelper;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 48
    const/4 v0, 0x1

    .line 50
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_d
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerActivity;->mSmsPickerHelper:Lcom/google/android/apps/translate/SmsPickerHelper;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/translate/SmsPickerHelper;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Ljava/lang/String;

    move-result-object v6

    .line 39
    .local v6, text:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 40
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/translate/SmsPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 42
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/apps/translate/SmsPickerActivity;->finish()V

    .line 43
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 62
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1a

    .line 68
    iget-object v1, p0, Lcom/google/android/apps/translate/SmsPickerActivity;->mSmsPickerHelper:Lcom/google/android/apps/translate/SmsPickerHelper;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/translate/SmsPickerHelper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 71
    :goto_10
    return v0

    .line 64
    :pswitch_11
    invoke-static {p0}, Lcom/google/android/apps/translate/Util;->openHomeActivity(Landroid/app/Activity;)V

    goto :goto_10

    .line 71
    :cond_15
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_10

    .line 62
    :pswitch_data_1a
    .packed-switch 0x102002c
        :pswitch_11
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/translate/SmsPickerActivity;->mSmsPickerHelper:Lcom/google/android/apps/translate/SmsPickerHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/SmsPickerHelper;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 56
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
