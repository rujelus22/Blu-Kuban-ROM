.class final LkZ;
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
    .line 114
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    const-string v0, "application/msword"

    invoke-virtual {p0, v0}, LkZ;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {p0, v0}, LkZ;->add(Ljava/lang/Object;)Z

    .line 117
    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    invoke-virtual {p0, v0}, LkZ;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v0, "application/vnd.ms-word.document.macroEnabled.12"

    invoke-virtual {p0, v0}, LkZ;->add(Ljava/lang/Object;)Z

    .line 119
    const-string v0, "application/vnd.ms-word.template.macroEnabled.12"

    invoke-virtual {p0, v0}, LkZ;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method
