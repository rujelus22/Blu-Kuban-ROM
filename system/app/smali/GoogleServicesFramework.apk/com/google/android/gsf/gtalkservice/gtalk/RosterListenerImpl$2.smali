.class Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl$2;
.super Ljava/lang/Object;
.source "RosterListenerImpl.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable",
        "<",
        "Lcom/google/android/gtalkservice/IRosterListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl$2;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/google/android/gtalkservice/IRosterListener;)Z
    .registers 3
    .parameter "listener"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl$2;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->notifyPresenceChanged(Lcom/google/android/gtalkservice/IRosterListener;)V
    invoke-static {v0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;->access$100(Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl;Lcom/google/android/gtalkservice/IRosterListener;)V

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 73
    check-cast p1, Lcom/google/android/gtalkservice/IRosterListener;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/RosterListenerImpl$2;->call(Lcom/google/android/gtalkservice/IRosterListener;)Z

    move-result v0

    return v0
.end method
