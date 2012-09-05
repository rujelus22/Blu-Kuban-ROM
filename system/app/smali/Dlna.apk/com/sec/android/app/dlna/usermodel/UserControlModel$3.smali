.class Lcom/sec/android/app/dlna/usermodel/UserControlModel$3;
.super Ljava/lang/Object;
.source "UserControlModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestSeek(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

.field final synthetic val$seekTime:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/usermodel/UserControlModel;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$3;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iput p2, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$3;->val$seekTime:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$3;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionLocked:Z

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$3;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    iget v1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$3;->val$seekTime:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/dlna/usermodel/IUserControl;->requestSeek(I)V

    .line 330
    return-void
.end method
