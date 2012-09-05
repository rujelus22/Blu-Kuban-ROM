.class Ljava/io/Console$ConsoleWriter;
.super Ljava/io/PrintWriter;
.source "Console.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/Console;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConsoleWriter"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 197
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 198
    invoke-static {}, Ljava/io/Console;->access$000()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    .line 199
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 204
    invoke-virtual {p0}, Ljava/io/Console$ConsoleWriter;->flush()V

    .line 205
    return-void
.end method
