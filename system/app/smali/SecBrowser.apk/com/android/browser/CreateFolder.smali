.class public Lcom/android/browser/CreateFolder;
.super Landroid/app/Activity;
.source "CreateFolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/browser/BookmarksPageCallbacks;


# instance fields
.field mFolder:I

.field mFolderName:Ljava/lang/String;

.field mFolderNamer:Landroid/widget/EditText;

.field private mMap:Landroid/os/Bundle;

.field mParent:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/browser/CreateFolder;->mFolder:I

    return-void
.end method


# virtual methods
.method CreateFolderToDB(ILjava/lang/String;)V
    .registers 7
    .parameter "mParent"
    .parameter "mFolderName"

    .prologue
    .line 149
    const-string v1, "CreateFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mParent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mFolderName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 151
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "folder"

    iget v2, p0, Lcom/android/browser/CreateFolder;->mFolder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string v1, "parent"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/browser/CreateFolder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 157
    return-void
.end method

.method public onBookmarkSelected(Landroid/database/Cursor;Z)Z
    .registers 4
    .parameter "c"
    .parameter "isFolder"

    .prologue
    .line 88
    if-eqz p2, :cond_4

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 114
    :goto_7
    return-void

    .line 111
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/browser/CreateFolder;->finish()V

    goto :goto_7

    .line 103
    :pswitch_data_c
    .packed-switch 0x7f0d0052
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v1, 0x7f0c01aa

    invoke-virtual {p0, v1}, Lcom/android/browser/CreateFolder;->setTitle(I)V

    .line 60
    const v1, 0x7f040058

    invoke-virtual {p0, v1}, Lcom/android/browser/CreateFolder;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/browser/CreateFolder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/CreateFolder;->mMap:Landroid/os/Bundle;

    .line 62
    iget-object v1, p0, Lcom/android/browser/CreateFolder;->mMap:Landroid/os/Bundle;

    const-string v2, "parent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/browser/CreateFolder;->mParent:I

    .line 64
    const v1, 0x7f0d0084

    invoke-virtual {p0, v1}, Lcom/android/browser/CreateFolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/browser/CreateFolder;->mFolderNamer:Landroid/widget/EditText;

    .line 65
    iget-object v1, p0, Lcom/android/browser/CreateFolder;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 73
    const v1, 0x7f0d0052

    invoke-virtual {p0, v1}, Lcom/android/browser/CreateFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, cancel:Landroid/view/View;
    if-eqz v0, :cond_3f

    .line 75
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :cond_3f
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/browser/CreateFolder;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public varargs onOpenInNewWindow([Ljava/lang/String;)Z
    .registers 3
    .parameter "urls"

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_34

    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 144
    :goto_b
    return v0

    .line 126
    :sswitch_c
    iget-object v0, p0, Lcom/android/browser/CreateFolder;->mFolderNamer:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/CreateFolder;->mFolderName:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/android/browser/CreateFolder;->mFolderName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_27

    .line 128
    iget v0, p0, Lcom/android/browser/CreateFolder;->mParent:I

    iget-object v1, p0, Lcom/android/browser/CreateFolder;->mFolderName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/CreateFolder;->CreateFolderToDB(ILjava/lang/String;)V

    .line 130
    :cond_27
    invoke-virtual {p0}, Lcom/android/browser/CreateFolder;->finish()V

    .line 144
    :goto_2a
    const/4 v0, 0x1

    goto :goto_b

    .line 134
    :sswitch_2c
    invoke-virtual {p0}, Lcom/android/browser/CreateFolder;->finish()V

    goto :goto_2a

    .line 138
    :sswitch_30
    invoke-virtual {p0}, Lcom/android/browser/CreateFolder;->finish()V

    goto :goto_2a

    .line 124
    :sswitch_data_34
    .sparse-switch
        0x102002c -> :sswitch_30
        0x7f0d0052 -> :sswitch_2c
        0x7f0d0106 -> :sswitch_c
    .end sparse-switch
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 82
    invoke-virtual {p0}, Lcom/android/browser/CreateFolder;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 83
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 84
    return-void
.end method
