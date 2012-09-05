.class public Lcom/sprint/dsa/diagnostics/FileExtensionsFilter;
.super Ljava/lang/Object;
.source "FileExtensionsFilter.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private extensions:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "extensions"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/FileExtensionsFilter;->extensions:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/FileExtensionsFilter;->extensions:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 6
    .parameter "file"

    .prologue
    .line 22
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, name:Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 24
    .local v1, index:I
    const/4 v3, -0x1

    if-le v1, v3, :cond_1b

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, ext:Ljava/lang/String;
    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/FileExtensionsFilter;->extensions:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 27
    const/4 v3, 0x1

    .line 31
    .end local v0           #ext:Ljava/lang/String;
    :goto_1a
    return v3

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1a
.end method
