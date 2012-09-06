.class Ljackpal/androidterm/ShellTermSession$2;
.super Ljava/lang/Object;
.source "ShellTermSession.java"

# interfaces
.implements Ljackpal/androidterm/emulatorview/UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/ShellTermSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/ShellTermSession;


# direct methods
.method constructor <init>(Ljackpal/androidterm/ShellTermSession;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Ljackpal/androidterm/ShellTermSession$2;->this$0:Ljackpal/androidterm/ShellTermSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Ljackpal/androidterm/ShellTermSession$2;->this$0:Ljackpal/androidterm/ShellTermSession;

    #getter for: Ljackpal/androidterm/ShellTermSession;->mTermFd:Ljava/io/FileDescriptor;
    invoke-static {v0}, Ljackpal/androidterm/ShellTermSession;->access$100(Ljackpal/androidterm/ShellTermSession;)Ljava/io/FileDescriptor;

    move-result-object v0

    iget-object v1, p0, Ljackpal/androidterm/ShellTermSession$2;->this$0:Ljackpal/androidterm/ShellTermSession;

    invoke-virtual {v1}, Ljackpal/androidterm/ShellTermSession;->getUTF8Mode()Z

    move-result v1

    invoke-static {v0, v1}, Ljackpal/androidterm/Exec;->setPtyUTF8Mode(Ljava/io/FileDescriptor;Z)V

    .line 78
    return-void
.end method
