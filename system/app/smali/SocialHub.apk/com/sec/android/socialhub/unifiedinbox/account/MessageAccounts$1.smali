.class Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts$1;
.super Ljava/lang/Object;
.source "MessageAccounts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts;->onClickContextMenu(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/IMessageAPI;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts;)V
    .registers 2
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts$1;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 207
    return-void
.end method
