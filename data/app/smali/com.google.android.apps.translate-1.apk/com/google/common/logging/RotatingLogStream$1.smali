.class final Lcom/google/common/logging/RotatingLogStream$1;
.super Ljava/lang/Object;
.source "RotatingLogStream.java"

# interfaces
.implements Lcom/google/common/logging/RotatingLogStream$SymbolicLinkProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/RotatingLogStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSymbolicLink(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "targetPath"
    .parameter "linkPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/bin/ln"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-sf"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 129
    return-void
.end method
