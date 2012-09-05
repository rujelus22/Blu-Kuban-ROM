.class Lcom/sec/android/socialhub/adapter/AccountListAdapter$1;
.super Ljava/lang/Object;
.source "AccountListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/adapter/AccountListAdapter;->initLayout(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/adapter/AccountListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/adapter/AccountListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/sec/android/socialhub/adapter/AccountListAdapter$1;->this$0:Lcom/sec/android/socialhub/adapter/AccountListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "arg0"

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    .line 177
    .local v1, wrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/socialhub/adapter/AccountListAdapter$1;->this$0:Lcom/sec/android/socialhub/adapter/AccountListAdapter;

    #getter for: Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->access$000(Lcom/sec/android/socialhub/adapter/AccountListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/sec/android/socialhub/adapter/AccountListAdapter$1;->this$0:Lcom/sec/android/socialhub/adapter/AccountListAdapter;

    #getter for: Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->access$100(Lcom/sec/android/socialhub/adapter/AccountListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 179
    iget-object v2, p0, Lcom/sec/android/socialhub/adapter/AccountListAdapter$1;->this$0:Lcom/sec/android/socialhub/adapter/AccountListAdapter;

    #getter for: Lcom/sec/android/socialhub/unifiedinbox/UinboxAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->access$200(Lcom/sec/android/socialhub/adapter/AccountListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->email:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 180
    iget-object v2, p0, Lcom/sec/android/socialhub/adapter/AccountListAdapter$1;->this$0:Lcom/sec/android/socialhub/adapter/AccountListAdapter;

    iget-object v3, v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    #setter for: Lcom/sec/android/socialhub/adapter/AccountListAdapter;->accountId:I
    invoke-static {v2, v3}, Lcom/sec/android/socialhub/adapter/AccountListAdapter;->access$302(Lcom/sec/android/socialhub/adapter/AccountListAdapter;I)I

    .line 181
    const v2, 0x104000a

    new-instance v3, Lcom/sec/android/socialhub/adapter/AccountListAdapter$1$2;

    invoke-direct {v3, p0}, Lcom/sec/android/socialhub/adapter/AccountListAdapter$1$2;-><init>(Lcom/sec/android/socialhub/adapter/AccountListAdapter$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/sec/android/socialhub/adapter/AccountListAdapter$1$1;

    invoke-direct {v4, p0}, Lcom/sec/android/socialhub/adapter/AccountListAdapter$1$1;-><init>(Lcom/sec/android/socialhub/adapter/AccountListAdapter$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 192
    return-void
.end method
