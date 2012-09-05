.class Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$1;
.super Ljava/lang/Object;
.source "MessageDeleteViewWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$1;->this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper$1;->this$0:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->onDeleteCheckedItem()V

    .line 130
    return-void
.end method
