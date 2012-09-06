.class final Llb;
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
    .line 132
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    const-string v0, "application/vnd.ms-powerpoint"

    invoke-virtual {p0, v0}, Llb;->add(Ljava/lang/Object;)Z

    .line 134
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {p0, v0}, Llb;->add(Ljava/lang/Object;)Z

    .line 135
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.template"

    invoke-virtual {p0, v0}, Llb;->add(Ljava/lang/Object;)Z

    .line 136
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    invoke-virtual {p0, v0}, Llb;->add(Ljava/lang/Object;)Z

    .line 137
    const-string v0, "application/vnd.ms-powerpoint.addin.macroEnabled.12"

    invoke-virtual {p0, v0}, Llb;->add(Ljava/lang/Object;)Z

    .line 138
    const-string v0, "application/vnd.ms-powerpoint.presentation.macroEnabled.12"

    invoke-virtual {p0, v0}, Llb;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v0, "application/vnd.ms-powerpoint.template.macroEnabled.12"

    invoke-virtual {p0, v0}, Llb;->add(Ljava/lang/Object;)Z

    .line 140
    const-string v0, "application/vnd.ms-powerpoint.slideshow.macroEnabled.12"

    invoke-virtual {p0, v0}, Llb;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method
