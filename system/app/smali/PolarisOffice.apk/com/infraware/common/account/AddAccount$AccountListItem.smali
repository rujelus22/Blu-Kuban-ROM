.class public Lcom/infraware/common/account/AddAccount$AccountListItem;
.super Ljava/lang/Object;
.source "AddAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/account/AddAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccountListItem"
.end annotation


# instance fields
.field mIconResID:I

.field mText:Ljava/lang/String;

.field final synthetic this$0:Lcom/infraware/common/account/AddAccount;


# direct methods
.method public constructor <init>(Lcom/infraware/common/account/AddAccount;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter "aText"
    .parameter "aIconRes"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/infraware/common/account/AddAccount$AccountListItem;->this$0:Lcom/infraware/common/account/AddAccount;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p2, p0, Lcom/infraware/common/account/AddAccount$AccountListItem;->mText:Ljava/lang/String;

    .line 277
    iput p3, p0, Lcom/infraware/common/account/AddAccount$AccountListItem;->mIconResID:I

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/infraware/common/account/AddAccount$AccountListItem;->mText:Ljava/lang/String;

    return-object v0
.end method
