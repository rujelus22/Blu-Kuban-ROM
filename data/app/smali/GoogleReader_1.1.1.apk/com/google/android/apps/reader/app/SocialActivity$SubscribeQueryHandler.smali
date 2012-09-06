.class Lcom/google/android/apps/reader/app/SocialActivity$SubscribeQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SocialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/app/SocialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscribeQueryHandler"
.end annotation


# static fields
.field private static final TOKEN_SUBSCRIBE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/app/SocialActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/reader/app/SocialActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/apps/reader/app/SocialActivity$SubscribeQueryHandler;->this$0:Lcom/google/android/apps/reader/app/SocialActivity;

    .line 99
    invoke-virtual {p1}, Lcom/google/android/apps/reader/app/SocialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 100
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/reader/app/SocialActivity;Lcom/google/android/apps/reader/app/SocialActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/app/SocialActivity$SubscribeQueryHandler;-><init>(Lcom/google/android/apps/reader/app/SocialActivity;)V

    return-void
.end method


# virtual methods
.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .registers 9
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 124
    packed-switch p1, :pswitch_data_2e

    .line 133
    :goto_5
    return-void

    .line 126
    :pswitch_6
    if-eqz p3, :cond_1b

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SocialActivity$SubscribeQueryHandler;->this$0:Lcom/google/android/apps/reader/app/SocialActivity;

    iget-object v1, p0, Lcom/google/android/apps/reader/app/SocialActivity$SubscribeQueryHandler;->this$0:Lcom/google/android/apps/reader/app/SocialActivity;

    const v2, 0x7f0d002d

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/reader/app/SocialActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/apps/reader/app/SocialActivity;->showToast(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/reader/app/SocialActivity;->access$100(Lcom/google/android/apps/reader/app/SocialActivity;Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 129
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SocialActivity$SubscribeQueryHandler;->this$0:Lcom/google/android/apps/reader/app/SocialActivity;

    iget-object v1, p0, Lcom/google/android/apps/reader/app/SocialActivity$SubscribeQueryHandler;->this$0:Lcom/google/android/apps/reader/app/SocialActivity;

    const v2, 0x7f0d002e

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/reader/app/SocialActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/apps/reader/app/SocialActivity;->showToast(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/reader/app/SocialActivity;->access$100(Lcom/google/android/apps/reader/app/SocialActivity;Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 124
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public startSubscribe(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "url"
    .parameter "title"

    .prologue
    .line 109
    iget-object v5, p0, Lcom/google/android/apps/reader/app/SocialActivity$SubscribeQueryHandler;->this$0:Lcom/google/android/apps/reader/app/SocialActivity;

    invoke-virtual {v5}, Lcom/google/android/apps/reader/app/SocialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 110
    .local v0, account:Lcom/google/android/accounts/Account;
    const/4 v2, 0x1

    .line 111
    .local v2, token:I
    move-object v1, p2

    .line 112
    .local v1, cookie:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->quickAddUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 113
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 114
    .local v4, values:Landroid/content/ContentValues;
    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/google/android/apps/reader/app/SocialActivity$SubscribeQueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 119
    iget-object v5, p0, Lcom/google/android/apps/reader/app/SocialActivity$SubscribeQueryHandler;->this$0:Lcom/google/android/apps/reader/app/SocialActivity;

    iget-object v6, p0, Lcom/google/android/apps/reader/app/SocialActivity$SubscribeQueryHandler;->this$0:Lcom/google/android/apps/reader/app/SocialActivity;

    const v7, 0x7f0d002c

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/google/android/apps/reader/app/SocialActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/google/android/apps/reader/app/SocialActivity;->showToast(Ljava/lang/CharSequence;)V
    invoke-static {v5, v6}, Lcom/google/android/apps/reader/app/SocialActivity;->access$100(Lcom/google/android/apps/reader/app/SocialActivity;Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method
