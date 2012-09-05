.class Lcom/sec/android/socialhub/view/EditTextEx$1;
.super Ljava/lang/Object;
.source "EditTextEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/view/EditTextEx;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/view/EditTextEx;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/EditTextEx;)V
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sec/android/socialhub/view/EditTextEx$1;->this$0:Lcom/sec/android/socialhub/view/EditTextEx;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/socialhub/view/EditTextEx$1;->this$0:Lcom/sec/android/socialhub/view/EditTextEx;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/EditTextEx;->invalidateLine()V

    .line 142
    return-void
.end method
