.class Ljackpal/androidterm/Term$2;
.super Ljava/lang/Object;
.source "Term.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/Term;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/Term;


# direct methods
.method constructor <init>(Ljackpal/androidterm/Term;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Ljackpal/androidterm/Term$2;->this$0:Ljackpal/androidterm/Term;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "className"
    .parameter "service"

    .prologue
    .line 143
    const-string v1, "Term"

    const-string v2, "Bound to TermService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    .line 144
    check-cast v0, Ljackpal/androidterm/TermService$TSBinder;

    .line 145
    .local v0, binder:Ljackpal/androidterm/TermService$TSBinder;
    iget-object v1, p0, Ljackpal/androidterm/Term$2;->this$0:Ljackpal/androidterm/Term;

    invoke-virtual {v0}, Ljackpal/androidterm/TermService$TSBinder;->getService()Ljackpal/androidterm/TermService;

    move-result-object v2

    #setter for: Ljackpal/androidterm/Term;->mTermService:Ljackpal/androidterm/TermService;
    invoke-static {v1, v2}, Ljackpal/androidterm/Term;->access$302(Ljackpal/androidterm/Term;Ljackpal/androidterm/TermService;)Ljackpal/androidterm/TermService;

    .line 146
    iget-object v1, p0, Ljackpal/androidterm/Term$2;->this$0:Ljackpal/androidterm/Term;

    #getter for: Ljackpal/androidterm/Term;->mPendingPathBroadcasts:I
    invoke-static {v1}, Ljackpal/androidterm/Term;->access$200(Ljackpal/androidterm/Term;)I

    move-result v1

    if-gtz v1, :cond_25

    .line 147
    iget-object v1, p0, Ljackpal/androidterm/Term$2;->this$0:Ljackpal/androidterm/Term;

    #calls: Ljackpal/androidterm/Term;->populateViewFlipper()V
    invoke-static {v1}, Ljackpal/androidterm/Term;->access$400(Ljackpal/androidterm/Term;)V

    .line 148
    iget-object v1, p0, Ljackpal/androidterm/Term$2;->this$0:Ljackpal/androidterm/Term;

    #calls: Ljackpal/androidterm/Term;->populateWindowList()V
    invoke-static {v1}, Ljackpal/androidterm/Term;->access$500(Ljackpal/androidterm/Term;)V

    .line 150
    :cond_25
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 153
    iget-object v0, p0, Ljackpal/androidterm/Term$2;->this$0:Ljackpal/androidterm/Term;

    const/4 v1, 0x0

    #setter for: Ljackpal/androidterm/Term;->mTermService:Ljackpal/androidterm/TermService;
    invoke-static {v0, v1}, Ljackpal/androidterm/Term;->access$302(Ljackpal/androidterm/Term;Ljackpal/androidterm/TermService;)Ljackpal/androidterm/TermService;

    .line 154
    return-void
.end method
