.class Lcom/sec/android/socialhub/state/BaseState$1;
.super Ljava/lang/Object;
.source "BaseState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/state/BaseState;->onHandleOptionMenu(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/state/BaseState;

.field final synthetic val$menu_item:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/state/BaseState;Landroid/view/MenuItem;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/sec/android/socialhub/state/BaseState$1;->this$0:Lcom/sec/android/socialhub/state/BaseState;

    iput-object p2, p0, Lcom/sec/android/socialhub/state/BaseState$1;->val$menu_item:Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sec/android/socialhub/state/BaseState$1;->this$0:Lcom/sec/android/socialhub/state/BaseState;

    iget-object v1, p0, Lcom/sec/android/socialhub/state/BaseState$1;->val$menu_item:Landroid/view/MenuItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/state/BaseState;->handleOptionMenu(Landroid/view/MenuItem;)V

    .line 220
    return-void
.end method
