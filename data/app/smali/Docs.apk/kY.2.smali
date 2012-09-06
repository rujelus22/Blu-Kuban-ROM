.class final LkY;
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
    .line 96
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    const-string v0, "video/3gpp"

    invoke-virtual {p0, v0}, LkY;->add(Ljava/lang/Object;)Z

    .line 98
    const-string v0, "video/3gp"

    invoke-virtual {p0, v0}, LkY;->add(Ljava/lang/Object;)Z

    .line 99
    const-string v0, "video/H261"

    invoke-virtual {p0, v0}, LkY;->add(Ljava/lang/Object;)Z

    .line 100
    const-string v0, "video/H263"

    invoke-virtual {p0, v0}, LkY;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v0, "video/H264"

    invoke-virtual {p0, v0}, LkY;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v0, "video/mpeg"

    invoke-virtual {p0, v0}, LkY;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v0, "video/mp4"

    invoke-virtual {p0, v0}, LkY;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v0, "video/quicktime"

    invoke-virtual {p0, v0}, LkY;->add(Ljava/lang/Object;)Z

    .line 105
    const-string v0, "video/raw"

    invoke-virtual {p0, v0}, LkY;->add(Ljava/lang/Object;)Z

    .line 106
    const-string v0, "video/x-la-asf"

    invoke-virtual {p0, v0}, LkY;->add(Ljava/lang/Object;)Z

    .line 107
    const-string v0, "video/x-ms-asf"

    invoke-virtual {p0, v0}, LkY;->add(Ljava/lang/Object;)Z

    .line 108
    const-string v0, "video/x-msvideo"

    invoke-virtual {p0, v0}, LkY;->add(Ljava/lang/Object;)Z

    .line 109
    const-string v0, "video/x-sgi-movie"

    invoke-virtual {p0, v0}, LkY;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v0, "video/vnd.motorola.video"

    invoke-virtual {p0, v0}, LkY;->add(Ljava/lang/Object;)Z

    .line 111
    const-string v0, "video/vnd.motorola.videop"

    invoke-virtual {p0, v0}, LkY;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method
