.class Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService$1;
.super Lcom/google/android/music/utils/SafeServiceConnection;
.source "SignupStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;


# direct methods
.method constructor <init>(Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;)V
    .registers 2
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService$1;->this$0:Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;

    invoke-direct {p0}, Lcom/google/android/music/utils/SafeServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService$1;->this$0:Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;

    #calls: Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->onServiceConnectedImp(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    invoke-static {v0, p1, p2}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->access$000(Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 231
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService$1;->this$0:Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;

    #calls: Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->onServiceDisconnectedImp(Landroid/content/ComponentName;)V
    invoke-static {v0, p1}, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;->access$100(Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;Landroid/content/ComponentName;)V

    .line 235
    return-void
.end method
