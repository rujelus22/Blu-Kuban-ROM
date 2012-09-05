.class Lcom/sec/android/app/dlna/usermodel/UserControlModel$5;
.super Ljava/lang/Object;
.source "UserControlModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestVolumeDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/usermodel/UserControlModel;)V
    .registers 2
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$5;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$5;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->actionLocked:Z

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/dlna/usermodel/UserControlModel$5;->this$0:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v0, v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->currentUserState:Lcom/sec/android/app/dlna/usermodel/IUserControl;

    invoke-interface {v0}, Lcom/sec/android/app/dlna/usermodel/IUserControl;->requestVolumeDown()V

    .line 422
    return-void
.end method
