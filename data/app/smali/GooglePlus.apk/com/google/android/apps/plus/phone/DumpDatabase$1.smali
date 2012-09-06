.class Lcom/google/android/apps/plus/phone/DumpDatabase$1;
.super Landroid/os/Handler;
.source "DumpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/DumpDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/DumpDatabase;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/DumpDatabase;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$1;->this$0:Lcom/google/android/apps/plus/phone/DumpDatabase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 42
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 43
    .local v0, value:I
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/DumpDatabase$1;->this$0:Lcom/google/android/apps/plus/phone/DumpDatabase;

    #getter for: Lcom/google/android/apps/plus/phone/DumpDatabase;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/DumpDatabase;->access$000(Lcom/google/android/apps/plus/phone/DumpDatabase;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 44
    return-void
.end method
