.class final Ldbxyzptlk/h/c;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Ldbxyzptlk/h/b;


# direct methods
.method constructor <init>(Ldbxyzptlk/h/b;)V
    .registers 2
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Ldbxyzptlk/h/c;->a:Ldbxyzptlk/h/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 255
    const-string v0, ".stacktrace"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
