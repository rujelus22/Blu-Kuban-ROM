.class final Lr/ag;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/io/File;


# direct methods
.method constructor <init>(LY/c;Ljava/io/File;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p2, p0, Lr/ag;->a:Ljava/io/File;

    invoke-direct {p0, p1}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 253
    invoke-static {}, Lr/af;->d()Lr/af;

    move-result-object v0

    iget-object v1, p0, Lr/ag;->a:Ljava/io/File;

    invoke-static {v0, v1}, Lr/af;->a(Lr/af;Ljava/io/File;)V

    .line 254
    return-void
.end method
