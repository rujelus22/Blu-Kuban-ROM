.class Laz/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LT/f;

.field final synthetic b:Laz/f;


# direct methods
.method constructor <init>(Laz/f;LT/f;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1025
    iput-object p1, p0, Laz/g;->b:Laz/f;

    iput-object p2, p0, Laz/g;->a:LT/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1029
    iget-object v0, p0, Laz/g;->b:Laz/f;

    invoke-static {}, Laz/a;->c()Laz/a;

    move-result-object v1

    invoke-static {v1}, Laz/a;->k(Laz/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laz/f;->a(Laz/f;Ljava/lang/String;)Ljava/lang/String;

    .line 1031
    iget-object v0, p0, Laz/g;->b:Laz/f;

    invoke-virtual {v0}, Laz/f;->g()Ljava/io/File;

    move-result-object v0

    .line 1033
    :try_start_13
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1034
    iget-object v0, p0, Laz/g;->a:LT/f;

    invoke-static {v0}, LS/j;->c(LS/f;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1035
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_24} :catch_27
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_24} :catch_25

    .line 1041
    :goto_24
    return-void

    .line 1038
    :catch_25
    move-exception v0

    goto :goto_24

    .line 1036
    :catch_27
    move-exception v0

    goto :goto_24
.end method
