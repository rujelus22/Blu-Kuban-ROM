.class final LG/b;
.super Ljava/lang/Object;

# interfaces
.implements LL/e;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LG/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .registers 4

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, LG/b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, LG/k;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LG/b;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
