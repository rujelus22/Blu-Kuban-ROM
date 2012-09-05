.class Lcom/android/mms/ui/ComposeMessageFragment$22;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 3247
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$22;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 3250
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$22;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2500(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 3251
    return-void
.end method
