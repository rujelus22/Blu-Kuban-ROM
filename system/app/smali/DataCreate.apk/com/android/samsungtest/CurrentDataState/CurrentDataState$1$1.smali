.class Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1$1;
.super Ljava/lang/Object;
.source "CurrentDataState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1;)V
    .registers 2
    .parameter

    .prologue
    .line 797
    iput-object p1, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1$1;->this$1:Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1$1;->this$1:Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1;

    iget-object v0, v0, Lcom/android/samsungtest/CurrentDataState/CurrentDataState$1;->this$0:Lcom/android/samsungtest/CurrentDataState/CurrentDataState;

    const/4 v1, 0x0

    #calls: Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->setFileInfo(Z)V
    invoke-static {v0, v1}, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;->access$000(Lcom/android/samsungtest/CurrentDataState/CurrentDataState;Z)V

    .line 803
    return-void
.end method
