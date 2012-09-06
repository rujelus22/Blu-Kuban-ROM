.class final LD/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH/e;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, LD/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .registers 4

    .prologue
    .line 34
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, LD/b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, LD/k;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, LD/b;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
