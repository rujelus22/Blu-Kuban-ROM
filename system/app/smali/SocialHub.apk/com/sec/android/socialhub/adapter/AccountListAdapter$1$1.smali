.class Lcom/sec/android/socialhub/adapter/AccountListAdapter$1$1;
.super Ljava/lang/Object;
.source "AccountListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/adapter/AccountListAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/socialhub/adapter/AccountListAdapter$1;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/adapter/AccountListAdapter$1;)V
    .registers 2
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/sec/android/socialhub/adapter/AccountListAdapter$1$1;->this$1:Lcom/sec/android/socialhub/adapter/AccountListAdapter$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 188
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 189
    return-void
.end method
