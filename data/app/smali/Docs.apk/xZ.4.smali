.class LxZ;
.super Lvv;
.source "KixJSVM.java"


# instance fields
.field final synthetic a:LxQ;


# direct methods
.method private constructor <init>(LxQ;)V
    .registers 2
    .parameter

    .prologue
    .line 795
    iput-object p1, p0, LxZ;->a:LxQ;

    invoke-direct {p0}, Lvv;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LxQ;LxR;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 795
    invoke-direct {p0, p1}, LxZ;-><init>(LxQ;)V

    return-void
.end method


# virtual methods
.method public addSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 799
    iget-object v0, p0, LxZ;->a:LxQ;

    invoke-virtual {v0, p1, p2, p3}, LxQ;->onCollaboratorJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    return-void
.end method

.method public deleteSession(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 804
    iget-object v0, p0, LxZ;->a:LxQ;

    invoke-virtual {v0, p1}, LxQ;->onCollaboratorLeave(Ljava/lang/String;)V

    .line 805
    return-void
.end method

.method public moveCursor(Ljava/lang/String;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 809
    iget-object v0, p0, LxZ;->a:LxQ;

    invoke-virtual {v0, p1, p2, p3}, LxQ;->onCollaboratorCursorMove(Ljava/lang/String;II)V

    .line 810
    return-void
.end method
