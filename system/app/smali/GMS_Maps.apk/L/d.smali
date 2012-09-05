.class final LL/d;
.super Ljava/lang/Object;

# interfaces
.implements LL/f;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Ljava/io/File;Z)V
    .registers 3

    iput-object p1, p0, LL/d;->a:Ljava/io/File;

    iput-boolean p2, p0, LL/d;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/FileOutputStream;
    .registers 4

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, LL/d;->a:Ljava/io/File;

    iget-boolean v2, p0, LL/d;->b:Z

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LL/d;->a()Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method
