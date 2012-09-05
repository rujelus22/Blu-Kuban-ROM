.class public Lcom/android/task/TaskSearchListActivity;
.super Landroid/app/Activity;
.source "TaskSearchListActivity.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mSearchString:Ljava/lang/String;

.field private mView:Lcom/android/task/TaskSearchListView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-string v0, "content://tasks/searchresult"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/task/TaskSearchListActivity;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/task/TaskSearchListActivity;->mView:Lcom/android/task/TaskSearchListView;

    return-void
.end method

.method private startActivityForView(Landroid/content/Intent;)V
    .registers 7
    .parameter

    .prologue
    .line 68
    const-string v0, "TaskSearchListActivity"

    const-string v1, "======== startActivityForView ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 73
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    long-to-int v4, v0

    aput v4, v2, v3

    .line 74
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/task/TaskViewActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    const-string v4, "selected"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 76
    const-string v0, "sortedIds"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v3}, Lcom/android/task/TaskSearchListActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/task/TaskSearchListActivity;->finish()V

    .line 80
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    const/4 v0, 0x1

    .line 44
    iget-object v1, p0, Lcom/android/task/TaskSearchListActivity;->mView:Lcom/android/task/TaskSearchListView;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_e

    :goto_7
    invoke-virtual {v1, v0}, Lcom/android/task/TaskSearchListView;->configurationChanged(Z)V

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 47
    return-void

    .line 44
    :cond_e
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    .line 25
    const-string v1, "TaskSearchListActivity"

    const-string v2, "======== onCreate ========"

    invoke-static {v1, v2}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    new-instance v1, Lcom/android/task/TaskSearchListView;

    invoke-direct {v1, p0}, Lcom/android/task/TaskSearchListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/task/TaskSearchListActivity;->mView:Lcom/android/task/TaskSearchListView;

    .line 30
    iget-object v1, p0, Lcom/android/task/TaskSearchListActivity;->mView:Lcom/android/task/TaskSearchListView;

    invoke-virtual {p0, v1}, Lcom/android/task/TaskSearchListActivity;->setContentView(Landroid/view/View;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/task/TaskSearchListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 33
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "TaskSearchListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "query"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/task/Utils$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 35
    invoke-direct {p0, v0}, Lcom/android/task/TaskSearchListActivity;->startActivityForView(Landroid/content/Intent;)V

    .line 40
    :cond_47
    :goto_47
    return-void

    .line 36
    :cond_48
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 37
    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/task/TaskSearchListActivity;->mSearchString:Ljava/lang/String;

    goto :goto_47
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter "newIntent"

    .prologue
    .line 55
    const-string v1, "TaskSearchListActivity"

    const-string v2, "======== onNewIntent ========"

    invoke-static {v1, v2}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 57
    move-object v0, p1

    .line 58
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "TaskSearchListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "query"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/task/Utils$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 60
    invoke-direct {p0, v0}, Lcom/android/task/TaskSearchListActivity;->startActivityForView(Landroid/content/Intent;)V

    .line 64
    :cond_38
    :goto_38
    return-void

    .line 61
    :cond_39
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 62
    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/task/TaskSearchListActivity;->mSearchString:Ljava/lang/String;

    goto :goto_38
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 83
    const-string v0, "TaskSearchListActivity"

    const-string v1, "======== onResume ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    iget-object v0, p0, Lcom/android/task/TaskSearchListActivity;->mView:Lcom/android/task/TaskSearchListView;

    iget-object v1, p0, Lcom/android/task/TaskSearchListActivity;->mSearchString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/task/TaskSearchListView;->setSearchString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/task/TaskSearchListActivity;->mView:Lcom/android/task/TaskSearchListView;

    invoke-virtual {v0}, Lcom/android/task/TaskSearchListView;->update()V

    .line 89
    return-void
.end method
