.class final LkW;
.super Ljava/util/ArrayList;
.source "Entry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    const-string v0, "application/x-compress"

    invoke-virtual {p0, v0}, LkW;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v0, "application/x-compressed"

    invoke-virtual {p0, v0}, LkW;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v0, "application/x-gtar"

    invoke-virtual {p0, v0}, LkW;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v0, "application/x-gzip"

    invoke-virtual {p0, v0}, LkW;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v0, "application/x-tar"

    invoke-virtual {p0, v0}, LkW;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v0, "application/zip"

    invoke-virtual {p0, v0}, LkW;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method
